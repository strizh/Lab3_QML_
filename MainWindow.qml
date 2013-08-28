import QtQuick 1.1

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
