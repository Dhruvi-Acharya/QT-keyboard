import QtQuick 2.12
import QtQuick.Window 2.12
//import QtGStreamer 1.0
import QtMultimedia 5.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
            Video {
                id: video
                width: window.width
                height: 260
//                surface: videoSurface1 //bound on the context from main()
            }
            Row {
                id: buttons
                width: window.width
                height: 35
                spacing: 5
                Rectangle {
                    id: playButton
                    color: "black"
                    width: 60
                    height: 30
                    Text { text: "Play"; color: "white"; anchors.centerIn: parent }
                    MouseArea { anchors.fill: parent; onClicked: player.play() }
                }
                Rectangle {
                    id: stopButton
                    color: "black"
                    width: 60
                    height: 30
                    Text { text: "Stop"; color: "white"; anchors.centerIn: parent }
                    MouseArea { anchors.fill: parent; onClicked: player.stop() }
                }
                Rectangle {
                    id: openButton
                    color: "black"
                    width: 60
                    height: 30
                    Text { text: "Open file"; color: "white"; anchors.centerIn: parent }
                    MouseArea { anchors.fill: parent; onClicked: player.open() }
                }
            }
        }
}
