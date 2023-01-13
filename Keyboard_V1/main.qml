import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
//        anchors.centerIn: parent
        width: parent.width
//        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label
            text: qsTr("Field Name:")

        }

        TextField {
            id: textField
            anchors.left: label.right
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            placeholderText: qsTr("Text Field")
        }

    }

        NumericKey{
            id: numeric_key
        }

        BkspcPrevNext {
            height: numeric_key.height
            anchors.leftMargin: 20
            anchors.left: numeric_key.right
            anchors.top: numeric_key.top
            anchors.bottom: numeric_key.bottom
        }

//        AlphaNumericKey {

//        }
}
