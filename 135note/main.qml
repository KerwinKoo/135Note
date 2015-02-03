import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    id:mainwindow
    visible: true
    width: 480
    height: 1024
    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
//            Qt.quit();
        }

    }

    Rectangle{
        id:backgroundColor
        anchors.fill: parent
        color: "#929E9D"
        z:0

    }

    Column{
        Titlebar{
            id:titlebar
            width:mainwindow.width
            anchors.top: parent.top
            onStateChanged: {
                if(state == 'default'){
                    console.debug('state changed:', titlebar.state)
                }else if(state == 'adding'){
                    console.debug('state changed else:', titlebar.state)
                }

            }
        }
    }

    Component.onCompleted: {
        var list = todoCpp.getItems()
        console.debug(JSON.stringify(list))
        for(var i=0; i<list.length; i++)
        {
            console.debug("hello",i)
        }
    }

    function saveItems(){
        var lsit = []
        for(var i=0; i<list.length; i++)
        {
            List.push({'pri': ListModel.get(i).iPri,
                          'text': ListModel.get(i).iText,
                          'done': ListModel.get(i).iDone})
        }
        todoCpp.saveItems(list)
    }
}
