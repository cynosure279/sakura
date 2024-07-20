pragma Singleton


import QtQuick 2.15
import FluentUI



FluObject {
    property var navigationView
    id:footItems

    FluPaneItemSeparator{}
    FluPaneItem{
        title: qsTr("About")
        icon: FluentIcons.Contact
        onTapListener: function(){
            FluRouter.navigate("/about")
        }
    }
    FluPaneItem{
        title: qsTr("Settings")
        icon:FluentIcons.Settings
        url:""
        onTap: navigationView.push(url)
    }

}
