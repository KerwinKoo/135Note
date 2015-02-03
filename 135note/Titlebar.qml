import QtQuick 2.0

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

}

