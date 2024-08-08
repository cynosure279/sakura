import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI
import "../global"

FluPage{
    launchMode: FluPageType.SingleTask



    anchors.fill: parent
    RowLayout{


        height:parent.height
        width: parent.width

        Projects{}


    }

}

