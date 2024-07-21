pragma Singleton

import QtQuick 2.15
import FluentUI

FluObject {

    property var navigationview
   // property var paneItemMneu

    function rename(item, newName){
            if(newName && newName.trim().length>0){
                item.title = newName;
            }
        }

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
    FluPaneItemExpander{
        title: qsTr("Projects")
        icon: FluentIcons.Project
        FluPaneItem{
            title: "Manager"
            url:"qrc:/qml/pages/projectManager.qml"
            icon: FluentIcons.Manage
            onTap: {
                navigationview.push(url)
            }

        }
        FluPaneItem{
            title: "Console"
            icon: FluentIcons.CommandPrompt
        }




    }
    FluPaneItemExpander{
        title: qsTr("Plugins")
        icon: FluentIcons.Component
        FluPaneItem{
            title: "Manager"
            icon: FluentIcons.GameConsole
        }
        FluPaneItem{
            title: "Store"
            icon:FluentIcons.Shop
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

}
