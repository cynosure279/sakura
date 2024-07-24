import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI
import "../global"

FluScrollablePage{
    launchMode: FluPageType.SingleTask

    //anchors.fill: parent
    RowLayout{
        spacing: 15




        Projects{
            Layout.fillWidth: true
            Layout.minimumWidth: 50
            Layout.preferredWidth: 100
            Layout.maximumWidth: 300
            Layout.minimumHeight: 150
        }



        Projects{
            Layout.fillWidth: true
            Layout.minimumWidth: 100
            Layout.preferredWidth: 200
            Layout.preferredHeight: 100

        }
    }
}


