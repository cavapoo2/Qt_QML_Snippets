import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color:"black"
    Column {
        id: column
        width: 200
        height: 200

        Rectangle {
            id: topRect
            width: Math.max(bottomRect.width, parent.width/2)
            height: (parent.height / 3) + 10
            color: "yellow"

            TextInput {
                id: myTextInput
                text: "Hello QML!"
            }
        }

        Rectangle {
            id: bottomRect
            width: 100
            height: 50
            color: myTextInput.text.length <= 10 ? "red" : "blue"
        }
    }
}
