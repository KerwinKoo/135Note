import QtQuick 2.4

Rectangle {
    id: titlebar
    height:100
    color: '#044A76'

    property int pageIndex: 0
    state: 'default'

    Text{
        anchors.centerIn: parent
        text: qsTr("135 Note")
        font.pointSize: 20
        color: '#929292'
    }

    ActionButton{
        anchors{
            right: parent.right
            rightMargin: 20
            verticalCenter: parent.verticalCenter
        }
        visible: titlebar.state == "default"
        icon: "qrc:/new/source/assets/edit.png"
        onClicked: titlebar.state = "adding"
    }

    ActionButton{
        anchors{
            left: parent.left
            leftMargin: 20
            verticalCenter: parent.verticalCenter
        }
        visible: titlebar.state == "adding"
        icon: "qrc:/new/source/assets/edit.png"
    }

    Line{
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
    }

}

