import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Qt5Compat.GraphicalEffects

Window {
    visibility: Qt.WindowFullScreen
    visible: true
    title: qsTr("Welcome to my casino(ATTACK_GAME)")
    property var usernamePlayer: ""
    Loader {
        id: loader_screen
        anchors.fill: parent
        source: "qrc:/attackgame/src/qml/login.qml"
    }

    Connections {
        target: loader_screen.item
        function onChangeScreen(source, username) {
            if(username !== "") usernamePlayer = username; // đặt tiền lấy từ db
            if (source && source != "") {
                loader_screen.source = source
            }
            else 
            {
                loader_screen.source = "";
                loader_screen.source = "qrc:/attackgame/src/qml/login.qml"
            }
        }
    }
}
// build program: powershell -ExecutionPolicy Bypass -File .\buildGame.ps1