import QtQuick 2.4

Rectangle {
    id: button
    width: 100
    height: 100

    property alias text: txt.text
    property alias icon: img.source

    signal clicked()

    color: "transparent"

    MouseArea {
        id: mouse
        anchors.fill: parent
        onClicked: button.clicked
    }

    Image {
        id: img
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: txt
        anchors.fill: parent
        anchors.margins: 8
        color: "#929292"
        font.pointSize: 50
        fontSizeMode: Text.Fit
    }

}

