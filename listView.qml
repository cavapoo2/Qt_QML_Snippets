import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"black"
    ListView {
        width: 240; height: 320
        model: 2
        delegate: Rectangle {
            width: 100; height: 30
            color: ListView.isCurrentItem ? "red" : "yellow"
        }
    }
    ListView {
        width: 240; height: 320
        x:100
        model: ListModel {
            id: listModel
            Component.onCompleted: {
                for (var i = 0; i < 10; i++)
                    listModel.append({"Name": "Item " + i})
            }
        }
        delegate: Text { text: index
                         color:"yellow"}
    }
}
