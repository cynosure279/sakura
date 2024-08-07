import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI
import "../global"

FluScrollablePage{
    launchMode: FluPageType.SingleTask

    anchors.fill: parent
    RowLayout{






        Projects{}


        GridView{
            Layout.fillWidth: true
            Layout.fillHeight: true
            header:Rectangle{
                width: parent.width
                height:30
                color: FluTheme.frameColor

                FluAutoSuggestBox{
                    anchors.horizontalCenter: parent.horizontalCenter


                property int num: 600
                iconSource: FluentIcons.Search
                placeholderText: "Search in "+ num +" plugins"
            }
            }

            ListModel{
                id:testM
                ListElement{
                    txt:"0"
                }
                ListElement{
                    txt:"1"
                }
                ListElement{
                    txt:"2"
                }
                ListElement{
                    txt:"3"
                }
                ListElement{
                    txt:"4"
                }
                ListElement{
                    txt:"5"
                }

            }

            Component{
                id:testD
                Item {
                    FluText{
                        width:50
                        height:30
                        text:txt
                    }
                }
            }
            delegate: testD
            model: testM
            width:parent.width
            height: parent.height




        }




    }

}



