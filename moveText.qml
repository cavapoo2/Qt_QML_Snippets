import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"black"

    Item {
        width: 640; height: 480

        MouseArea {
            anchors.fill: parent
            onClicked: label.moveTo(mouse.x, mouse.y)
        }

        Text {
            id: label
            color:"green"
            function moveTo(newX, newY) {
                label.x = newX;
                label.y = newY;
            }

            text: "Move me!"
        }
    }
}
