import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")
    color:"black"

    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 20

            delegate: ItemDelegate {
                Text{
                    text: "Item " + (index + 1)
                    color: "yellow"

                    width: parent.width
                }
            }
        }
    }
}
