import QtQuick 1.1


Row{
    id: par
   property alias textLabel: textout.text
    property alias text: textinput.text
    property alias fontSize: textinput.font.pixelSize
    property alias  widthInputLine: inputStringServer.width
    width: 280
    height:fontSize+10
    //color: "mediumseagreen"

    Text {
        id:textout;
        font.pixelSize: fontSize;
        y:5;
        color: "white";
    }

    Rectangle {
        id: inputStringServer //Имя строки ввода
        anchors.right: par.right
        //Размещаем ниже
        height: fontSize+12;
        width: 200
        TextInput {
            width: parent.width
            anchors.verticalCenter: parent.verticalCenter
            id: textinput
            objectName: "textinput"
            color: "black";
            font.pixelSize: fontSize;
            selectionColor: "blue"
            focus: false
            }
    }

}
