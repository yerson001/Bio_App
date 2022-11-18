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



   Rectangle{
       id: contenedor
       width: 400
       height: 300
       color: "#333333"
       anchors.centerIn: parent

       Column{
           spacing: 10
           anchors.centerIn: parent

           Row{
               spacing: 10
               Text{
                   id: labelUsuario
                   text: "Usuario"
                   color: "#ffffff"
                   font.pixelSize: 20
               }
               Rectangle{
                   id: areaTextInput
                   width: 200
                   height: 30
                   color: "#ffffff"
                   anchors.margins: 30
                   focus: false
                   TextInput{
                       id: textInputUsuario
                       text: "Ingrese usuario"
                       anchors.fill: parent
                       font.pixelSize: 20
                       focus: false
                       onFocusChanged: {
                           if(focus && text === "Ingrese usuario"){
                               textInputUsuario.text = " "
                           }else{
                               if(text===""){
                                   text = "Ingrese usuario"
                               }
                           }
                       }
                   }
               }
           }

       }
   }






   Button{
       id: mybutton
       x: 300
       y: 400
       //anchors.centerIn: parent

       text: "fist button"
       //onClicked: myclase.receiveSomething(" button")
       //este es un comentario para lo de qml
       //este es un el segundo comtario
       onClicked: myclase.setSomeVar(textInputUsuario.text)

   }


   Button{
       id: mybutton1
       x: 500
       y: 400
       //anchors.centerIn: parent

       text: "Second button"
       onClicked: myclase.changeValue(1)
       //este es un comentario para lo de qml
       //este es un el segundo comtario
       //onClicked: myclase.setSomeVar(textInputUsuario.text)

   }


   Label{
       id:label
       x: 20
       y: 88
       width: 355
       height: 62
       text: "LABEL"
       Connections{
           target: myclase
           onValueChanged: label.text = s;
       }
   }



}


















