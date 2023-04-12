import QtQuick 2.12
import QtQuick.Layouts 6.0
import QtQuick.Controls 2.15

Item {
    width: rectangle.width
    height: rectangle.height
    anchors.centerIn: parent
    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        implicitWidth: gridLayout.implicitWidth
        implicitHeight: gridLayout.implicitHeight

        GridLayout {
            anchors.centerIn: parent
            id: gridLayout
            columns: 3

            RoundButton {
                id: btn_one
                text: "1"

                onClicked: {
                    textField.text = textField.text + btn_one.text
                }
            }

            RoundButton {
                id: roundButton1
                text: "2"
            }

            RoundButton {
                id: roundButton2
                text: "3"
            }

            RoundButton {
                id: roundButton3
                text: "4"
            }

            RoundButton {
                id: roundButton4
                text: "5"
            }

            RoundButton {
                id: roundButton5
                text: "6"
            }

            RoundButton {
                id: roundButton6
                text: "7"
            }

            RoundButton {
                id: roundButton7
                text: "8"
            }

            RoundButton {
                id: roundButton8
                text: "9"
            }

            RoundButton {
                id: roundButton9
                text: "0"
                Layout.columnSpan: 2
                Layout.fillWidth: true
            }

            RoundButton {
                id: roundButton10
                text: "."
            }
        }
    }
}
