/*
 * Copyright 2017 Marco Martin <mart@kde.org>
 * Copyright 2017 The Qt Company Ltd.
 *
 * GNU Lesser General Public License Usage
 * Alternatively, this file may be used under the terms of the GNU Lesser
 * General Public License version 3 as published by the Free Software
 * Foundation and appearing in the file LICENSE.LGPLv3 included in the
 * packaging of this file. Please review the following information to
 * ensure the GNU Lesser General Public License version 3 requirements
 * will be met: https://www.gnu.org/licenses/lgpl.html.
 *
 * GNU General Public License Usage
 * Alternatively, this file may be used under the terms of the GNU
 * General Public License version 2.0 or later as published by the Free
 * Software Foundation and appearing in the file LICENSE.GPL included in
 * the packaging of this file. Please review the following information to
 * ensure the GNU General Public License version 2.0 requirements will be
 * met: http://www.gnu.org/licenses/gpl-2.0.html.
 */


import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Templates 2.6 as T
import QtQuick.Controls 2.6 as Controls
import org.kde.qqc2desktopstyle.private 1.0 as StylePrivate
import QtGraphicalEffects 1.0
import org.kde.kirigami 2.4 as Kirigami

import "private" as Private

T.ComboBox {
    id: controlRoot
     palette: Kirigami.Theme.palette
    //NOTE: typeof necessary to not have warnings on Qt 5.7
    Kirigami.Theme.colorSet: typeof(editable) != "undefined" && editable ? Kirigami.Theme.View : Kirigami.Theme.Button
    Kirigami.Theme.inherit: false

    implicitWidth: Math.max(200, background.implicitWidth + leftPadding + rightPadding)
    implicitHeight: background.implicitHeight
    baselineOffset: contentItem.y + contentItem.baselineOffset

    hoverEnabled: true
    padding: 5
    leftPadding: controlRoot.editable && controlRoot.mirrored ? 24 : padding
    rightPadding: controlRoot.editable && !controlRoot.mirrored ? 24 : padding

    delegate: ItemDelegate {
        width: controlRoot.popup.width
        text: controlRoot.textRole ? (Array.isArray(controlRoot.model) ? modelData[controlRoot.textRole] : model[controlRoot.textRole]) : modelData
        highlighted: mouseArea.pressed ? listView.currentIndex == index : controlRoot.highlightedIndex == index
        property bool separatorVisible: false
        Kirigami.Theme.colorSet: controlRoot.Kirigami.Theme.inherit ? controlRoot.Kirigami.Theme.colorSet : Kirigami.Theme.View
        Kirigami.Theme.inherit: controlRoot.Kirigami.Theme.inherit
    }

    indicator: Item {}

    StylePrivate.PropertyWriter {
        id: controlRootWriter
        target: controlRoot
        propertyName: 'currentIndex'
    }

    contentItem: MouseArea {
        id: mouseArea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton
        preventStealing: true
        property int indexUnderMouse: -1
        onWheel: {
            if (wheel.pixelDelta.y < 0 || wheel.angleDelta.y < 0) {
                controlRoot.incrementCurrentIndex();
            } else {
                controlRoot.decrementCurrentIndex();
            }
        }
        onPressed: {
            indexUnderMouse = -1;
            listView.currentIndex = controlRoot.highlightedIndex
            controlRoot.down = true;
            controlRoot.pressed = true;
            controlRoot.popup.visible = !controlRoot.popup.visible;
        }
        onReleased: {
            if (!containsMouse) {
                controlRoot.down = false;
                controlRoot.pressed = false;
                controlRoot.popup.visible = false;
            }
            if (indexUnderMouse > -1) {
                controlRootWriter.writeProperty(indexUnderMouse);
                controlRoot.activated(indexUnderMouse);
            }
        }
        onCanceled: {
            controlRoot.down = false;
            controlRoot.pressed = false;
        }
        onPositionChanged: {
            var pos = listView.mapFromItem(this, mouse.x, mouse.y);
            indexUnderMouse = listView.indexAt(pos.x, pos.y);
            listView.currentIndex = indexUnderMouse;
        }

        Connections {
            target: popup
            onClosed: {
                controlRoot.down = false;
                controlRoot.pressed = false;
            }
        }
        T.TextField {
            id: textField
            padding: 0
            anchors {
                fill:parent
                leftMargin: controlRoot.leftPadding
                rightMargin: controlRoot.rightPadding
                topMargin: controlRoot.topPadding
                bottomMargin: controlRoot.bottomPadding
            }
            text: controlRoot.editable ? controlRoot.editText : controlRoot.displayText

            enabled: controlRoot.editable
            autoScroll: controlRoot.editable
            readOnly: controlRoot.down
            
            visible: typeof(controlRoot.editable) != "undefined" && controlRoot.editable
            inputMethodHints: controlRoot.inputMethodHints
            validator: controlRoot.validator

            // Work around Qt bug where NativeRendering breaks for non-integer scale factors
            // https://bugreports.qt.io/browse/QTBUG-67007
            renderType: Screen.devicePixelRatio % 1 !== 0 ? Text.QtRendering : Text.NativeRendering
            color: controlRoot.enabled ? Kirigami.Theme.textColor : Kirigami.Theme.disabledTextColor
            selectionColor: Kirigami.Theme.highlightColor
            selectedTextColor: Kirigami.Theme.highlightedTextColor

            selectByMouse: !Kirigami.Settings.tabletMode
            cursorDelegate: Kirigami.Settings.tabletMode ? mobileCursor : null

            font: controlRoot.font
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            opacity: controlRoot.enabled ? 1 : 0.3

            onFocusChanged: {
                if (focus) {
                    Private.MobileTextActionsToolBar.controlRoot = textField;
                }
            }

            onTextChanged: Private.MobileTextActionsToolBar.shouldBeVisible = false;
            onPressed: Private.MobileTextActionsToolBar.shouldBeVisible = true;

            onPressAndHold: {
                if (!Kirigami.Settings.tabletMode) {
                    return;
                }
                forceActiveFocus();
                cursorPosition = positionAt(event.x, event.y);
                selectWord();
            }
        }
    }

    Component {
        id: mobileCursor
        Private.MobileCursor {
            target: textField
        }
    }

    Private.MobileCursor {
        target: textField
        selectionStartHandle: true
        property var rect: target.positionToRectangle(target.selectionStart)
        x: rect.x + 5
        y: rect.y + 6
    }

    background: StylePrivate.StyleItem {
        id: styleitem
        control: controlRoot
        elementType: "combobox"
        anchors.fill: parent
        hover: controlRoot.hovered || controlRoot.pressed
        on: controlRoot.pressed
        hasFocus: controlRoot.activeFocus
        enabled: controlRoot.enabled
        // contentHeight as in QComboBox magic numbers taken from QQC1 style
        contentHeight: Math.max(Math.ceil(textHeight("")), 14) + 2
        text: controlRoot.displayText
        properties: {
            "editable" : control.editable
        }
    }

    popup: T.Popup {
        y: controlRoot.height
        width: Math.max(controlRoot.width, 150)
        implicitHeight: contentItem.implicitHeight
        topMargin: 6
        bottomMargin: 6
        Kirigami.Theme.colorSet: Kirigami.Theme.View
        Kirigami.Theme.inherit: controlRoot.Kirigami.Theme.inherit
        modal: true
        closePolicy: Controls.Popup.CloseOnEscape | Controls.Popup.CloseOnPressOutside

        contentItem: ListView {
            id: listView

            // this causes us to load at least one delegate
            // this is essential in guessing the contentHeight
            // which is needed to initially resize the popup
            cacheBuffer: 1

            implicitHeight: contentHeight
            model: controlRoot.delegateModel
            delegate: controlRoot.delegate
            currentIndex: controlRoot.highlightedIndex
            highlightRangeMode: ListView.ApplyRange
            highlightMoveDuration: 0
            boundsBehavior: Flickable.StopAtBounds
            T.ScrollBar.vertical: Controls.ScrollBar { }
        }
        background: Rectangle {
            anchors {
                fill: parent
                margins: -1
            }
            radius: 2
            color: Kirigami.Theme.backgroundColor
            property color borderColor: Kirigami.Theme.textColor
            border.color: Qt.rgba(borderColor.r, borderColor.g, borderColor.b, 0.3)
            layer.enabled: true
            
            layer.effect: DropShadow {
                transparentBorder: true
                radius: 8
                samples: 8
                horizontalOffset: 0
                verticalOffset: 2
                color: Qt.rgba(0, 0, 0, 0.3)
            }
        }
    }
}
