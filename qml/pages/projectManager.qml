import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI


FluScrollablePage{
    launchMode: FluPageType.SingleTask

    //anchors.fill: parent
    RowLayout{
        //anchors.fill: parent
        Layout.fillWidth: true
        Layout.fillHeight: true

        ListView{
            header: Row{
                FluAutoSuggestBox{
                    placeholderText: "project name"
                }
                FluIconButton{
                    iconSource: FluentIcons.Add
                    onClicked: {
                        FluRouter.navigate("/create")
                    }
                }
            }
            width: 120
            //height: parent.height-searchbox.height
            model: 5
            delegate: FluText{
                width:120
                height: 30
                text: "test"
            }

        }


        FluPage{
            launchMode: FluPageType.SingleTask
            width: parent.width-120
            height:parent.height
            Layout.fillHeight: true
            Layout.fillWidth: true


        }
    }
}


