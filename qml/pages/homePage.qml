
import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI
import "../global"


FluScrollablePage{
    launchMode: FluPageType.SingleTask
    header: Item{}
    Item{
        Layout.fillWidth: true
        Layout.preferredHeight: 320
        Image {
            id: bg
            fillMode:Image.PreserveAspectCrop
            anchors.fill: parent
            verticalAlignment: Qt.AlignTop
            sourceSize: Qt.size(960,640)
            source: "qrc:/res/images/bg.jpg"
        }

        FluText{
            text:qsTr("Welcome to Sakura!")
            font: FluTextStyle.TitleLarge
            anchors{
                top: parent.top
                left: parent.left
                topMargin: 20
                leftMargin: 20
            }
        }
    }
}
