import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI
import "../global"

FluScrollablePage{
    launchMode: FluPageType.SingleTask

    anchors.fill: parent
    RowLayout{
        Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
        Layout.fillWidth: true
        Layout.fillHeight: true

        Projects{
            datalist: ListModel{
                ListElement{
                    title:"test"
                    desc:"testdesc"
                }
            }
            route: "/create"
        }



        GridView{


            Component{
                id:items
                Item{

                    width: 300
                    height: 250
                    FluFrame{
                        radius: 8
                        width: 280
                        height: 235
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




            delegate: items

            model:ListModel{
                ListElement{
                    title:"test1"
                    desc:"txt1"
                }
                ListElement{
                    title:"test2"
                    desc:"txt2"
                }
                ListElement{
                    title:"test3"
                    desc:"txt3"
                }
                ListElement{
                    title:"test4"
                    desc:"txt4"
                }
            }



            width: parent.width-120
            height:parent.height
            Layout.fillHeight: true
            Layout.fillWidth: true


        }
    }
}


