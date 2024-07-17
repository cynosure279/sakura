import QtQuick
import QtQuick.Window
import FluentUI

FluLauncher {
    id:app


    Component.onCompleted: {
        FluApp.init(app,Qt.locale())
        FluTheme.darkMode = true
        FluTheme.animationEnabled = true
        FluTheme.nativeText = true

        FluRouter.routes = {
            "/": "qrc:/qml/MainWindow.qml"
        }
        FluRouter.navigate("/")




    }
}
