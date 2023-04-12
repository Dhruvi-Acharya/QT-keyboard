#include "player.h"
#include <QUrl>
#include <QFileDialog>
#include <QGlib/Connect>
#include <QGlib/Error>
#include <QGst/ElementFactory>
#include <QGst/Bus>

player::player(QObject *parent)
    : QObject(parent)
{

}

void player::setVideoSink(const QGst::ElementPtr & sink)
{
    m_videoSink = sink;
}
void player::play()
{
    if (m_pipeline) {
        m_pipeline->setState(QGst::StatePlaying);
    }
}
void player::stop()
{
    if (m_pipeline) {
        m_pipeline->setState(QGst::StateNull);
    }
}
void player::open()
{
    // parent() is the QDeclarativeView here
    QString fileName = QFileDialog::getOpenFileName(qobject_cast<QWidget*>(parent()),
                                                    tr("Open a Movie"), m_baseDir);
    if (!fileName.isEmpty()) {
        openFile(fileName);
    }
}
void player::openFile(const QString & fileName)
{
    m_baseDir = QFileInfo(fileName).path();
    stop();
    setUri(QUrl::fromLocalFile(fileName).toEncoded());
    play();
}
void player::setUri(const QString & uri)
{
    if (!m_pipeline) {
        m_pipeline = QGst::ElementFactory::make("playbin").dynamicCast<QGst::Pipeline>();
        if (m_pipeline) {
            m_pipeline->setProperty("video-sink", m_videoSink);
            //watch the bus for messages
            QGst::BusPtr bus = m_pipeline->bus();
            bus->addSignalWatch();
            QGlib::connect(bus, "message", this, &Player::onBusMessage);
        } else {
            qCritical() << "Failed to create the pipeline";
        }
    }
    if (m_pipeline) {
        m_pipeline->setProperty("uri", uri);
    }
}
void player::onBusMessage(const QGst::MessagePtr & message)
{
    switch (message->type()) {
    case QGst::MessageEos: //End of stream. We reached the end of the file.
        stop();
        break;
    case QGst::MessageError: //Some error occurred.
        qCritical() << message.staticCast<QGst::ErrorMessage>()->error();
        stop();
        break;
    default:
        break;
    }
}
