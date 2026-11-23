/* === This file is part of Calamares - <http://github.com/calamares> === */
/* Motivnavi OS installer slideshow - エノキ電気 ENOKI ELECTRONICS */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() { presentation.goToNextSlide(); }

    Timer {
        id: advanceTimer
        interval: 8000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    // --- テーマ設定 ---
    property string titleColor: "#FFFFFF"
    property string textColor: "#DCE8F5"
    property string accentColor: "#4FA8E8"
    property string textFont: "Noto Sans CJK JP"
    property color panelColor: "#0B1018"
    property real panelOpacity: 0.72
    property int panelRadius: 10
    property int panelPadding: 18

    Rectangle {
        anchors.fill: parent
        color: "#141A24"
        z: -1
    }

    // --- SLIDE 1 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col1; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col1.top; anchors.bottom: col1.bottom
                anchors.right: col1.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col1
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("Motivnavi OS")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("眠っている2 in 1タブレットを、カーナビに。<br/>家で使われなくなった2 in 1タブレットを、車載ナビとしてよみがえらせるOSです。")
                }
            }
        }
    }

    // --- SLIDE 2 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col2; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col2.top; anchors.bottom: col2.bottom
                anchors.right: col2.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col2
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("Android Auto 対応")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("プリインストールの <b>Linux Auto</b> で、USB接続またはWi-FiテザリングからAndroid Autoを利用できます。")
                }
            }
        }
    }

    // --- SLIDE 3 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col3; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col3.top; anchors.bottom: col3.bottom
                anchors.right: col3.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col3
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("日本語タッチキーボード標準搭載")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("Linuxでは導入が面倒な日本語タッチキーボードを最初から搭載。変換・英語入力・物理キーボードにも対応します。")
                }
            }
        }
    }

    // --- SLIDE 4 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col4; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col4.top; anchors.bottom: col4.bottom
                anchors.right: col4.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col4
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("Bluetoothで音楽と通話")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("スマホとBluetooth接続すれば、音楽再生も通話もMotivnavi OSで。<br/><b>Mediablue</b> で再生中の曲情報を表示します。")
                }
            }
        }
    }

    // --- SLIDE 5 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col5; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col5.top; anchors.bottom: col5.bottom
                anchors.right: col5.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col5
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("インターネットラジオ")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("AzuraCast対応ラジオプレイヤー <b>Castify</b> を同梱。お好みのラジオ局やエノキ電気のおすすめ放送を楽しめます。")
                }
            }
        }
    }

    // --- SLIDE 6 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col6; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col6.top; anchors.bottom: col6.bottom
                anchors.right: col6.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col6
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("車載に最適化")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("充電中は画面を点灯したまま、非充電時はすぐにスリープ。<br/>大きめのアイコンとウィンドウ自動最大化で、運転中も操作しやすく。")
                }
            }
        }
    }

    // --- SLIDE 7 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col7; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col7.top; anchors.bottom: col7.bottom
                anchors.right: col7.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col7
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("インストール中です")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("しばらくお待ちください。<br/>完了まで電源を切ったり、充電ケーブルを抜いたりしないでください。")
                }
            }
        }
    }

    // --- SLIDE 8 ---
    Slide {
        Item {
            anchors.centerIn: parent
            width: Math.min(parent.width, parent.height * (810.0/485.0))
            height: Math.min(parent.height, parent.width / (810.0/485.0))

            Image { source: "slide-background.png"; anchors.fill: parent; fillMode: Image.PreserveAspectCrop }
            Rectangle {
                color: panelColor; opacity: panelOpacity; radius: panelRadius
                anchors.fill: col8; anchors.margins: -panelPadding
            }
            Rectangle {
                width: 5; radius: 2; color: accentColor
                anchors.top: col8.top; anchors.bottom: col8.bottom
                anchors.right: col8.left; anchors.rightMargin: panelPadding - 8
            }
            Column {
                id: col8
                spacing: 12
                width: parent.width * 0.56
                anchors.left: parent.left; anchors.leftMargin: parent.width * 0.07
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -parent.height * 0.08
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 28; font.bold: true; color: titleColor
                    wrapMode: Text.WordWrap
                    text: qsTr("エノキ電気 ENOKI ELECTRONICS")
                }
                Text {
                    width: parent.width
                    font.family: textFont; font.pixelSize: 17; color: textColor
                    wrapMode: Text.WordWrap; lineHeight: 1.25
                    textFormat: Text.RichText
                    text: qsTr("公式サイト: <font color='#7CC4F5'>motivnavi.enoki.xyz</font><br/>Web: <font color='#7CC4F5'>enoki.xyz</font><br/>GitHub: <font color='#7CC4F5'>github.com/jikantoki</font><br/>Mail: <font color='#7CC4F5'>info@enoki.xyz</font>")
                }
            }
        }
    }

    function onActivate() { presentation.currentSlide = 0; }
}
