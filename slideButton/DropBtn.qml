import QtQuick 2.0
import QtGraphicalEffects 1.0

DropArea {
    id: dragTarget

    property string colorKey
    property int radius: ( width / 4 ) - dropBtn.viewScale*4
    width: parent.width
    height: parent.height
    Rectangle {
        id: drpbrdr

        width: (dropBtn.width*1.2)
        height: width
        radius: width*0.5

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        border.color: colorKey
        border.width: dropBtn.width*0.1
        visible: false


}

    Rectangle{
        id:dropBtn
        width: parent.width<parent.height?parent.width:parent.height
        height: width
        color: colorKey
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 0.5*width
    }

    onDropped: {
        drpbrdr.visible = true
    }
    onPositionChanged: {
        drpbrdr.visible = false

    }
    onExited: {
        drpbrdr.visible = false

    }



}
