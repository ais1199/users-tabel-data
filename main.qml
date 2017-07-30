import QtQuick 1.0

Rectangle {
    id: first
    width: 300
    height: 245
    anchors.fill: parent

    ListModel {
            id: dataModel

            ListElement {
                uid: "user id"
                uname: "user name"
                uphone: "user phone"
                color: "#dbff6d"
            }
        }
    function addElement (uid, uname, uphone)
        {
            dataModel.append({"uid": uid, "uname": uname, "uphone": uphone, "color": "#ffffff"})
        }
        ListView {
            id: view
            anchors.fill: parent
            model: dataModel
            clip: true
            delegate: Rectangle {
                id:u
                width: first.width
                height: 20

                Rectangle{
                    id:u1
                    width: first.width/3
                    height: 20
                    border {
                        color: "black"
                        width: 1
                    }
                    color: model.color
                    Text {
                        anchors.centerIn: parent
                        //renderType: Text.NativeRendering
                        text: model.uid
                    }
                }
                Rectangle{
                    id:u2
                    x:first.width/3
                    width: first.width/3
                    height: 20
                    border {
                        color: "black"
                        width: 1
                    }
                    color: model.color

                    Text {
                        anchors.centerIn: parent
                        //renderType: Text.NativeRendering
                        text: model.uname
                    }
                }
                Rectangle{
                    id:u3
                    x:2*first.width/3
                    width: first.width/3
                    height: 20
                    border {
                        color: "black"
                        width: 1
                    }
                    color: model.color
                    Text {
                        anchors.centerIn: parent
                        //renderType: Text.NativeRendering
                        text: model.uphone
                    }
                }

            }
        }

}
