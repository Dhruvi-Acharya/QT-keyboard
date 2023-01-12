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
//        width: window.width
//        height: 0.2 * window.height

        Label {
//            height: 0.8 * parent.height
            id: field_name
//            x: 0.02 * height
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Field Name: ")
        }

//        TextField {
//            anchors.right: parent.right
//            anchors.left: field_name.right
////            anchors.verticalCenter: parent.verticalCenter
//            id: textInput
//            anchors.rightMargin: 20
//            placeholderText: qsTr("USER ENTRY")
//        }

    }







    //    numeric_keyboard{

    //    }

    //    NumericKey{

    //    }

    //    NumericKey{
    //        anchors.centerIn: parent
    //    }
}
