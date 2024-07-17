import QtQuick 2.15
import FluentUI
FluWindow {
    id: mainWindow
    visible: true
    width: 1000
    height: 668
    minimumWidth: 668
    minimumHeight: 320
    launchMode: FluWindowType.SingleTask
    fitsAppBarWindows: true
    title:qsTr("Sakura")
    appBar: FluAppBar {
        height: 30
        z:7


        showDark: true
        darkText: "Dark Mode"
    }

}
