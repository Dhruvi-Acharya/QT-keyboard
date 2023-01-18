import QtQuick 2.12
import QtQuick.Layouts 6.0
import QtQuick.Controls 2.15
Item {
    id : item1
    width : gridLayout.width
    height : parent.height
    GridLayout {
        id : gridLayout
        height : parent.height
        anchors.verticalCenter : parent.verticalCenter
        anchors.horizontalCenter : parent.horizontalCenter
        columns : 1
        RoundButton {
            id : roundButton
            text : "BkSpc"
            anchors.top : parent.top
        }
        RoundButton {
            id : roundButton1
            anchors.horizontalCenter : parent.horizontalCenter
            anchors.bottomMargin : 5
            anchors.bottom : roundButton2.top
            text : "Prev"
        }
        RoundButton {
            anchors.horizontalCenter : parent.horizontalCenter
            id : roundButton2
            anchors.bottom : parent.bottom
            text : "Next"
        }
    }
}
