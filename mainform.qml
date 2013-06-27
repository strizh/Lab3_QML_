import QtQuick 1.1

Rectangle {
    id: form
    width: 800
    height: 400

    VisualItemModel {
        id: itemmodel
        Rectangle {
            width: form.width
            height: form.height
            color: "mediumseagreen"
            Column {
                id: row1
                anchors.top: parent.top
                anchors.topMargin: 10
                spacing: 25
                anchors.left: parent.left
                anchors.leftMargin: 30
                LabelAndInputLine {
                    id: textInputLogin
                    objectName: "InputLineLogin"
                    fontSize: 24
                    width: 400
                    widthInputLine: 270
                    textLabel: "Login"
                    text: "testacc111@open.by"
                }
                LabelAndInputLine {
                    id: textInputFrom
                    objectName: "InputLineFrom"
                    textLabel: "Proxy"
                    width: 400
                    widthInputLine: 270
                    fontSize: 24
                    text: "172.16.110.60:2527"
                }

                LabelAndInputLine {
                    id: textInputServer
                    objectName: "InputLineServer"
                    fontSize: 24
                    width: 400
                    widthInputLine: 270
                    textLabel: "Server"
                    text: "mail.open.by"
                }
                LabelAndInputLine {
                    id: textInputPassword
                    objectName: "InputLinePassword"
                    fontSize: 24
                    width: 400
                    widthInputLine: 270
                    textLabel: "Password"
                    text: "123456"
                }
            }
            Row {
                id: row5
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.bottomMargin: 15
                anchors.bottom: parent.bottom
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
                    text: "\uF00C  Save"
                    onClicked: {
                    }
                }
            }
        }

        Rectangle {
            width: form.width
            height: form.height
            color: "white"

            Column {
                anchors.fill: parent
                id: layout
                Row {
                    spacing: 10
                    Column {
                        id: sidebar
                        height: form.height - menu.height
                        width: 200

                            Directory {
                                width: parent.width
                                height: 50
                                id: dirs

                            }
                            MessagesList {
                                id: messages
                                width: parent.width
                                height: parent.height - dirs.height
                                anchors.top: dirs.bottom
                                anchors.bottom: menu.top
                                objectName: "messages"
                            }

                    }
                    Rectangle {
                        anchors.leftMargin: 10
                        anchors.topMargin: 10
                        anchors.left: sidebar.right
                        width: layout.width - sidebar.width
                        height: sidebar.height
                        MessageView {
                            anchors.fill: parent
                            id: message
                            objectName: "message"
                        }
                    }
                }

                Rectangle {
                    width: parent.width
                    height: 70
                    color: "mediumseagreen"
                    Row {
                        id: menu
                        anchors.margins: 15
                        spacing: 10
                        height: 70

                        Rectangle {
                            width: text1.width + 10
                            anchors.verticalCenter: menu.verticalCenter
                            height: button1.height + text1.height
                            color: "mediumseagreen"
                            Button {
                                id: button1
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "\uF063"
                                onClicked: {
                                    window.receiveMessages()
                                }
                            }
                            Text {
                                id: text1
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "white"
                                font.pixelSize: 14
                                font.family: "Segoe UI"
                                text: "Recieve"
                                anchors.top: button1.bottom
                            }
                        }

                        Rectangle {
                            width: text2.width + 10
                            anchors.verticalCenter: menu.verticalCenter
                            height: button2.height + text1.height
                            color: "mediumseagreen"
                            Button {
                                id: button2
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "\uF062"
                                onClicked: {
                                    screens.currentIndex = 2
                                }
                            }
                            Text {
                                id: text2
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "white"
                                font.pixelSize: 14
                                font.family: "Segoe UI"
                                text: "Send"
                                anchors.top: button2.bottom
                            }
                        }

                        Rectangle {
                            width: text3.width + 10
                            anchors.verticalCenter: menu.verticalCenter
                            height: button3.height + text1.height
                            color: "mediumseagreen"
                            Button {
                                id: button3
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "\uF013"
                                onClicked: {
                                    screens.currentIndex = 0
                                }
                            }
                            Text {
                                id: text3
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: "white"
                                font.pixelSize: 14
                                font.family: "Segoe UI"
                                text: "Settings"
                                anchors.top: button3.bottom
                            }
                        }
                    }
                }
            }
        }
        Rectangle {
            FormNewMessage {
                width: form.width
                height: form.height
            }
        }
            }

    ListView {
        id: screens
        model: itemmodel
    }
    Component.onCompleted: {
        screens.currentIndex = 1
    }
}
