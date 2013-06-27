import QtQuick 1.1


Rectangle {
    id: rectangle3
    color: "#ffffff"
    property string text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    Flickable {
        id: flickArea
        anchors.fill: parent
        flickableDirection: Flickable.VerticalFlick
        clip: true
        TextEdit{
            anchors.fill: parent
            id: helpText
            text: rectangle3.text
            font.pointSize: 12
            font.family: "Open Sans"
            wrapMode: TextEdit.WordWrap
            textFormat: TextEdit.AutoText
            readOnly:true
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            clip: true
        }
    }
}
