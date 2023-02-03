import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"

    StackLayout {
        id: myStack
        anchors.fill: parent

        Loginscreen {

        }

        Screen2{

        }
    }
}
