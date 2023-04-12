import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3


Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"

    Component.onCompleted: {
        window.showMaximized()
    }

    StackLayout {
        id: myStack
        anchors.fill: parent

        Loginscreen {

        }

        Screen2{

        }
    }
}
