import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: root
    property string colorKey
    property bool flagDropped: false
    Rectangle {
        id: drgbrdr

        width: parent.width<parent.height?parent.width:parent.height
        height: width
        radius: width*0.5

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        border.color: "darkgrey"
        border.width: 10


    }
    MouseArea {
        id: mouseArea

        anchors.fill: parent
        onReleased:
        {
            if(flagDropped)
            {
                if(drgBtn.Drag.target !== null )
                    parent =drgBtn.Drag.target
                else

                    parent = root
                flagDropped = !flagDropped
            }

        }
        drag.axis: Drag.XAxis
        drag.target: drgBtn
        Rectangle {
            id: drgBtn
            width: parent.width<parent.height?parent.width:parent.height
            height: width
            radius: width*0.5

            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            color: colorKey
            property bool dragActive: mouseArea.drag.active

            onDragActiveChanged: {
                if (dragActive) {
                    //drag started
                    flagDropped = true
                    Drag.start();
                } else {
                    //drag finished
                    Drag.drop();
                }
            }

            Drag.dragType: Drag.Automatic
            Drag.hotSpot.x: 20
            Drag.hotSpot.y: 20
            states: State {
                when: mouseArea.drag.active
                ParentChange { target: drgBtn; parent: root }
                AnchorChanges { target: drgBtn; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }
            }

        }

    }

}

