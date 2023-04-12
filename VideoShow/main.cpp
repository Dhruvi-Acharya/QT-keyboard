#include "mainwindow.h"

#include <QApplication>
#include <QMediaPlayer>
#include <QVideoWidget>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
//    MainWindow w;
//    w.show();

    auto player = new QMediaPlayer;
        auto videoWidget = new QVideoWidget;
//        player->setMedia(QUrl::fromLocalFile("/home/dhruvi/Downloads/video.mp4"));
//        player->setMedia(QUrl("gst-launch-1.0 videotestsrc ! ximagesink"));
//    http://192.168.42.129:8080/video
        player->setMedia(QUrl("gst-launch-1.0 rtspsrc location=rtsp://admin:Admin%40123@172.25.15.201/live1s1.sdp latency=300 ! queue ! rtph264depay ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! autovideosink"));
        videoWidget->show();
        player->setVideoOutput(videoWidget);
        player->play();

    /*///////////////////////////////////*/
//    QMediaPlayer *player = new QMediaPlayer;
//    QVideoWidget *vw = new QVideoWidget;

//    player->setVideoOutput(vw);
//    player->setMedia(QUrl::fromLocalFile("/home/dhruvi/Downloads/video.mp4"));

//    player->setMedia(QUrl("gst-launch-1.0 playbin uri=file:////home/dhruvi/Downloads/video.mp4 video-sink=ximagesink"));

//    player->setMedia(QUrl("gst-launch-1.0 playbin uri=file://home/dhruvi/Downloads/video.mp4 video-sink=ximagesink"));

//    player->setMedia(QUrl("gst-play-1.0 https://samplelib.com/lib/preview/mp4/sample-5s.mp4"));

//    player->setMedia(QUrl("gst-launch-1.0 playbin uri=file:////home/dhruvi/Downloads/video.mp4 video-sink=ximagesink"));

//    player->setMedia(QUrl("gst-launch-1.0 v4l2src device=/dev/video0 extra-controls="c,contrast=0x80,brightness=0x00, hue=0x00, saturation=0x80 ! imxpxpvideosink sync=false force-aspect-ratio=false"));



//    vw->show();
//    vw->setGeometry(300,300,500,500);
//    player->play();

    return a.exec();
}
