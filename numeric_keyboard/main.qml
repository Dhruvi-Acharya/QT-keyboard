import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keyboard")

    Rectangle {
        id: rectangle
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            width: 322
            height: 290
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

          spacing: 10
          Row {
              spacing: 5
              Label {
                  verticalAlignment: "AlignVCenter"
                  height: 30
                  text: "Field Name: "
              }
              TextField {
                  width: 300
                  height: 30
                  id: user_entry
                  placeholderText: qsTr("USER ENTRY")
              }
          }

          Row {
            spacing: 5
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

                onClicked: {
                    var position = user_entry.cursorPosition
                    user_entry.text = user_entry.text.substring(0, user_entry.cursorPosition - 1) + user_entry.text.substring(user_entry.cursorPosition, user_entry.text.length)
                    user_entry.cursorPosition = position - 1
                }
            }
          }
          Row {
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
          }

          Row {
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

          Row {
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

          Row {
              spacing: 10
              RoundButton {
                  id: btn_clear
                  width: 90; height: 40; text: "Clear"

                  onClicked: {
                      user_entry.clear()
                  }
              }

              RoundButton {
                  id: btn_space
                  width: 90; height: 40; text: ""

                  onClicked: {
                      user_entry.text = user_entry.text + " "
                  }
              }
          }

        }

    }

}
