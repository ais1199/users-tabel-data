/* Progect:
*  We have one file with users' data, it must be presented, as not editable table.
*  \author ais
*  \version 2.0
*  \date 25.07.2017
*  \date Last Change: 31.07.2017
*/
import QtQuick 1.0

Rectangle {
    //
    //setting main properties
    id: first
    width: 300
    height: 245
    anchors.fill: parent
    //
    //declarating ListModel
    ListModel {
            id: dataModel
            //
            //add header
            ListElement {
                uid: "user id"
                uname: "user name"
                uphone: "user phone"
                color: "#dbff6d"
            }
        }
    //
    //declarating function to use it in cpp file
    function addElement (uid, uname, uphone)
        {
            dataModel.append({"uid": uid, "uname": uname, "uphone": uphone, "color": "#ffffff"})
        }
    //declarating ListView
        ListView {
            id: view
            anchors.fill: parent
            //
            //setting data source
            model: dataModel
            clip: true
            //
            //setting view
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
