import QtQuick 2.0

Rectangle {
    id: titlebar
    width:parent.width
    height:100
    color: '#f2f2ee'

    property int pageIndex: 0
    state: 'default'

    Text{
        anchors.centerIn: parent
        text: qsTr("135 Note")
        font.pointSize: 18
        color: '#929292'
    }


}

