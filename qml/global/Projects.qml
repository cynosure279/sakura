import QtQuick 2.15
import FluentUI
import QtQuick.Layouts
import QtQuick.Controls




ListView{




    ListModel{

        id: datalist
        ListElement{
            title: "project1"
            desc: "desc1"
        }
    }



    Component{
        id:items
        Item{

            width: 120
            height: 75
            FluFrame{
                radius: 8
                width: 120
                height: 65
                anchors.centerIn: parent
                Rectangle{
                    anchors.fill: parent
                    radius: 8
                    color:{
                        if(item_mouse.containsMouse){
                            return FluTheme.itemHoverColor
                        }
                        return FluTheme.itemNormalColor
                    }
                }

                FluText{
                    id:item_title
                    text:title
                    font: FluTextStyle.BodyStrong
                    anchors.centerIn: parent

                }
                FluText{
                    id:item_desc
                    text:desc
                    color:FluColors.Grey120
                    wrapMode: Text.WrapAnywhere
                    elide: Text.ElideRight
                    font: FluTextStyle.Caption
                    maximumLineCount: 2
                    anchors{
                        left: item_title.left
                        right: parent.right
                        rightMargin: 5
                        top: item_title.bottom
                        topMargin: 5
                    }

                }
                Rectangle{
                    height: 12
                    width: 12
                    radius:  6
                    color: FluTheme.primaryColor
                    anchors{
                        right: parent.right
                        top: parent.top
                        rightMargin: 5
                        topMargin: 5
                    }
                }

                MouseArea{
                    id:item_mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: {}
                }
            }
        }
    }




    header: Row{
        z:2


        FluAutoSuggestBox{
            width:80
            height: 30




        }
        FluIconButton{
            width: 40
            height: 30
            iconSource: FluentIcons.Add

            onClicked: {
                FluRouter.navigate("/create")
            }

        }


    }
    id:view
    width: 120
    Layout.fillHeight: true






    model: datalist

    delegate: items

    headerPositioning: ListView.OverlayHeader




}




