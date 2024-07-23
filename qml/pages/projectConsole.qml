import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI
import "../global"

FluScrollablePage{
    launchMode: FluPageType.SingleTask

    //anchors.fill: parent
    RowLayout{
        //anchors.fill: parent
        Layout.fillWidth: true
        Layout.fillHeight: true

        Projects{}



        FluPage{
            launchMode: FluPageType.SingleTask
            width: parent.width-120
            height:parent.height
            Layout.fillHeight: true
            Layout.fillWidth: true


        }
    }
}


