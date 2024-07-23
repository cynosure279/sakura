import QtQuick 2.15
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt.labs.platform
import QtQml

import FluentUI

import "../global"
import"../pages"
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


//navigation
    FluNavigationView{
        anchors.fill: parent
        id:navigationView
        width:parent.width
        height:parent.height
        z:999

        logo: "qrc:/res/SakuraIcon.svg"

        pageMode: FluNavigationViewType.NoStack
        items:Allitems
        footerItems: Footitems
        displayMode: FluNavigationViewType.Auto
        topPadding:{
            if(mainWindow.useSystemAppBar){
                 return 0
            }
            return FluTools.isMacos() ? 20 : 0
            }
        title: "Sakura"
        //logo:
        autoSuggestBox: FluAutoSuggestBox{
            iconSource: FluentIcons.Search
            placeholderText: qsTr("Search")

            items: Allitems.getSearchData()
            onItemClicked:
                (data)=>{
                Allitems.startPageByItem(data)
                }
        }
        Component.onCompleted: {
            Allitems.navigationview = navigationView
            mainWindow.setHitTestVisible(navigationView.buttonMenu)
            mainWindow.setHitTestVisible(navigationView.buttonBack)
            mainWindow.setHitTestVisible(navigationView.imageLogo)

            setCurrentIndex(0)
        }


    }




    //tray
    SystemTrayIcon{
        visible: true
        id:tray
        tooltip: "sakura"
        //icon: "qrc:/res/SakuraIcon.svg"
        menu: Menu{
            MenuItem {
                text:"exit"
                onTriggered: {
                    FluRouter.exit(0)
                }
            }
        }
        onActivated:
            (reason)=> {
                if(reason === SystemTrayIcon.Trigger) {
                    mainWindow.show()
                    mainWindow.raise()
                    mainWindow.requestActivate()
                }
            }
    }



    //destroy

    Component.onDestruction: {
        FluRouter.exit()
    }


    //exit

    FluContentDialog {
        id: quitProg
        title: "退出"
        message: "确定要退出程序吗？"
        negativeText: "最小化"
        buttonFlags: FluContentDialogType.NegativeButton | FluContentDialogType.NeutralButton
                    | FluContentDialogType.PositiveButton
        onNegativeClicked: {
            mainWindow.hide()
        }
        positiveText: "退出"
        neutralText: "取消"
        onPositiveClicked: {
            FluRouter.exit(0)
            }
        }
    closeListener:function(event){
            // 打开关闭确认 弹窗
            quitProg.open()
            // 取消关闭
            event.accepted = false
        }


}
