import QtQuick 2.12
import QtQuick.Layouts 6.0
import QtQuick.Controls 2.15

Item {

    Rectangle {
        anchors.centerIn: parent
        id: rectangle
        GridLayout {
            id: gridLayout

            columns: 3

            RoundButton {
                id: roundButton
                text: "+"
            }

            RoundButton {
                id: roundButton1
                text: "+"
                icon.color: "#ffffff"
            }

            RoundButton {
                id: roundButton2
                text: "+"
            }

            RoundButton {
                id: roundButton3
                text: "+"
                icon.color: "#ffffff"
            }

            RoundButton {
                id: roundButton4
                text: "+"
            }

            RoundButton {
                id: roundButton5
                text: "+"
                icon.color: "#ffffff"
            }

            RoundButton {
                id: roundButton6
                text: "+"
            }

            RoundButton {
                id: roundButton7
                text: "+"
                icon.color: "#ffffff"
            }

            RoundButton {
                id: roundButton8
                text: "+"
            }

            RoundButton {
                id: roundButton9
                text: "+"
                Layout.columnSpan: 2
                Layout.fillWidth: true
                icon.color: "#ffffff"
            }

            RoundButton {
                id: roundButton10
                text: "+"
            }

        }
    }
}
