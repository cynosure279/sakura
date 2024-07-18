import QtQuick
import QtQuick.Window
import FluentUI

FluLauncher {
    id:app





    Component.onCompleted: {
        FluApp.init(app,Qt.locale())
        FluApp.useSystemAppBar = false
        FluTheme.darkMode = true
        FluTheme.animationEnabled = true
        FluTheme.nativeText = false

        FluRouter.routes = {
            "/": "qrc:/qml/windows/MainWindow.qml",
            "/create" : "qrc:/qml/windows/NavigationWindow.qml"
        }
        FluRouter.navigate("/")




    }
}
