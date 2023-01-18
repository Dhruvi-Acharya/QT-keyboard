import QtQuick 2.12
import QtQuick.Layouts 6.0
import QtQuick.Controls 6.2

Item {
    width: gridLayout.width
    height: gridLayout.height
    anchors.centerIn: parent

    GridLayout{
        id: gridLayout
        columns: 1

        Row {
            spacing: 5
            RoundButton {
                text: "1"
            }
            RoundButton {
                text: "2"
            }
            RoundButton {
                text: "3"
            }
            RoundButton {
                text: "4"
            }
            RoundButton {
                id: roundButton4
                text: "5"
            }
            RoundButton {
                text: "6"
            }
            RoundButton {
                text: "7"
            }
            RoundButton {
                text: "8"
            }
            RoundButton {
                text: "9"
            }
            RoundButton {
                text: "0"
            }
        }

        Row {
            spacing: 5
            RoundButton {
                text: "Q"
            }
            RoundButton {
                text: "W"
            }
            RoundButton {
                text: "E"
            }
            RoundButton {
                text: "R"
            }
            RoundButton {
                text: "T"
            }
            RoundButton {
                text: "Y"
            }
            RoundButton {
                text: "U"
            }
            RoundButton {
                text: "I"
            }
            RoundButton {
                text: "O"
            }
            RoundButton {
                text: "P"
            }
        }

        Row {
            spacing: 5
            anchors.horizontalCenter: parent.horizontalCenter
            RoundButton {
                text: "A"
            }
            RoundButton {
                text: "S"
            }
            RoundButton {
                text: "D"
            }
            RoundButton {
                text: "F"
            }
            RoundButton {
                text: "G"
            }
            RoundButton {
                text: "H"
            }
            RoundButton {
                text: "J"
            }
            RoundButton {
                text: "K"
            }
            RoundButton {
                text: "L"
            }
        }

        Row {
            spacing: 5
            anchors.horizontalCenter: parent.horizontalCenter
            RoundButton {
                text: "Z"
            }
            RoundButton {
                text: "X"
            }
            RoundButton {
                text: "C"
            }
            RoundButton {
                text: "V"
            }
            RoundButton {
                text: "B"
            }
            RoundButton {
                text: "N"
            }
            RoundButton {
                text: "M"
            }
            RoundButton {
                text: ","
            }
            RoundButton {
                text: "."
            }
        }

        Row {
            spacing: 5
            anchors.horizontalCenter: parent.horizontalCenter
            RoundButton {
                text: " "
                width: 250

            }
        }

    }
}
