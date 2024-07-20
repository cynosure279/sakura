import QtQuick 2.15
import FluentUI
import QtQuick.Controls
import QtQuick.Layouts

FluWindow{
    id:navigationWindow
    visible: true
    width:300
    height: 220
    launchMode: FluWindowType.SingleTask
    title: qsTr("Create Your Project")




    Component {
        id:pcText
        Item{
            ColumnLayout{
                anchors.centerIn: parent
                spacing: 10
                ColumnLayout{

                    spacing: 10
                    FluTextBox{
                        placeholderText: "project name"
                    }
                    FluTextBox{
                        placeholderText: "project path"
                    }
                }
                Row{
                    spacing: 10
                    FluFilledButton {
                        text: "back"
                        enabled: false
                        onClicked: stack.pop()
                    }
                    FluFilledButton {
                        text: "Next"
                        onClicked: stack.push(pcLists)



                    }
                }
            }}
    }


    Component {
        id:pcLists
        Item{

            ColumnLayout{
                spacing: 10
                anchors.centerIn: parent
                RowLayout{
                    FluGroupBox {
                        title: qsTr("adapters lists")


                        ColumnLayout {
                            spacing: 10
                            anchors.fill: parent
                            FluCheckBox { text: qsTr("test0") }
                            FluCheckBox { text: qsTr("test1") }

                        }
                    }
                    FluGroupBox {
                        title: qsTr("drivers lists")


                        ColumnLayout {
                            spacing: 10
                            anchors.fill: parent
                            FluCheckBox { text: qsTr("test0") }
                            FluCheckBox { text: qsTr("test1") }

                        }
                    }
                }

                Row{
                    spacing: 10
                    FluFilledButton {
                        text: "back"

                        onClicked: stack.pop()
                    }
                    FluFilledButton {
                        text: "Next"
                        onClicked: stack.push(pcSwitch)



                    }
                }
            }
        }
    }

    Component {
        id:pcSwitch
        Item{

            ColumnLayout{
                spacing: 10
                anchors.centerIn: parent
                FluToggleSwitch{
                    text: "install dependency immediately?"
                }
                FluToggleSwitch{
                    text:"create virtual environment?"
                }

                Row{
                    spacing: 10
                    FluFilledButton {
                        text: "back"

                        onClicked: stack.pop()
                    }
                    FluFilledButton {
                        text: "Next"
                        onClicked: stack.push(pcEnd)



                    }
                }
            }
        }
    }






    Component {
        id:pcEnd
        Item{

            Row{
                spacing: 10
                FluFilledButton {
                    text: "back"

                    onClicked: stack.pop()
                }
                FluFilledButton {
                    text:"Finsh"

                }
            }
        }


    }

    StackView {
        id:stack
        width: parent.width
        height: parent.height
        anchors.fill: parent
        initialItem: pcText

    }





}
