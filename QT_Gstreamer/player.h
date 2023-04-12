#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>
#include <QGst/Pipeline>
#include <QGst/Message>

class player : public QObject
{
    Q_OBJECT
    public:
        explicit player(QObject *parent = 0);
        void setVideoSink(const QGst::ElementPtr & sink);
    public Q_SLOTS:
        void play();
        void stop();
        void open();
    private:
        void openFile(const QString & fileName);
        void setUri(const QString & uri);
        void onBusMessage(const QGst::MessagePtr & message);
        QGst::PipelinePtr m_pipeline;
        QGst::ElementPtr m_videoSink;
        QString m_baseDir;
};

#endif // PLAYER_H
