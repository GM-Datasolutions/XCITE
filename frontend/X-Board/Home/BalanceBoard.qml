import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../Controls" as Controls

// Balance board used on the Home/wallet page (left hand side)

Rectangle {
    width: 376
    height: 313
    color: "#3a3e46"
    radius: 5
    Layout.minimumHeight: 313
    Layout.fillHeight: true

    Controls.BoardHeader {
        text: qsTr("BALANCE")
    }

    Controls.BalanceItem {
        id: dailyBalance
        text: qsTr("Balance")
        valuePrefix: qsTr("XBY")
        value: "175,314"
        anchors.top: parent.top
        anchors.topMargin: 63
    }

    Controls.BalanceItem {
        id: unconfirmedBalance
        text: qsTr("Unconfirmed")
        valuePrefix: qsTr("XBY")
        value: "22,695"
        anchors.top: dailyBalance.bottom
    }

    Controls.BalanceItem {
        id: totalBalance
        text: qsTr("Total")
        value: "198,009"
        valueColor: "#0ED8D2"
        valuePrefix: qsTr("XBY")
        valueFont.family: "Roboto"
        valueFont.weight: Font.Normal
        anchors.top: unconfirmedBalance.bottom
        anchors.topMargin: 30
    }
}
