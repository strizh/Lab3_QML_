import QtQuick 1.1

Rectangle {
    color: "mediumseagreen"
    id: rec

    Row {
        id: row2
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 30
        spacing: 25
        LabelAndInputLine {
            id: textInputTo
            objectName: "InputLineTo"
            fontSize: 16
            textLabel: "To"
            text: "testacc111@open.by"
        }
        LabelAndInputLine {
            id: textInputSubject
            objectName: "InputLineSubject"
            fontSize: 16
            textLabel: "Subject"
            text: ""
            focus: true
        }
    }
    Row {
        id: row1
        anchors.top: row2.bottom
        anchors.topMargin: 10
        spacing: 25
        anchors.left: parent.left
        anchors.leftMargin: 30
        LabelAndInputLine {
            id: textInputLogin
            objectName: "InputLineLogin"
            fontSize: 16
            textLabel: "Login"
            text: "testacc111@open.by"
        }
        LabelAndInputLine {
            id: textInputFrom
            objectName: "InputLineFrom"
            textLabel: "From"
            fontSize: 16
            text: "testacc111@open.by"
        }
    }
    Row {
        id: row3
        anchors.top: row1.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 30
        spacing: 25
        LabelAndInputLine {
            id: textInputServer
            objectName: "InputLineServer"
            fontSize: 16
            textLabel: "Server"
            text: "mail.open.by"
        }
        LabelAndInputLine {
            id: textInputPassword
            objectName: "InputLinePassword"
            fontSize: 16
            textLabel: "Password"
            text: "123456"
        }
    }
    Rectangle {
        id: mess
        color: "white"
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.top: row3.bottom
        anchors.topMargin: 15
        height: rec.height - row3.height*3 - row5.height - 50 - 20
        TextEdit {
            id: textinputMessage
            anchors.fill: parent
            objectName: "InputLineBody"
            color: "#151515"
            font.pixelSize: 16
            selectionColor: "blue"
            focus: true
            wrapMode: TextEdit.WordWrap
            text: "Введите текст сообщения"

            font.pointSize: 16
            clip: false
            font.family: "Segoe UI"
        }
    }
    Row {
        id: row5
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.bottomMargin: 15
        anchors.bottom: rec.bottom
        height: 40
        spacing: 25
        Button {
            id: backButton
            radius: 0
            height: 40
            text: "\uF177 Back"
            onClicked: {
                screens.currentIndex = 1
            }
        }
        Button {
            id: sendButton
            radius: 0
            height: 40
            text: "\uF112 Send"
            onClicked: {
                window.sendMessages();
                screens.currentIndex = 1
            }
        }
    }
}
