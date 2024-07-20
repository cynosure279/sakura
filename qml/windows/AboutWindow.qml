import QtQuick 2.15
import QtQuick.Layouts



import FluentUI


FluWindow{
    visible: true
    width:400
    height: 300
    launchMode: FluWindowType.SingleTask
    title: "About"

    ColumnLayout{
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
                }
        spacing: 5


        RowLayout{
            Layout.topMargin: 10
            Layout.leftMargin: 15
            spacing: 14
            FluText{
                text: "Sakura"
                font: FluTextStyle.Title
            }
            FluText{
                text: "V0.1"
                font:FluTextStyle.Subtitle
            }

        }

    }

}
