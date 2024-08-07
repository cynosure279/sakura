pragma Singleton

import QtQuick 2.15
import FluentUI

FluObject {

    property var navigationview
   // property var paneItemMneu



    FluPaneItem{
        id:itemHome
        title:qsTr("Home")
        //menuDelegate: paneItemMneu
        url:"qrc:/qml/pages/homePage.qml"
        icon:FluentIcons.Home
        onTap: {
            navigationview.push(url)
        }
    }

    FluPaneItem{
        id:projectManager


        title: "Project Manager"
        url:"qrc:/qml/pages/projectManager.qml"
        icon: FluentIcons.Manage
        onTap: {
            navigationview.push(url)
        }

    }







    FluPaneItem{
        id:pluginManager
        title: "Plugin Manager"
        url:"qrc:/qml/pages/pluginManager.qml"
        icon: FluentIcons.GameConsole
        onTap: {
            navigationview.push(url)
        }
    }

    FluPaneItem{
        id:pluginStore
        title: "Plugin Store"
        icon:FluentIcons.Shop
        url:"qrc:/qml/pages/pluginStore.qml"
        onTap: {
            navigationview.push(url)
        }
    }

    FluPaneItem{
        title: "Others"
        icon: FluentIcons.Component
    }

    FluPaneItem{
        title: "Console"
        url:"qrc:/qml/pages/projectConsole.qml"
        icon: FluentIcons.CommandPrompt
        onTap: {
            navigationview.push(url)
        }
    }



    FluPaneItemSeparator{}

    FluPaneItem{
        id:serverManager
        title:qsTr("Servers")
        icon: FluentIcons.DetachablePC
        url:"qrc:/qml/pages/serverManager.qml"
        onTap:{
            navigationview.push(url)

        }

    }



    function getSearchData(){
           if(!navigationview){
               return
           }
           var arr = []
           var items = navigationview.getItems();
           for(var i=0;i<items.length;i++){
               var item = items[i]
               if(item instanceof FluPaneItem){
                   if (item.parent instanceof FluPaneItemExpander)
                   {
                       arr.push({title:`${item.parent.title} -> ${item.title}`,key:item.key})
                   }
                   else
                       arr.push({title:item.title,key:item.key})
               }
           }
           return arr
       }




    function startPagebyItem(data) {
        navigationview.startPageByItem(data)
    }

    function jmpProjectManager() {
        navigationview.startPageByItem(projectManager)
    }
    function jmpPluginManager(){
        navigationview.startPageByItem(pluginManager)
    }
    function jmpServerManager(){
        navigationview.startPageByItem(serverManager)
    }
    function jmpPluginStore(){
        navigationview.startPageByItem(pluginStore)
    }

}
