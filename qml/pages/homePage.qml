
import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import FluentUI
import "../global"
import "../windows"

FluScrollablePage{
    launchMode: FluPageType.SingleTask
    header: Item{}

    ListModel{
        id: model_header
        ListElement{
            icon: ""
            title: qsTr("Projects")
            desc: qsTr("manage your projects.")
            url: ""
            clicked: function(model){
                Qt.openUrlExternally(model.url)
            }
        }
        ListElement{
            icon: ""
            title: qsTr("Plugins")
            desc: qsTr("manage your plugins")

            clicked: function(model){
                Qt.openUrlExternally(model.url)
            }
        }
        ListElement{
            icon: ""
            title: qsTr("Sakura")
            desc: qsTr("Sakura is a nonebot panel     with fluent design.")
            url:"https://github.com/cynosure279/sakura"

            clicked: function(model){
                Qt.openUrlExternally(model.url)

            }
        }
    }



    Item{
        Layout.fillWidth: true
        Layout.preferredHeight: 320
        Image {
            id: galleryBg
            fillMode:Image.PreserveAspectCrop
            anchors.fill: parent
            verticalAlignment: Qt.AlignTop
            sourceSize: Qt.size(960,640)
            source: "qrc:/res/images/bgl.png"
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
        Component{
            id:grallery
            Item{
                id: control
                width: 220
                height: 240
                FluShadow{
                    radius:5
                    anchors.fill: item_content
                }
                FluClip{
                    id:item_content
                    radius: [5,5,5,5]
                    width: 200
                    height: 220
                    anchors.centerIn: parent
                    FluAcrylic{
                        anchors.fill: parent
                        tintColor: FluTheme.dark ? Qt.rgba(0,0,0,1) : Qt.rgba(1,1,1,1)
                        target: galleryBg
                        tintOpacity: FluTheme.dark ? 0.8 : 0.9
                        blurRadius : 40
                        targetRect: Qt.rect(list.x-list.contentX+10+(control.width)*index,list.y+10,width,height)
                    }
                    Rectangle{
                        anchors.fill: parent
                        radius: 5
                        color:FluTheme.itemHoverColor
                        visible: item_mouse.containsMouse
                    }
                    Rectangle{
                        anchors.fill: parent
                        radius: 5
                        color:Qt.rgba(0,0,0,0.0)
                        visible: !item_mouse.containsMouse
                    }
                    ColumnLayout{
                        Image {
                            Layout.topMargin: 20
                            Layout.leftMargin: 20
                            Layout.preferredWidth: 50
                            Layout.preferredHeight: 50
                            source: model.icon
                        }
                        FluText{
                            text: model.title
                            font: FluTextStyle.Body
                            Layout.topMargin: 20
                            Layout.leftMargin: 20
                        }
                        FluText{
                            text: model.desc
                            Layout.topMargin: 5
                            Layout.preferredWidth: 160
                            Layout.leftMargin: 20
                            color: FluColors.Grey120
                            font.pixelSize: 12
                            font.family: FluTextStyle.family
                            wrapMode: Text.WrapAnywhere
                        }
                    }
                    FluIcon{
                        iconSource: FluentIcons.OpenInNewWindow
                        iconSize: 15
                        anchors{
                            bottom: parent.bottom
                            right: parent.right
                            rightMargin: 10
                            bottomMargin: 10
                        }
                    }
                    MouseArea{
                        id:item_mouse
                        anchors.fill: parent
                        hoverEnabled: true
                        onWheel:
                            (wheel)=>{
                                if (wheel.angleDelta.y > 0) scrollbar_header.decrease()
                                else scrollbar_header.increase()
                            }
                        onClicked: {
                            model.clicked(model)
                        }
                    }
                }
            }
        }

        ListView{
            id: list
            anchors{
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            orientation: ListView.Horizontal
            height: 240
            model: model_header
            header: Item{height: 10;width: 10}
            footer: Item{height: 10;width: 10}
            ScrollBar.horizontal: FluScrollBar{
                id: scrollbar_header
            }
            clip: false
            delegate: grallery
        }
    }






}
