import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "black"
    Rectangle {
        width:100; height:100
        color:"green"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(Qt.colorEqual(parent.color,"#ff0000"))
                    parent.color = 'green'
                else parent.color = 'red'
            }
        }
    }
}
