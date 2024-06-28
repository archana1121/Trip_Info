import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout
{
    spacing: 20

    property string source: ""
    property string textValue: ""



    Image
    {
       sourceSize.height:  40
       sourceSize.width:  40
        source: parent.source
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
    }

    Text
    {
        text: parent.textValue
        color: "white"
        font.pixelSize: 15
        font.bold: true
        font.family: "Inter"
    }
}
