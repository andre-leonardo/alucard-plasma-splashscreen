import QtQuick

Rectangle {
    id: root
    color: "black"

    property int stage

    Item {
        id: content
        anchors.fill: parent
        opacity: 0

        AnimatedImage {
            id: alucard
            anchors.centerIn: parent
            source: "images/alucard.gif"
            asynchronous: true
            
            fillMode: Image.PreserveAspectFit
            // Makes the height take up 20% of the screen height, scaling proportionally on any monitor
            height: root.height * 0.20
        }
    }

    OpacityAnimator {
        id: introAnimation
        running: true
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}
