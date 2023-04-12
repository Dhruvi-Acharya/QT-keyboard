import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.3

// Import our custom QML component "MyDatabase", defined in main.cpp.
import org.mydb 1.0

Item {

    id : window
    width : 640
    height : 480
    visible : true

    MyDatabase {
        id: mydb
    }

    ColumnLayout {
        anchors.verticalCenter : parent.verticalCenter
        anchors.horizontalCenter : parent.horizontalCenter

        Image {
            Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
            source : "/images/wisenet_logo.png"
        }

        Label {
            anchors.topMargin : 20
            color : "white"
            id : label_console
            text : "<html><body><b>Console Client</b></font>?.11.00_220823</body></html>"
            Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
        }

        Rectangle {
            Layout.fillWidth : true
            Layout.preferredHeight : 1
            color : "white"
            Layout.topMargin : 10
        }

        GridLayout {
            id: gridLayout
            Layout.topMargin: 40
            //                columnSpacing: 10
            //                rowSpacing: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            columns: 3

            Label {
                color: "white"
                id: server_name
                text: qsTr("Server")
            }

            ComboBox {
                id: comboBox
                Layout.preferredWidth: 200;
                // width: txt_ID.width
            }
            Button {
                icon.color: "transparent"
                Layout.preferredWidth: 50
//                icon.source: "https://static.vecteezy.com/system/resources/thumbnails/006/542/150/small/setting-icon-design-tools-cog-gear-line-style-for-graphic-design-logos-web-sites-social-media-ui-mobile-app-free-vector.jpg"
                icon.source: "images/setting_icon.png"
            }
            Label {
                color: "white"
                text: qsTr("ID")
            }
            TextField {
                id: txt_ID
                Layout.preferredWidth: 200
                text: qsTr("")
            }
            Button {
                id: login_button
                Layout.rowSpan: 2
                Layout.fillHeight: true
                text: qsTr("Login")
                icon.color: "#ffffff"

                onClicked: {
                    console.log("id: "+txt_ID.text)
                    console.log("pwd: "+txt_password.text)
                    console.log("button click event")
                    var person = mydb.search(txt_ID.text,txt_password.text)

                    if (person !== "person not found") {
                        console.log("person found")
                        console.log("id1: "+txt_ID.text)
                        console.log("pwd1: "+txt_password.text)
                        myStack.currentIndex = 1 // Move to page 2
                    }
                    else
                    {
                        label_user.text = "Invalid User name or password!!! Please Retry"
                    }
                }
            }
            Label {
                color: "white"
                id: pass
                text: qsTr("Password")
            }
            TextField {
                id: txt_password
                Layout.preferredWidth: 200
                echoMode: TextInput.Password
                // width: 300
            }

            CheckBox {
                Layout.column: 1
                Layout.row: 4
                id: checkBox1

                Text {
                    x: 40
                    y: 10
                    color: "white"
                    text: qsTr("Save ID")
                    anchors.leftMargin: -32
                }

            }

            CheckBox {
                id: checkBox
                Layout.column: 1
                Layout.row: 5

                Text {
                    id: name
                    x: 40
                    y: 10
                    color: "white"
                    text: qsTr("Auto Login")
                    anchors.leftMargin: -32
                }

            }
        }
        Label {
            anchors.topMargin : 20
            color : "white"
            id : label_user
            text : ""
            Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
        }
    }
}
