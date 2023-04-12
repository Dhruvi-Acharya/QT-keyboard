import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: item1
//    Button {
//      text: "Move Test1"
//      onClicked: {
//          myStack.currentIndex = 0 // Move to page 1
//      }
//    }
    Label {
        id: label
        text: qsTr("Welcome")
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
    }
}
