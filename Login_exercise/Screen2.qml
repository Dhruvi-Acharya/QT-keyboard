import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    Button {
      text: "Move Test1"
      onClicked: {
          myStack.currentIndex = 0 // Move to page 1
      }
    }
    Label {
        id: label
        x: 49
        y: 66
        text: qsTr("Test2")
        color: "white"
    }
}
