import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2
import QtQuick.Layouts 6.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        id: rectangle
        width: parent.width

        Label {
            id: label
            text: qsTr("Numeric Keyboard:")
        }

        TextField {
            id: textField
            anchors.left: label.right
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            placeholderText: qsTr("Text Field")
        }

        Label {
            anchors.topMargin: 20
            anchors.top: label.bottom
            id: label2
            text: qsTr("Alpha Numeric Key:")
        }

        TextField {
            anchors.topMargin: 10
            id: textField2
            anchors.top: textField.bottom
            anchors.left: label2.right
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            placeholderText: qsTr("Text Field")
        }
    }

        NumericKey{
            id: numeric_key
            visible: textField.activeFocus ? true : false
        }

        BkspcPrevNext {
            height: alpha_numeric_key.height
            anchors.leftMargin: 20
            anchors.left: alpha_numeric_key.right
            anchors.top: alpha_numeric_key.top
            anchors.bottom: alpha_numeric_key.bottom
        }

        AlphaNumericKey {
            visible: textField2.activeFocus ? true : false
            id: alpha_numeric_key
        }

        BottomIcon {
            anchors.bottom: parent.bottom
            width: parent.width
            anchors.bottomMargin: 50
        }
}
