import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import Class 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Receiver{
        id: myclase
    }

    Connections{
        target: myclase
        onSomeVarChanged: myLabel.text = myclase.getsomeVar()
    }




    MouseArea{
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
             myclase.receiveSomething("screen");
        }
    }


    Text{
        id: myLabel
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: 20
        }
        font.pixelSize: 24
        text: myclase.someVar
    }

   Rectangle {
       width: 200
       height: 100
       color: "red"

       Text {
           anchors.centerIn: parent
           text: "Hello, World!"
       }

   }


   TextInput {
       text: "input: "
       x: 100
       y:100
       cursorVisible: true
   }

   Button{
       id: mybutton
       anchors.centerIn: parent
       text: "Click me"
       //onClicked: myclase.receiveSomething(" button")
       //este es un comentario para lo de qml
       //este es un el segundo comtario
       onClicked: myclase.setSomeVar("hello connection")

   }



}

