import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2
import QtQuick.Layouts 6.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Keyboard")
    
    Rectangle{
        id: rectangle
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        
        GridLayout {
            columns: 1
            rowSpacing: 10
            id: gridLayout
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            
            Row {
                id: row
                Layout.fillWidth: true
                spacing: 10
                Label {
                    id: label
                    text: qsTr("Numeric Field: ")
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                }
                
                TextField {
                    width: 400
                    id: textField_numeric
                    placeholderText: qsTr("Text Field")

//                    onFocusChanged: grid_numeric.visible ? true : false
//                    onFocusChanged: grid_numeric.visible = true
//                    onEditingFinished: grid_numeric.visible = false
//                    activeFocusChanged: grid_numeric.visible = false

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            grid_numeric.visible = true
                            textField_numeric.focus = true
                            alpha_numeric_grid.visible = false
                        }
                    }
                }
            }            
            Row {
                id: row1
                Layout.fillWidth: true
                spacing: 10
                Label {
                    id: label1
                    text: qsTr("Alphanumeric Field: ")
                    anchors.verticalCenter: parent.verticalCenter
                }
                
                TextField {
                    width: 365
                    id: textField_alpha_numeric
                    placeholderText: qsTr("Text Field")

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            alpha_numeric_grid.visible = true
                            textField_alpha_numeric.focus = true
                            grid_numeric.visible = false
                        }
//                        onExited: {
//                            alpha_numeric_grid.visible = false
//                        }
                    }
                }
            }
            
            Row {
                spacing: 10
                id: row2
                height: gridLayout1.implicitHeight
                Layout.topMargin: 20
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                
                GridLayout {
                    columns: 3
                    id: grid_numeric
                    visible: false
//                    visible: textField_numeric.
//                    visible: textField_numeric.activeFocus ? true : false
                    RoundButton {
                        id: btn_one
                        text: "1"
                        
                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_one.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_two
                        text: "2"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_two.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_three
                        text: "3"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_three.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_four
                        text: "4"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_four.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_five
                        text: "5"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_five.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_six
                        text: "6"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_six.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_seven
                        text: "7"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_seven.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_eight
                        text: "8"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_eight.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_nine
                        text: "9"

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_nine.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_zero
                        text: "0"
                        Layout.columnSpan: 2
                        Layout.fillWidth: true

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_zero.text
                        }
                    }
                    
                    RoundButton {
                        id: btn_dot
                        text: "."

                        onClicked: {
                            textField_numeric.text = textField_numeric.text + btn_dot.text
                        }
                    }
                }

                GridLayout{
                    id: alpha_numeric_grid
                    visible: false
                    columns: 1

//                    visible: textField_alpha_numeric.activeFocus ? true : false

                    Row {
                        spacing: 5
                        RoundButton {
                            text: "1"
                            id: btn_one_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_one_alpha.text
                            }
                        }
                        RoundButton {
                            text: "2"
                            id: btn_two_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_two_alpha.text
                            }
                        }
                        RoundButton {
                            text: "3"
                            id: btn_three_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_three_alpha.text
                            }
                        }
                        RoundButton {
                            text: "4"
                            id: btn_four_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_four_alpha.text
                            }
                        }
                        RoundButton {
                            id: btn_five_alpha
                            text: "5"
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_five_alpha.text
                            }
                        }
                        RoundButton {
                            text: "6"
                            id: btn_six_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_six_alpha.text
                            }
                        }
                        RoundButton {
                            text: "7"
                            id: btn_seven_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_seven_alpha.text
                            }
                        }
                        RoundButton {
                            text: "8"
                            id: btn_eight_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_eight_alpha.text
                            }
                        }
                        RoundButton {
                            text: "9"
                            id: btn_nine_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_nine_alpha.text
                            }
                        }
                        RoundButton {
                            text: "0"
                            id: btn_zero_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_zero_alpha.text
                            }
                        }
                    }

                    Row {
                        spacing: 5
                        RoundButton {
                            text: "Q"
                            id: btn_Q
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_Q.text
                            }
                        }
                        RoundButton {
                            text: "W"
                            id: btn_W
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_W.text
                            }
                        }
                        RoundButton {
                            text: "E"
                            id: btn_E
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_E.text
                            }
                        }
                        RoundButton {
                            text: "R"
                            id: btn_R
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_R.text
                            }
                        }
                        RoundButton {
                            text: "T"
                            id: btn_T
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_T.text
                            }
                        }
                        RoundButton {
                            text: "Y"
                            id: btn_Y
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_Y.text
                            }
                        }
                        RoundButton {
                            text: "U"
                            id: btn_U
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_U.text
                            }
                        }
                        RoundButton {
                            text: "I"
                            id: btn_I
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_I.text
                            }
                        }
                        RoundButton {
                            text: "O"
                            id: btn_O
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_O.text
                            }
                        }
                        RoundButton {
                            text: "P"
                            id: btn_P
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_P.text
                            }
                        }
                    }

                    Row {
                        spacing: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RoundButton {
                            text: "A"
                            id: btn_A
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_A.text
                            }
                        }
                        RoundButton {
                            text: "S"
                            id: btn_S
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_S.text
                            }
                        }
                        RoundButton {
                            text: "D"
                            id: btn_D
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_D.text
                            }
                        }
                        RoundButton {
                            text: "F"
                            id: btn_F
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_F.text
                            }
                        }
                        RoundButton {
                            text: "G"
                            id: btn_G
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_G.text
                            }
                        }
                        RoundButton {
                            text: "H"
                            id: btn_H
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_H.text
                            }
                        }
                        RoundButton {
                            text: "J"
                            id: btn_J
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_J.text
                            }
                        }
                        RoundButton {
                            text: "K"
                            id: btn_K
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_K.text
                            }
                        }
                        RoundButton {
                            text: "L"
                            id: btn_L
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_L.text
                            }
                        }
                    }

                    Row {
                        spacing: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RoundButton {
                            text: "Z"
                            id: btn_Z
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_Z.text
                            }
                        }
                        RoundButton {
                            text: "X"
                            id: btn_X
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_X.text
                            }
                        }
                        RoundButton {
                            text: "C"
                            id: btn_C
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_C.text
                            }
                        }
                        RoundButton {
                            text: "V"
                            id: btn_V
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_V.text
                            }
                        }
                        RoundButton {
                            text: "B"
                            id: btn_B
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_B.text
                            }
                        }
                        RoundButton {
                            text: "N"
                            id: btn_N
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_N.text
                            }
                        }
                        RoundButton {
                            text: "M"
                            id: btn_M
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_M.text
                            }
                        }
                        RoundButton {
                            text: ","
                            id: btn_comma
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_comma.text
                            }
                        }
                        RoundButton {
                            text: "."
                            id: btn_dot_alpha
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + btn_dot_alpha.text
                            }
                        }
                    }

                    Row {
                        spacing: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        RoundButton {
                            text: " "
                            width: 250
                            id: btn_space
                            onClicked: {
                                textField_alpha_numeric.text = textField_alpha_numeric.text + " "
                            }

                        }
                    }
                }
                GridLayout {
                    id: gridLayout1
                    height: row2.height
                    Layout.fillHeight: true
                    columns : 1
                        RoundButton {
                            id : btn_bkspc
                            text : "BkSpc"
                            anchors.top : parent.top

                            onClicked: {
                                if(grid_numeric.visible){
                                    var position = textField_numeric.cursorPosition
                                    textField_numeric.text = textField_numeric.text.substring(0, textField_numeric.cursorPosition - 1) + textField_numeric.text.substring(textField_numeric.cursorPosition, textField_numeric.text.length)
                                    textField_numeric.cursorPosition = position - 1
                                }
                                else if(alpha_numeric_grid.visible){
                                    var position1 = textField_alpha_numeric.cursorPosition
                                    textField_alpha_numeric.text = textField_alpha_numeric.text.substring(0, textField_alpha_numeric.cursorPosition - 1) + textField_alpha_numeric.text.substring(textField_alpha_numeric.cursorPosition, textField_alpha_numeric.text.length)
                                    textField_alpha_numeric.cursorPosition = position1 - 1
                                }
                            }
                        }
                        RoundButton {
                            id: btn_prev
                            anchors.horizontalCenter : parent.horizontalCenter
                            anchors.bottomMargin : 5
                            anchors.bottom : btn_next.top
                            text : "Prev"
                        }
                        RoundButton {
                            id: btn_next
                            anchors.horizontalCenter : parent.horizontalCenter
                            anchors.bottom : parent.bottom
                            text : "Next"
                        }
                }
            }
            
            Row {
                anchors.bottom: rectangle.bottom
                id: row3
                Layout.topMargin: 20
                Layout.fillWidth: true
//                width: gridLayout.width
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                GridLayout {
                    columns: 3
                    id: grid
                    width: parent.width
                    anchors.topMargin: 70
//                    anchors.horizontalCenter: parent.horizontalCenter

                    RoundButton {
                        anchors.left: gridLayout.left
//                        id: roundButton3
                        icon.source: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1200px-Hamburger_icon.svg.png"

                    }

                    RoundButton {
                        id: btn_delete
                        icon.source: "https://cdn-icons-png.flaticon.com/512/2891/2891491.png"
                        anchors.horizontalCenter: parent.horizontalCenter

                        onClicked: {
                            if(grid_numeric.visible){
                                textField_numeric.clear()
                            }
                            else if(alpha_numeric_grid.visible){
                                textField_alpha_numeric.clear()
                            }
                        }
                    }

                    RoundButton {
//                        id: btn_delete
                        icon.source: "https://cdn0.iconfinder.com/data/icons/fashion-clothes-vol-2/48/49-512.png"
                        anchors.right: grid.right


                    }
                }
            }
        }
        
    }
}
