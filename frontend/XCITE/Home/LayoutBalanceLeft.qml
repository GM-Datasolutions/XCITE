import QtQuick 2.0
import QtQuick.Layouts 1.3

RowLayout {
    // See: https://stackoverflow.com/a/10031214
    property alias rightColumnComponent: rightColumn.data

    anchors.fill: parent
    Layout.preferredHeight: 432
    Layout.minimumHeight: 432
    spacing: layoutGridSpacing

    ColumnLayout {
        Layout.maximumWidth: 300
        Layout.alignment: Qt.AlignTop
        Layout.fillHeight: true
        spacing: layoutGridSpacing

        BalanceDiode {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        BalanceValueDiode {
            Layout.fillWidth: true
            Layout.preferredHeight: 110
        }
    }

    Item {
        id: rightColumn
    }
}
