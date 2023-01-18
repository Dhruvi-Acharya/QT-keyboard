import QtQuick 2.12
import QtQuick.Controls 2.3

Item {

    Grid {
        id: grid
        width: parent.width
        anchors.topMargin: 70
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
