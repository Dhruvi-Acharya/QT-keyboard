import QtQuick 2.12
import QtQuick.Controls 2.3

Item {
    id: item1
    width: 500
    height: 500

//    Column{
//        width: parent.width
//        height: parent.height
//        spacing: 25
//        Row {
//            Repeater {
//                model: [
//                    {text: '4', width: 1},
//                    {text: '5', width: 1},
//                    {text: '6', width: 1},
//                ]
//            }
//        }

//        Row {
//            spacing: 25
//            Repeater {
//                model: 3
//                Text {
//                    id: name1
//                    text: qsTr("1")
//                }
//                Text {
//                    id: name2
//                    text: qsTr("2")
//                }
//                Text {
//                    id: name3
//                    text: qsTr("3")
//                }
//            }
//        }


//    }

    Rectangle {
        id: rectangle
        width: parent.width
        height: 340
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: col1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            /* outer column */
          spacing: 10
//          Text { text: "Column Element"}
          Row {
              spacing: 10
              Label {
                  height: 40
                  text: "Field Name: "
              }
              TextField {
                  id: user_entry
                  placeholderText: qsTr("USER ENTRY")
              }
          }

          Row { /* inner row */
            spacing: 10
            RoundButton {
                id: btn_one
                width: 40; height: 40; text: "1"

                onClicked: {
                    user_entry.text = user_entry.text + btn_one.text
                }
            }
            RoundButton {
                id: btn_two
                width: 40; height: 40; text: "2"

                onClicked: {
                    user_entry.text = user_entry.text + btn_two.text
                }
            }
            RoundButton {
                id: btn_three
                width: 40; height: 40; text: "3"
                onClicked: {
                    user_entry.text = user_entry.text + btn_three.text
                }
            }
            RoundButton {
                id: btn_bkspc
                width: 70; height: 40; text: "BkSpc"
                icon.color: "#ffffff"

                onClicked: {
                    var position = user_entry.cursorPosition
                    user_entry.text = user_entry.text.substring(0, user_entry.cursorPosition - 1) + user_entry.text.substring(user_entry.cursorPosition, user_entry.text.length)
                    user_entry.cursorPosition = position - 1
                }

//                onClicked{
//                    var position = user_entry.cursorPosition
//                    user_entry.text: user_entry.text.substring(0, user_entry.cursorPosition - 1) + user_entry.text.substring(user_entry.cursorPosition, user_entry.text.length)
//                    user_entry.cursorPosition: position - 1
//                }
//                onClicked: user_entry.undo()
            }
          }
          Row { /* inner row */
            spacing: 10
            RoundButton {
                id: btn_four
                width: 40; height: 40; text: "4"
                onClicked: {
                    user_entry.text = user_entry.text + btn_four.text
                }
            }
            RoundButton {
                id: btn_five
                width: 40; height: 40; text: "5"
                onClicked: {
                    user_entry.text = user_entry.text + btn_five.text
                }
            }
            RoundButton {
                id: btn_six
                width: 40; height: 40; text: "6"
                onClicked: {
                    user_entry.text = user_entry.text + btn_six.text
                }
            }
            RoundButton {
                id: btn_clear
                width: 70; height: 40; text: "Clear"

                onClicked: {
                    user_entry.clear()
                }
            }
          }

          Row { /* inner row */
            spacing: 10
            RoundButton {
                id: btn_seven
                width: 40; height: 40; text: "7"
                onClicked: {
                    user_entry.text = user_entry.text + btn_seven.text
                }
            }
            RoundButton {
                id: btn_eight
                width: 40; height: 40; text: "8"
                onClicked: {
                    user_entry.text = user_entry.text + btn_eight.text
                }
            }
            RoundButton {
                id: btn_nine
                width: 40; height: 40; text: "9"
                onClicked: {
                    user_entry.text = user_entry.text + btn_nine.text
                }
            }
            RoundButton {
                id: btn_prev
                width: 70; height: 40; text: "Prev"
            }
          }

          Row { /* inner row */
            spacing: 10
            RoundButton {
                id: btn_zero
                width: 90; height: 40; text: "0"
                onClicked: {
                    user_entry.text = user_entry.text + btn_zero.text
                }
            }
            RoundButton {
                id: btn_dot
                width: 40; height: 40; text: "."
                onClicked: {
                    user_entry.text = user_entry.text + btn_dot.text
                }
            }
            RoundButton {
                id: btn_next
                width: 70; height: 40; text: "Next" }
          }

        }

        Grid {
            id: grid
            width: col1.width
            anchors.topMargin: 70
            anchors.top: col1.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            RoundButton {
                id: roundButton3
                icon.source: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1200px-Hamburger_icon.svg.png"

            }

            RoundButton {
                id: roundButton4
                icon.source: "https://cdn-icons-png.flaticon.com/512/2891/2891491.png"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            RoundButton {
                id: roundButton5
                icon.source: "https://cdn0.iconfinder.com/data/icons/fashion-clothes-vol-2/48/49-512.png"
                anchors.right: grid.right
            }
        }

    }
}
