import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
Window {
    visible: true
    property int margin: 20
    width: mainlay.implicitWidth + margin
    height: mainlay.implicitHeight + margin
    minimumWidth: mainlay.Layout.minimumWidth + 2 * margin
    minimumHeight: mainlay.Layout.minimumHeight + 2 * margin

    title: qsTr("Slide Button")
    RowLayout{
        id:mainlay
        anchors.fill: parent
        spacing: 30
        opacity: 0.6

        DropBtn {
            id:drpOne
            colorKey: "#2fbc00"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight:  110
            Layout.margins: margin
            Layout.preferredWidth: 110

            Text {
                id: name
                text: qsTr("ON")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 25
                color: "white"

            }


        }
        DragBtn {
            id:drg
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight:  110
            Layout.preferredWidth: 110
            colorKey: "lightgray"
            Layout.margins: margin

        }

        DropBtn {
            id:drpZero
            colorKey: "#FF0000"
            Layout.preferredHeight:  110
            Layout.preferredWidth: 110
            Layout.margins: margin

            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: txtdrp2
                text: qsTr("OFF")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 25
                color: "white"

            }

        }


    }
}
