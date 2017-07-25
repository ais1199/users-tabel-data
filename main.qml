import QtQuick 1.0

Rectangle {
    id: first
    width: 300
    height: 245
    anchors.fill: parent
    ListModel {
            id: dataModel

            ListElement {
                type: "bird"
                text: "penguin"
            }
            ListElement {
                type: "bird"
                text: "raven"
            }
            ListElement {
                type: "bird"
                text: "lizard"
            }
            ListElement {
                type: "bird"
                text: "turtle"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "penguin"
            }
            ListElement {
                type: "bird"
                text: "raven"
            }
            ListElement {
                type: "bird"
                text: "lizard"
            }
            ListElement {
                type: "bird"
                text: "turtle"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
            ListElement {
                type: "bird"
                text: "crocodile"
            }
        }

    Rectangle
    {
        x: first.width/3
        y: 0
        width: first.width/3
        height: first.height
        //anchors.fill: parent
        ListView {
            id: view
            //anchors.margins: 10
            anchors.fill: parent
            //spacing: 10
            model: dataModel
            clip: true

            section.property: "type"
            section.delegate: Rectangle {
                width: first.width/3
                height: 20
                color: "lightgreen"
                border {
                    color: "black"
                    width: 1
                }

                Text {
                    anchors.centerIn: parent
                    //renderType: Text.NativeRendering
                    font.bold: true
                    text: section
                }
            }

            delegate: Rectangle {
                width: first.width/3
                height: 20
                border {
                    color: "black"
                    width: 1
                }

                Text {
                    anchors.centerIn: parent
                    //renderType: Text.NativeRendering
                    text: model.text
                }
            }
        }
    }
    Rectangle
    {
        width: first.width/3
        height: first.height
        //anchors.fill: parent
        ListView {
            id: view2
            //anchors.margins: 10
            anchors.fill: parent
            //spacing: 10
            model: dataModel
            clip: true

            section.property: "type"
            section.delegate: Rectangle {
                width: first.width/3
                height: 20
                border {
                    color: "black"
                    width: 1
                }

                color: "lightgreen"
                Text {
                    anchors.centerIn: parent
                    //renderType: Text.NativeRendering
                    font.bold: true
                    text: section
                }
            }

            delegate: Rectangle {
                width: first.width/3
                height: 20
                border {
                    color: "black"
                    width: 1
                }

                Text {
                    anchors.centerIn: parent
                    //renderType: Text.NativeRendering
                    text: model.text
                }
            }
        }
    }
}
