#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "player.h"
#include <cstdlib>
#include <QApplication>
#include <QDeclarativeView>
#include <QDeclarativeContext>
#include <QDeclarativeEngine>
#include <QGst/Ui/GraphicsVideoSurface>
#include <QGst/Init>

#ifndef QMLPLAYER_NO_OPENGL
# include <QGLWidget>
#endif

int main(int argc, char *argv[])
{

#if defined(QTVIDEOSINK_PATH)
    //this allows the example to run from the QtGStreamer build tree without installing QtGStreamer
    qputenv("GST_PLUGIN_PATH", QTVIDEOSINK_PATH);
#endif

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);


    QDeclarativeView view;
    #if !defined(QMLPLAYER_NO_OPENGL)
        /*
         * Setting a QGLWidget as the viewport is highly recommended as
         * it enables hardware scaling & color conversion on the video sink
         */
        view.setViewport(new QGLWidget);
    #endif
        QGst::Ui::GraphicsVideoSurface *surface = new QGst::Ui::GraphicsVideoSurface(&view);
        view.rootContext()->setContextProperty(QLatin1String("videoSurface1"), surface);
        Player *player = new Player(&view);
        player->setVideoSink(surface->videoSink());
        view.rootContext()->setContextProperty(QLatin1String("player"), player);
    #if defined(UNINSTALLED_IMPORTS_DIR)
        //this allows the example to run from the QtGStreamer build tree without installing QtGStreamer
        view.engine()->addImportPath(QLatin1String(UNINSTALLED_IMPORTS_DIR));
    #endif
        view.setSource(QUrl(QLatin1String("qrc:///main.qml")));
        view.show();

    return app.exec();
}
