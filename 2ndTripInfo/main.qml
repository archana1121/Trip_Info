// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 10

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "#000000"
//                 font.bold: true
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 110
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150  // Made the progress bar shorter
//                 height: 8  // Made the progress bar thinner
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15  // Made the ends more circular
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 150

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius  // Match the radius of the progress bar
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }



//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"After Refuelling"

//                             Layout.alignment:Qt.AlignHCenter

//                         }

//                         RowLayout {
//                             Layout.alignment: Qt.AlignTop
//                             spacing: 150
//                             Text {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: distanceText1
//                                 text: "100.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 65
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText1
//                                 text: "200.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 138
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText1
//                                 text: "50.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout
//                     {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"Trip A"

//                             Layout.alignment:Qt.AlignHCenter

//                         }
//                         RowLayout {
//                             spacing: 150
//                             Layout.alignment: Qt.AlignTop

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }

//                             Text {
//                                 id: distanceText2
//                                 text: "100"
//                                 Layout.fillWidth: true
//                                 color: "red" //
//                             }

//                         }
//                         RowLayout {
//                             spacing: 65
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText2
//                                 text: "250.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 138
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText2
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             spacing: 150
//                             Label {
//                                 text: "from"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedTextmm
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }

//                         RowLayout {
//                             spacing: 150
//                             Label {
//                                 text: "to"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedTextmmm
//                                 text: "60.00"
//                                 Layout.fillWidth: true
//                             }
//                         }

//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text{
//                             text:"Trip A"

//                             Layout.alignment:Qt.AlignHCenter

//                         }
//                         RowLayout {
//                             Layout.alignment: Qt.AlignTop
//                             spacing: 150
//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: distanceText3
//                                 text: "200.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: energyText3
//                                 text: "300.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                         RowLayout {
//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Text {
//                                 id: speedText3
//                                 text: "70.00"
//                                 Layout.fillWidth: true
//                             }
//                         }
//                     }

//                     Timer {
//                         id: tripBTimer
//                         interval: 5000 * 1000 // 5000 seconds
//                         repeat: false
//                         onTriggered: {
//                             let avgSpeed = parseFloat(speedText2.text);
//                             let timeInHours = 5000 / 3600; // convert seconds to hours
//                             let distance = avgSpeed * timeInHours;
//                             distanceText2.text = distance.toFixed(2);

//                         }
//                     }

//                     Timer {
//                         id: tripCTimer
//                         interval: 1000 // 1 second
//                         repeat: true
//                         running: false
//                         onTriggered: {
//                             let currentDistance = parseFloat(distanceText3.text);
//                             distanceText3.text = (currentDistance + 1).toFixed(2);
//                             if (tripCTimer.interval * tripCTimer.triggeredCount >= 60000) { // Stop after 60 seconds
//                                 tripCTimer.stop();
//                             }
//                         }
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Button {
//                 text: "Reset"
//                 font.pixelSize: 20
//                 Layout.alignment: Qt.AlignHCenter
//                 onClicked: {
//                     switch(view.currentIndex) {
//                     case 0:
//                         distanceText1.text = "0.00"
//                         energyText1.text = "0.00"
//                         speedText1.text = "0.00"
//                         break;
//                     case 1:
//                         distanceText2.text = "0.00"
//                         energyText2.text = "0.00"
//                         speedText2.text = "0.00"
//                         tripBTimer.start();
//                         break;
//                     case 2:
//                         distanceText3.text = "0.00"
//                         energyText3.text = "0.00"
//                         speedText3.text = "0.00"
//                         tripCTimer.start();
//                         break;
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             PageIndicator {
//                 id: indicator
//                 count: view.count
//                 currentIndex: view.currentIndex
//                 anchors.horizontalCenter: parent.horizontalCenter
//             }
//         }
//     }
// }





// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 10

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "#000000"
//                 font.bold: true
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 110
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 150

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText1
//                                 text: "100.00"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText1
//                                 text: "200.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText1
//                                 text: "50.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText1
//                                 text: "Pune"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText1
//                                 text: "Nasik"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText2
//                                 text: "100.00"
//                                 color: "red"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText2
//                                 text: "250.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText2
//                                 text: "60.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText2
//                                 text: "Mumbai"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText2
//                                 text: "Goa"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         Text {
//                             text: "Trip C"
//                             Layout.alignment: Qt.AlignHCenter
//                         }

//                         GridLayout {
//                             columns: 3
//                             rowSpacing: 10
//                             columnSpacing: 5

//                             Label {
//                                 text: "Distance"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: distanceText3
//                                 text: "200.00"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: energyText3
//                                 text: "300.00"
//                             }

//                             Label {
//                                 text: "Avg speed"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: speedText3
//                                 text: "70.00"
//                             }

//                             Label {
//                                 text: "From"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: fromText3
//                                 text: "Delhi"
//                             }

//                             Label {
//                                 text: "To"
//                                 color: "#325F62"
//                                 font.bold: true
//                                 font.pixelSize: 20
//                             }
//                             Label {
//                                 text: ":"
//                                 font.bold: true
//                             }
//                             Text {
//                                 id: toText3
//                                 text: "Agra"
//                             }
//                         }
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             // Button {
//             //     text: "OK"
//             //     font.pixelSize: 20
//             //     Layout.alignment: Qt.AlignHCenter
//             //     onClicked: {
//             //         switch(view.currentIndex) {
//             //         case 0:
//             //             distanceText1.text = "0.00"
//             //             energyText1.text = "0.00"
//             //             speedText1.text = "0.00"
//             //             break;
//             //         case 1:
//             //             distanceText2.text = "0.00"
//             //             energyText2.text = "0.00"
//             //             speedText2.text = "0.00"
//             //             break;
//             //         case 2:
//             //             distanceText3.text = "0.00"
//             //             energyText3.text = "0.00"
//             //             speedText3.text = "0.00"
//             //             break;
//             //         }
//             //     }
//             // }

//             Item {

//                 anchors.top: parent.top
//                 anchors.topMargin: 300

//                 Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter

//                 RowLayout {
//                     width: parent.width
//                     spacing: 10
//                    // anchors.horizontalCenter: parent.horizontalCenter
//                     anchors.top: parent.top
//                     anchors.topMargin: 45
//                     //anchors.centerIn: parent




//                     Text {
//                         text: "Press OK to reset"
//                         font.pixelSize: 16
//                         color: "#325F62"
//                         Layout.alignment: Qt.AlignHCenter
//                     }

//                     Button {
//                         text: "OK"
//                         font.pixelSize: 20
//                         Layout.alignment: Qt.AlignCenter
//                         //Layout.alignment: Qt.AlignCenter
//                         onClicked: {
//                             switch(view.currentIndex) {
//                             case 0:
//                                 distanceText1.text = "0.00"
//                                 energyText1.text = "0.00"
//                                 speedText1.text = "0.00"
//                                 break;
//                             case 1:
//                                 distanceText2.text = "0.00"
//                                 energyText2.text = "0.00"
//                                 speedText2.text = "0.00"
//                                 break;
//                             case 2:
//                                 distanceText3.text = "0.00"
//                                 energyText3.text = "0.00"
//                                 speedText3.text = "0.00"
//                                 break;
//                             }
//                         }
//                     }
//                 }
//             }




//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             PageIndicator {
//                 id: indicator
//                 count: view.count
//                 currentIndex: view.currentIndex
//                 anchors.horizontalCenter: parent.horizontalCenter
//             }
//         }
//     }
// }






// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent
//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 100

//             Item {
//                 Layout.fillWidth: true
//                 height: 200
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 30
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 70

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 40
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         // Text {
//                         //     text: "Trip A"
//                         //     Layout.alignment: Qt.AlignHCenter
//                         //     color: "white"

//                         //     font.family: "Inter"
//                         // }

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter





//                             color: "white"

//                             font.pixelSize: 20

//                             font.family: "Inter"
//                         }




//                         GridLayout
//                         {
//                             columns: 4

//                             rowSpacing: 10
//                             columnSpacing: 15

//                             // Label {
//                             //     text: "From"
//                             //     color: "white"
//                             //     font.pixelSize: 15
//                             //     font.bold: true
//                             //     font.family: "Inter"
//                             // }

//                             Image {
//                                 id: img
//                                 source: "qrc:/frommmm.png"
//                                 sourceSize.height: 50
//                                 sourceSize.width: 50
//                             }
//                             Text {
//                                 id: distanceText2
//                                 text: "100.00 Km"
//                                 color: "white"
//                                 font.bold: true
//                                 font.family: "Inter"
//                                 font.pixelSize: 20
//                             }
//                             // Label {
//                             //     text: "To"
//                             //     color: "white"
//                             //     font.bold: true
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }
//                             Image {
//                                 id: img2
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 sourceSize.height: 50
//                                 sourceSize.width: 50
//                             }
//                             Text {
//                                 id: speedText2
//                                 text: "50.00 Km"
//                                 color: "white"
//                                 font.pixelSize: 20
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }



//                             // Label {
//                             //     text: "Distance"
//                             //     color: "white"
//                             //     font.bold: true
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }

//                             Image {
//                                 id: img3
//                                 source: "qrc:/distance.png"
//                                 sourceSize.height: 80
//                                 sourceSize.width: 80
//                             }
//                             Text {
//                                 id: energyText2
//                                 text: "200.00 Km"
//                                 color: "white"
//                                 font.pixelSize: 20
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }
//                             // Label {
//                             //     text: "Time"
//                             //     color: "white"
//                             //     font.bold: true
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }
//                             Image {
//                                 id: img32
//                                 source: "qrc:/timeee-removebg-preview.png"
//                                 sourceSize.height: 40
//                                 sourceSize.width: 40
//                             }
//                             Text {
//                                 id: fromText2
//                                 text: "1:32 h"
//                                 color: "white"
//                                 font.pixelSize: 20
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }

//                             // Label {
//                             //     text: "Avg Speed"
//                             //     color: "white"
//                             //     font.bold: true
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }

//                             Image {
//                                 id: img321
//                                 source: "qrc:/sp-removebg-preview.png"
//                                 sourceSize.height: 80
//                                 sourceSize.width: 80
//                             }

//                             Text {
//                                 id: toText2
//                                 text: "150 Km/Hr"
//                                 color: "white"
//                                 font.pixelSize: 20
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }
//                             // Label{
//                             //     text:  "Energy Consumed"
//                             //     color: "white"
//                             //     font.bold: true
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }

//                             Image {
//                                 id: img3213
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 sourceSize.height: 50
//                                 sourceSize.width: 50
//                             }
//                             Text {
//                                 id: toText2x
//                                 text: "1000 Kwh"
//                                 color: "white"
//                                 font.pixelSize: 20
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter




//                             color: "white"

//                             font.pixelSize: 20

//                             font.family: "Inter"
//                         }

//                         GridLayout
//                         {
//                             columns: 4
//                             rowSpacing: 10
//                             columnSpacing: 40

//                             Label {
//                                 text: "From"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: distanceText22
//                                 text: "100.00 Km"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                             Label {
//                                 text: "To"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: speedText22
//                                 text: "50.00 Km"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }

//                             Label {
//                                 text: "Distance"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: energyText22
//                                 text: "200.00 Km"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                             Label {
//                                 text: "Time"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: fromText22
//                                 text: "1:32 h"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }

//                             Label {
//                                 text: "Avg Speed"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: toText22
//                                 text: "150 Km/Hr"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                             Label{
//                                 text:  "Energy Consumed"
//                                 color: "white"
//                                 font.pixelSize: 15
//                                 font.bold: true
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: toText2xd
//                                 text: "1000 Kwh"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 20
//                         }

//                         GridLayout {
//                             columns: 4
//                             rowSpacing: 10
//                             columnSpacing: 20

//                             Label {
//                                 text: "Distance"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: distanceText3
//                                 text: "100.00 "
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                             Label {
//                                 text: "Avg speed"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: speedText3
//                                 text: "50.00"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }

//                             Label {
//                                 text: "Energy consumed"
//                                 color: "white"
//                                 font.bold: true
//                                 font.pixelSize: 15
//                                 font.family: "Inter"
//                             }
//                             Text {
//                                 id: energyText3
//                                 text: "200.00"
//                                 color: "white"
//                                 font.family: "Inter"
//                             }
//                             // Label {
//                             //     text: "From"
//                             //     color: "white"
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }
//                             // Text {
//                             //     id: fromText3
//                             //     text: "Pune"
//                             //     color: "white"
//                             //     font.family: "Inter"
//                             // }

//                             // Label {
//                             //     text: "To"
//                             //     color: "white"
//                             //     font.pixelSize: 15
//                             //     font.family: "Inter"
//                             // }
//                             // Text {
//                             //     id: toText3
//                             //     text: "Nasik"
//                             //     color: "white"
//                             //     font.family: "Inter"
//                             // }
//                         }
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 20
//             }

//             RoundButton {
//                 text: "OK"
//                 font.pixelSize: 2
//                 Layout.alignment: Qt.AlignCenter

//                 onClicked: {
//                     switch(view.currentIndex) {
//                     case 0:
//                         distanceText1.text = "0.00"
//                         energyText1.text = "0.00"
//                         speedText1.text = "0.00"
//                         toText1.text = "-"
//                         fromText1.text = "-"
//                         break
//                     case 1:
//                         distanceText2.text = "0.00"
//                         energyText2.text = "0.00"
//                         speedText2.text = "0.00"
//                         toText2.text = "-"
//                         fromText2.text = "-"
//                         break


//                     case 2:
//                         distanceText3.text = "0.00"
//                         energyText3.text = "0.00"
//                         speedText3.text = "0.00"
//                         toText3.text="-"
//                         fromText3.text="-"
//                         break;
//                     }
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 10
//             }

//             PageIndicator {
//                 id: indicator
//                 count: view.count
//                 currentIndex: view.currentIndex
//                 anchors.horizontalCenter: parent.horizontalCenter
//             }
//         }
//     }
// }






// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent
//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 100

//             Item {
//                 Layout.fillWidth: true
//                 height: 200
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 30
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 70

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 40
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: img
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText2
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.bold: true
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText2
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText2
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText2
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText2
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2x
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: imgB1
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText22
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText22
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText22
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText22
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText22
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2xd
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 20
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: imgC1
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText223
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText223
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText223
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText223
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText223
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2xdf
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.family: "Inter"
//                                 }
//                             }
//                         }
//                     }
//                 }
//             }
//         }
//     }
// }





// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     Rectangle {
//         id: root
//         anchors.fill: parent
//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 100

//             Item {
//                 Layout.fillWidth: true
//                 height: 200
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 30
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 150
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 70

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 40
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: img
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText2
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.bold: true
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText2
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText2
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText2
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText2
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: img3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2x
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.pixelSize: 20
//                                     font.bold: true
//                                     font.family: "Inter"
//                                 }
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: imgB1
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText22
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText22
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText22
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText22
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText22
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgB3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2xd
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 20
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 15

//                             RowLayout {
//                                 Image {
//                                     id: imgC1
//                                     source: "qrc:/frommmm.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: distanceText223
//                                     text: "100.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC2
//                                     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: speedText223
//                                     text: "50.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC3
//                                     source: "qrc:/distance.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: energyText223
//                                     text: "200.00 Km"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC32
//                                     source: "qrc:/timeee-removebg-preview.png"
//                                     sourceSize.height: 40
//                                     sourceSize.width: 40
//                                 }
//                                 Text {
//                                     id: fromText223
//                                     text: "1:32 h"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC321
//                                     source: "qrc:/sp-removebg-preview.png"
//                                     sourceSize.height: 80
//                                     sourceSize.width: 80
//                                 }
//                                 Text {
//                                     id: toText223
//                                     text: "150 Km/Hr"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }

//                             RowLayout {
//                                 Image {
//                                     id: imgC3213
//                                     source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                     sourceSize.height: 50
//                                     sourceSize.width: 50
//                                 }
//                                 Text {
//                                     id: toText2xdf
//                                     text: "1000 Kwh"
//                                     color: "white"
//                                     font.family: "Inter"
//                                     font.pixelSize: 20
//                                 }
//                             }
//                         }
//                     }
//                 }
//             }
//         }
//     }
// }







/*import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 529
    height: 409
    visible: true
    title: qsTr("Trip Information")

    Rectangle {
        id: root
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { color: "#242A2F"; position: 0.0 }
            GradientStop { color: "#2A393E"; position: 0.30 }
            GradientStop { color: "#325F62"; position: 0.45 }
            GradientStop { color: "#325F62"; position: 0.55 }
            GradientStop { color: "#2A393E"; position: 0.70 }
            GradientStop { color: "#242A2F"; position: 1.00 }
        }

        focus: true
        Keys.onLeftPressed: {
            if (view.currentIndex > 0) {
                view.currentIndex--
            }
        }
        Keys.onRightPressed: {
            if (view.currentIndex < view.count - 1) {
                view.currentIndex++
            }
        }

        ColumnLayout {
            anchors.fill: parent
            spacing: 100

            Item {
                Layout.fillWidth: true
                height: 200
            }

            Text {
                id: text
                text: "Trip Info"
                color: "white"
                font.family: "Inter"
                font.pointSize: 20
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle {
                id: progressBar
                width: 150
                height: 8
                color: "transparent"
                border.color: "black"
                border.width: 3
                radius: 15
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 70

                Rectangle {
                    id: progressFill
                    width: progressBar.width * (view.currentIndex + 1) / view.count
                    height: progressBar.height
                    radius: progressBar.radius
                    color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
                }
            }

            Item {
                Layout.fillWidth: true
                height: 40
            }

            SwipeView {
                id: view
                currentIndex: 0
                anchors.fill: parent
                focus: true
                onCurrentIndexChanged: {
                    progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        Text {
                            text: "Trip A"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.pixelSize: 20
                            font.family: "Inter"
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 10
                            columnSpacing: 70

                            RowLayout {
                                spacing:20
                                Image {
                                    id: img
                                    source: "qrc:/frommmm.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: distanceText2
                                    text: "100.00 Km"
                                    color: "white"
                                    font.bold: true
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                spacing: 20
                                Image {
                                    id: img2
                                    source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: speedText2
                                    text: "50.00 Km"
                                    color: "white"
                                    font.pixelSize: 20
                                    font.bold: true
                                    font.family: "Inter"
                                }
                            }

                            RowLayout {
                                 spacing: 0
                                Image {
                                    id: img3
                                    source: "qrc:/distance.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: energyText2
                                    text: "200.00 Km"
                                    color: "white"
                                    font.pixelSize: 20
                                    font.bold: true
                                    font.family: "Inter"
                                }
                            }

                            RowLayout {
                                Image {
                                    id: img32
                                    source: "qrc:/timeee-removebg-preview.png"
                                    sourceSize.height: 40
                                    sourceSize.width: 40
                                }
                                Text {
                                    id: fromText2
                                    text: "1:32 h"
                                    color: "white"
                                    font.pixelSize: 20
                                    font.bold: true
                                    font.family: "Inter"
                                }
                            }

                            RowLayout {
                                Image {
                                    id: img321
                                    source: "qrc:/sp-removebg-preview.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: toText2
                                    text: "150 Km/Hr"
                                    color: "white"
                                    font.pixelSize: 20
                                    font.bold: true
                                    font.family: "Inter"
                                }
                            }

                            RowLayout {
                                Image {
                                    id: img3213
                                    source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: toText2x
                                    text: "1000 Kwh"
                                    color: "white"
                                    font.pixelSize: 20
                                    font.bold: true
                                    font.family: "Inter"
                                }
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        Text {
                            text: "Trip B"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.pixelSize: 20
                            font.family: "Inter"
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 10
                            // columnSpacing: 15
                            columnSpacing: 70

                            RowLayout {
                                Image {
                                    id: imgB1
                                    source: "qrc:/frommmm.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: distanceText22
                                    text: "100.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgB2
                                    source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: speedText22
                                    text: "50.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgB3
                                    source: "qrc:/distance.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: energyText22
                                    text: "200.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgB32
                                    source: "qrc:/timeee-removebg-preview.png"
                                    sourceSize.height: 40
                                    sourceSize.width: 40
                                }
                                Text {
                                    id: fromText22
                                    text: "1:32 h"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgB321
                                    source: "qrc:/sp-removebg-preview.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: toText22
                                    text: "150 Km/Hr"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgB3213
                                    source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: toText2xd
                                    text: "1000 Kwh"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        anchors.centerIn: parent
                        spacing: 25

                        Text {
                            text: "After Refuelling"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.family: "Inter"
                            font.pixelSize: 20
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 10
                            columnSpacing: 20

                            RowLayout {
                                Image {
                                    id: imgC1
                                    source: "qrc:/frommmm.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: distanceText
                                    text: "100.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgC2
                                    source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: speedText
                                    text: "50.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgC3
                                    source: "qrc:/distance.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: energyText
                                    text: "200.00 Km"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgC32
                                    source: "qrc:/timeee-removebg-preview.png"
                                    sourceSize.height: 40
                                    sourceSize.width: 40
                                }
                                Text {
                                    id: fromText
                                    text: "1:32 h"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgC321
                                    source: "qrc:/sp-removebg-preview.png"
                                    sourceSize.height: 80
                                    sourceSize.width: 80
                                }
                                Text {
                                    id: toText
                                    text: "150 Km/Hr"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }

                            RowLayout {
                                Image {
                                    id: imgC3213
                                    source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                    sourceSize.height: 50
                                    sourceSize.width: 50
                                }
                                Text {
                                    id: toTextx
                                    text: "1000 Kwh"
                                    color: "white"
                                    font.family: "Inter"
                                    font.pixelSize: 20
                                }
                            }
                        }
                    }
                }
            }

            Button {
                id: nextButton
                text: qsTr("Next")
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: 40
                font.pixelSize: 20
                onClicked: {
                    if (*//*view.currentIndex < view.count - 1) {*/
//                         view.currentIndex++
//                     }
//                 }
//             }
//         }
//     }
// }








// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 500
//     height: 500
//     visible: true
//     title: qsTr("Trip Information")


//     Rectangle {
//         id: root
//         anchors.fill: parent
//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 100

//             Item {
//                 Layout.fillWidth: true
//                 height: 200
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 80
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 170
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 anchors.top: parent.top
//                 anchors.topMargin: 125

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 40
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 70

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: "Pune"
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: "Nagpur"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: "200.00 Km"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: "1:32 h"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: "150 Km/Hr"
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: "1000 Kwh"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                             font.bold:true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 70

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: "Pune"
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: "Nagpur"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: "200.00 Km"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: "1:32 h"
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: "150 Km/Hr"
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: "1000 Kwh"
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 20
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 20

//                             // RowItem {
//                             //     source: "qrc:/frommmm.png"
//                             //     textValue: "100"
//                             // }

//                             // RowItem {
//                             //     source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                             //     textValue: "50.00 Km"
//                             // }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: "200.00 Km"
//                             }

//                             // RowItem {
//                             //     source: "qrc:/timeee-removebg-preview.png"
//                             //     textValue: "1:32 h"
//                             // }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: "150 Km/Hr"
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: "1000 Kwh"
//                             }
//                         }
//                     }
//                 }
//             }

//             RoundButton {
//                 id: buttonokay
//                 text: qsTr("OK")
//                 anchors.bottom: parent.bottom
//                 anchors.bottomMargin: 100
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 width: 200
//                 height: 40
//                 font.pixelSize: 20
//                 onClicked: {
//                     if (view.currentIndex < view.count - 1) {
//                         view.currentIndex++
//                     }
//                 }
//             }
//         }
//     }
// }





// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     property string from: "Pune"
//     property string to: "Nagpur"
//     //property alias distance: "100"
//     property  string distance:"100.00"
//     property string speed: "100km/hr"
//     property string fuel: "100kwh"
//     property string time: "1:32h"

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent

//             spacing: 100

//             Item {
//                 //Layout.fillWidth: true
//                 Layout.fillWidth:true
//                 Layout.fillHeight: true
//                 height: 200
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 anchors.top: parent.top
//                 anchors.topMargin: 80
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 170
//                 height: 8
//                 // Layout.fillWidth:true
//                 // Layout.fillHeight: true
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                anchors.horizontalCenter: parent.horizontalCenter
//                //   Layout.alignment: Qt.AlignBottom
//                //  // Layout.alignment: Qt.AlignBottom
//                 anchors.top: parent.top
//                  //Layout.bottomMargin: 200

//                 // Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
//                 //    Layout.bottomMargin:
//                // Layout.topMargin: 10
//                 //Layout.leftMargin: 700




//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 40
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 anchors.fill: parent
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripA
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 70

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from

//                                 id: fromText1
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue:  distance
//                                 id: distanceText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id:timmer1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText1
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText1
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripB
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 20
//                             font.family: "Inter"
//                             font.bold:true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 70

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from
//                                 id: fromText2
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue:  distance
//                                 id: distanceText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id:timmer2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText2
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText2
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripC
//                         anchors.centerIn: parent
//                         spacing: 25

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 20
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 10
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue:  distance
//                                 id: distanceText3
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText3
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText3
//                             }
//                         }
//                     }
//                 }
//             }

//             RoundButton {
//                 text: "OK"
//                 // font.pixelSize: 20
//                 // Layout.alignment: Qt.AlignCenter
//                 anchors.bottom: parent.bottom
//                 anchors.bottomMargin: 100
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 width: 200
//                 height: 40
//                 font.pixelSize: 20

//                 onClicked: {
//                     switch(view.currentIndex) {
//                     case 0:
//                         distanceText1.textValue = "0.00"
//                         energyText1.textValue = "0.00"
//                         speedText1.textValue = "0.00"
//                         toText1.textValue = "-"
//                         fromText1.textValue = "-"
//                         timmer1.textValue="0.00"
//                         break
//                     case 1:
//                         distanceText2.textValue = "0.00"
//                         energyText2.textValue = "0.00"
//                         speedText2.textValue = "0.00"
//                         toText2.textValue = "-"
//                         fromText2.textValue = "-"
//                         timmer2.textValue="0.00"
//                         break
//                     case 2:
//                         distanceText3.textValue = "0.00"
//                         energyText3.textValue = "0.00"
//                         speedText3.textValue = "0.00"
//                         toText3.textValue = "-"
//                         fromText3.textValue = "-"
//                         break
//                     }
//                 }
//             }
//         }
//     }
// }




// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     property string from: "Pune"
//     property string to: "Nagpur"
//     property string distance: "100.00"
//     property string speed: "100km/hr"
//     property string fuel: "100kwh"
//     property string time: "1:32h"

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.fill: parent
//             spacing: 10
//            // Layout.alignment:Qt.AlignTop

//             Item {
//                 Layout.fillWidth: true
//                 Layout.fillHeight: true
//                 height: 20
//             }

//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 170
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 Layout.alignment: Qt.AlignHCenter
//                 Layout.bottomMargin: 10

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 10
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 Layout.fillWidth: true
//                 Layout.fillHeight: true
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripA
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 16
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from
//                                 id: fromText1
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id: timmer1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText1
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText1
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripB
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 16
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from
//                                 id: fromText2
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id: timmer2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText2
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText2
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripC
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 16
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText3
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText3
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText3
//                             }
//                         }
//                     }
//                 }
//             }

//             RoundButton {
//                 text: "OK"
//                 anchors.bottom: parent.bottom
//                 anchors.bottomMargin: 20
//                 anchors.horizontalCenter: parent.horizontalCenter
//                 width: 100
//                 height: 30
//                 font.pixelSize: 16

//                 onClicked: {
//                     switch (view.currentIndex) {
//                     case 0:
//                         distanceText1.textValue = "0.00"
//                         energyText1.textValue = "0.00"
//                         speedText1.textValue = "0.00"
//                         toText1.textValue = "-"
//                         fromText1.textValue = "-"
//                         timmer1.textValue = "0.00"
//                         break
//                     case 1:
//                         distanceText2.textValue = "0.00"
//                         energyText2.textValue = "0.00"
//                         speedText2.textValue = "0.00"
//                         toText2.textValue = "-"
//                         fromText2.textValue = "-"
//                         timmer2.textValue = "0.00"
//                         break
//                     case 2:
//                         distanceText3.textValue = "0.00"
//                         energyText3.textValue = "0.00"
//                         speedText3.textValue = "0.00"
//                         toText3.textValue = "-"
//                         fromText3.textValue = "-"
//                         break
//                     }
//                 }
//             }
//         }
//     }
// }





// import QtQuick 2.15
// import QtQuick.Controls 2.15
// import QtQuick.Layouts 1.15

// Window {
//     width: 529
//     height: 409
//     visible: true
//     title: qsTr("Trip Information")

//     property string from: "Pune"
//     property string to: "Nagpur"
//     property string distance: "100.00"
//     property string speed: "100km/hr"
//     property string fuel: "100kwh"
//     property string time: "1:32h"

//     Rectangle {
//         id: root
//         anchors.fill: parent

//         gradient: Gradient {
//             orientation: Gradient.Horizontal
//             GradientStop { color: "#242A2F"; position: 0.0 }
//             GradientStop { color: "#2A393E"; position: 0.30 }
//             GradientStop { color: "#325F62"; position: 0.45 }
//             GradientStop { color: "#325F62"; position: 0.55 }
//             GradientStop { color: "#2A393E"; position: 0.70 }
//             GradientStop { color: "#242A2F"; position: 1.00 }
//         }

//         focus: true
//         Keys.onLeftPressed: {
//             if (view.currentIndex > 0) {
//                 view.currentIndex--
//             }
//         }
//         Keys.onRightPressed: {
//             if (view.currentIndex < view.count - 1) {
//                 view.currentIndex++
//             }
//         }

//         ColumnLayout {
//             anchors.centerIn: parent
//             spacing: 10
//             width: parent.width * 0.8 // Adjust width as needed
//             height: parent.height * 0.8 // Adjust height as needed


//             Text {
//                 id: text
//                 text: "Trip Info"
//                 color: "white"
//                 font.family: "Inter"
//                 font.pointSize: 20
//                 Layout.alignment: Qt.AlignHCenter
//             }

//             Rectangle {
//                 id: progressBar
//                 width: 170
//                 height: 8
//                 color: "transparent"
//                 border.color: "black"
//                 border.width: 3
//                 radius: 15
//                 Layout.alignment: Qt.AlignHCenter
//                 Layout.bottomMargin: 10

//                 Rectangle {
//                     id: progressFill
//                     width: progressBar.width * (view.currentIndex + 1) / view.count
//                     height: progressBar.height
//                     radius: progressBar.radius
//                     color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
//                 }
//             }

//             Item {
//                 Layout.fillWidth: true
//                 height: 10
//             }

//             SwipeView {
//                 id: view
//                 currentIndex: 0
//                 Layout.fillWidth: true
//                 Layout.fillHeight: true
//                 focus: true
//                 onCurrentIndexChanged: {
//                     progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripA
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "Trip A"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 16
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 80

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from
//                                 id: fromText1
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id: timmer1
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText1
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText1
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripB
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "Trip B"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.pixelSize: 16
//                             font.family: "Inter"
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/frommmm.png"
//                                 textValue: from
//                                 id: fromText2
//                             }

//                             RowItem {
//                                 source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
//                                 textValue: to
//                                 id: toText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
//                                 textValue: time
//                                 id: timmer2
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText2
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText2
//                             }
//                         }
//                     }
//                 }

//                 Item {
//                     ColumnLayout {
//                         id: tripC
//                         anchors.centerIn: parent
//                         spacing: 10

//                         Text {
//                             text: "After Refuelling"
//                             Layout.alignment: Qt.AlignHCenter
//                             color: "white"
//                             font.family: "Inter"
//                             font.pixelSize: 16
//                             font.bold: true
//                         }

//                         GridLayout {
//                             columns: 2
//                             rowSpacing: 5
//                             columnSpacing: 20

//                             RowItem {
//                                 source: "qrc:/icons8-distance-64-removebg-preview.png"
//                                 textValue: distance
//                                 id: distanceText3
//                             }

//                             RowItem {
//                                 source: "qrc:/icons8-speed-48-removebg-preview.png"
//                                 textValue: speed
//                                 id: speedText3
//                             }

//                             RowItem {
//                                 source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
//                                 textValue: fuel
//                                 id: energyText3
//                             }
//                         }
//                     }
//                 }
//             }

//             RoundButton {
//                 text: "OK"
//                 Layout.alignment: Qt.AlignBottom
//                // anchors.bottom: parent.bottom
//                // anchors.bottomMargin: 20
//                 Layout.bottomMargin: 20
//                 Layout.leftMargin: 200
//                 //anchors.horizontalCenter: parent.horizontalCenter

//                 width: 100
//                 height: 30
//                 font.pixelSize: 16

//                 onClicked: {
//                     switch (view.currentIndex) {
//                     case 0:
//                         distanceText1.textValue = "0.00"
//                         energyText1.textValue = "0.00"
//                         speedText1.textValue = "0.00"
//                         toText1.textValue = "-"
//                         fromText1.textValue = "-"
//                         timmer1.textValue = "0.00"
//                         break
//                     case 1:
//                         distanceText2.textValue = "0.00"
//                         energyText2.textValue = "0.00"
//                         speedText2.textValue = "0.00"
//                         toText2.textValue = "-"
//                         fromText2.textValue = "-"
//                         timmer2.textValue = "0.00"
//                         break
//                     case 2:
//                         distanceText3.textValue = "0.00"
//                         energyText3.textValue = "0.00"
//                         speedText3.textValue = "0.00"
//                         toText3.textValue = "-"
//                         fromText3.textValue = "-"
//                         break
//                     }
//                 }
//             }
//         }
//     }
//}






import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 529
    height: 409
    visible: true
    title: qsTr("Trip Information")

    property string from: "Pune"
    property string to: "Nagpur"
    property string distance: "100.00"
    property string speed: "100km/hr"
    property string fuel: "100kwh"
    property string time: "1:32h"

    Rectangle {
        id: root
        anchors.fill: parent

        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { color: "#242A2F"; position: 0.0 }
            GradientStop { color: "#2A393E"; position: 0.30 }
            GradientStop { color: "#325F62"; position: 0.45 }
            GradientStop { color: "#325F62"; position: 0.55 }
            GradientStop { color: "#2A393E"; position: 0.70 }
            GradientStop { color: "#242A2F"; position: 1.00 }
        }

        focus: true
        Keys.onLeftPressed: {
            if (view.currentIndex > 0) {
                view.currentIndex--
            }
        }
        Keys.onRightPressed: {
            if (view.currentIndex < view.count - 1) {
                view.currentIndex++
            }
        }

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 10
            width: parent.width * 0.8 // Adjust width as needed
            height: parent.height * 0.8 // Adjust height as needed

            Text {
                id: text
                text: "Trip Info"
                color: "white"
                font.family: "Inter"
                font.pointSize: parent.width / 25
                Layout.alignment: Qt.AlignHCenter
            }

            // Rectangle {
            //     id: progressBar
            //     width: parent.width /2
            //     height: parent.height/2
            //     color: "transparent"
            //     border.color: "black"
            //     border.width: 3
            //     radius: height / 2
            //     Layout.alignment: Qt.AlignHCenter
            //     Layout.bottomMargin: 10

            //     Rectangle {
            //         id: progressFill
            //         width: progressBar.width * (view.currentIndex + 1) / view.count
            //         height: progressBar.height
            //         radius: progressBar.radius
            //         color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
            //     }
            // }


            Rectangle {
                id: progressBar
                width: 170
                height: 8
                color: "transparent"
                border.color: "black"
                border.width: 1
                radius: height / 2
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 10

                Rectangle {
                    id: progressFill
                    width: progressBar.width * (view.currentIndex + 1) / view.count
                    height: progressBar.height
                    radius: progressBar.radius
                    color: progressFill.width < progressBar.width / 3 ? "lightgreen" : (progressFill.width < 2 * progressBar.width / 3 ? "yellowgreen" : "green")
                }
            }

            SwipeView {
                id: view
                currentIndex: 0
                Layout.fillWidth: true
                Layout.fillHeight: true
                focus: true
                onCurrentIndexChanged: {
                    progressFill.width = progressBar.width * (view.currentIndex + 1) / view.count
                }


                Item {
                    ColumnLayout {
                        id: tripA
                        anchors.centerIn: parent
                        spacing: 10

                        Text {
                            text: "Trip A"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.pixelSize: parent.width / 20
                            font.family: "Inter"
                            font.bold: true
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 50

                            RowItem {
                                source: "qrc:/frommmm.png"
                                textValue: from
                                id: fromText1
                            }

                            RowItem {
                                source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                textValue: to
                                id: toText1
                            }

                            RowItem {
                                source: "qrc:/icons8-distance-64-removebg-preview.png"
                                textValue: distance
                                id: distanceText1
                            }

                            RowItem {
                                source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
                                textValue: time
                                id: timmer1
                            }

                            RowItem {
                                source: "qrc:/icons8-speed-48-removebg-preview.png"
                                textValue: speed
                                id: speedText1
                            }

                            RowItem {
                                source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                textValue: fuel
                                id: energyText1
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        id: tripB
                        anchors.centerIn: parent
                        spacing: 10

                        Text {
                            text: "Trip B"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.pixelSize: parent.width / 20
                            font.family: "Inter"
                            font.bold: true
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 40

                            RowItem {
                                source: "qrc:/frommmm.png"
                                textValue: from
                                id: fromText2
                            }

                            RowItem {
                                source: "qrc:/images-imageonline.co-2508766-removebg-preview.png"
                                textValue: to
                                id: toText2
                            }

                            RowItem {
                                source: "qrc:/icons8-distance-64-removebg-preview.png"
                                textValue: distance
                                id: distanceText2
                            }

                            RowItem {
                                source: "qrc:/icons8-timer-48__1_-removebg-preview.png"
                                textValue: time
                                id: timmer2
                            }

                            RowItem {
                                source: "qrc:/icons8-speed-48-removebg-preview.png"
                                textValue: speed
                                id: speedText2
                            }

                            RowItem {
                                source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                textValue: fuel
                                id: energyText2
                            }
                        }
                    }
                }

                Item {
                    ColumnLayout {
                        id: tripC
                        anchors.centerIn: parent
                        spacing: 10

                        Text {
                            text: "After Refuelling"
                            Layout.alignment: Qt.AlignHCenter
                            color: "white"
                            font.family: "Inter"
                            font.pixelSize: parent.width / 20
                            font.bold: true
                        }

                        GridLayout {
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 40

                            RowItem {
                                source: "qrc:/icons8-distance-64-removebg-preview.png"
                                textValue: distance
                                id: distanceText3
                            }

                            RowItem {
                                source: "qrc:/icons8-speed-48-removebg-preview.png"
                                textValue: speed
                                id: speedText3
                            }

                            RowItem {
                                source: "qrc:/fuell-imageonline.co-9930331-removebg-preview (1).png"
                                textValue: fuel
                                id: energyText3
                            }
                        }
                    }
                }
            }

            RoundButton {
                text: "OK"
                Layout.alignment: Qt.AlignBottom
                Layout.bottomMargin: parent.height * 0.05
                Layout.leftMargin: parent.width * 0.50
                width: parent.width * 0.2
                height: parent.height * 0.1
                font.pixelSize: parent.width / 30

                onClicked: {
                    switch (view.currentIndex) {
                    case 0:
                        distanceText1.textValue = "0.00"
                        energyText1.textValue = "0.00"
                        speedText1.textValue = "0.00"
                        toText1.textValue = "-"
                        fromText1.textValue = "-"
                        timmer1.textValue = "0.00"
                        break
                    case 1:
                        distanceText2.textValue = "0.00"
                        energyText2.textValue = "0.00"
                        speedText2.textValue = "0.00"
                        toText2.textValue = "-"
                        fromText2.textValue = "-"
                        timmer2.textValue = "0.00"
                        break
                    case 2:
                        distanceText3.textValue = "0.00"
                        energyText3.textValue = "0.00"
                        speedText3.textValue = "0.00"
                        toText3.textValue = "-"
                        fromText3.textValue = "-"
                        break
                    }
                }
            }
        }


    }
}

