/*
 *   Copyright 2016 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Templates 2.6 as T
import QtQuick.Controls 2.6 as Controls
import QtGraphicalEffects 1.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kirigami 2.5 as Kirigami
import "private" as Private
import "mobiletextselection" as MobileTextSelection

T.ComboBox {
    id: control

    implicitWidth: Math.max(background ? background.implicitWidth : 0,
                            contentItem.implicitWidth + leftPadding + rightPadding) + indicator.implicitWidth + rightPadding
    implicitHeight: units.gridUnit * 1.6
    baselineOffset: contentItem.y + contentItem.baselineOffset

    hoverEnabled: true
    topPadding: surfaceNormal.margins.top
    leftPadding: surfaceNormal.margins.left
    rightPadding: surfaceNormal.margins.right + units.gridUnit * 2
    bottomPadding: surfaceNormal.margins.bottom

    delegate: ItemDelegate {
        width: control.popup.width
        text: control.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
        highlighted: mouseArea.pressed ? listView.currentIndex == index : control.highlightedIndex == index
        property bool separatorVisible: false
    }

    indicator: PlasmaCore.SvgItem {
        implicitWidth: units.iconSizes.small
        implicitHeight: implicitWidth
        anchors {
            right: parent.right
            rightMargin: surfaceNormal.margins.right
            verticalCenter: parent.verticalCenter
        }
        svg: PlasmaCore.Svg {
            imagePath: "widgets/arrows"
            colorGroup: PlasmaCore.Theme.ButtonColorGroup
        }
        elementId: "down-arrow"
    }

//     contentItem: Label {
//         text: control.displayText
//         font: control.font
//         color: theme.buttonTextColor
//         horizontalAlignment: Text.AlignLeft
//         verticalAlignment: Text.AlignVCenter
//         elide: Text.ElideRight
//     }
    contentItem: MouseArea {
        id: mouseArea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton
        preventStealing: true
        property int indexUnderMouse: -1
        onWheel: {
            if (wheel.pixelDelta.y < 0 || wheel.angleDelta.y < 0) {
                control.currentIndex = Math.min(control.currentIndex + 1, delegateModel.count -1);
            } else {
                control.currentIndex = Math.max(control.currentIndex - 1, 0);
            }
            control.activated(control.currentIndex);
        }
        onPressed: {
            indexUnderMouse = -1;
            listView.currentIndex = control.highlightedIndex
            control.down = true;
            control.pressed = true;
            control.popup.visible = !control.popup.visible;
        }
        onReleased: {
            if (!containsMouse) {
                control.down = false;
                control.pressed = false;
                control.popup.visible = false;
            }
            if (indexUnderMouse > -1) {
                control.currentIndex = indexUnderMouse;
            }
        }
        onCanceled: {
            control.down = false;
            control.pressed = false;
        }
        onPositionChanged: {
            var pos = listView.mapFromItem(this, mouse.x, mouse.y);
            indexUnderMouse = listView.indexAt(pos.x, pos.y);
            listView.currentIndex = indexUnderMouse;
            controlRoot.activated(indexUnderMouse);
        }

        Connections {
            target: popup
            onClosed: {
                control.down = false;
                control.pressed = false;
            }
        }
        T.TextField {
            id: textField
            padding: 0
            anchors {
                fill:parent
                leftMargin: control.leftPadding
                rightMargin: control.rightPadding
                topMargin: control.topPadding
                bottomMargin: control.bottomPadding
            }
            text: control.editable ? control.editText : control.displayText

            enabled: control.editable
            autoScroll: control.editable
            
            readOnly: control.down || !control.hasOwnProperty("editable") || !control.editable
            inputMethodHints: control.inputMethodHints
            validator: control.validator

            // Work around Qt bug where NativeRendering breaks for non-integer scale factors
            // https://bugreports.qt.io/browse/QTBUG-67007
            renderType: Screen.devicePixelRatio % 1 !== 0 ? Text.QtRendering : Text.NativeRendering
            color: PlasmaCore.ColorScope.textColor
            selectionColor: Kirigami.Theme.highlightColor
            selectedTextColor: Kirigami.Theme.highlightedTextColor

            selectByMouse: !Kirigami.Settings.tabletMode
            cursorDelegate: Kirigami.Settings.tabletMode ? mobileCursor : undefined

            font: control.font
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            opacity: control.enabled ? 1 : 0.3
            onFocusChanged: {
                if (focus) {
                    MobileTextSelection.MobileTextActionsToolBar.controlRoot = textField;
                }
            }

            onTextChanged: MobileTextSelection.MobileTextActionsToolBar.shouldBeVisible = false;
            onPressed: MobileTextSelection.MobileTextActionsToolBar.shouldBeVisible = true;

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
        MobileTextSelection.MobileCursor {
            target: textField
        }
    }

    MobileTextSelection.MobileCursor {
        target: textField
        selectionStartHandle: true
        property var rect: textField.positionToRectangle(textField.selectionStart)
        //FIXME: this magic values seem to be always valid, for every font,every dpi, every scaling
        x: rect.x + 5
        y: rect.y + 6
    }

    background: PlasmaCore.FrameSvgItem {
        id: surfaceNormal
        //retrocompatibility with old controls
        implicitWidth: units.gridUnit * 6
        anchors.fill: parent
        readonly property bool editable: control.hasOwnProperty("editable") && control.editable
        imagePath: editable ? "widgets/lineedit" : "widgets/button"
        prefix: editable
                ? "base"
                : (control.pressed ? "pressed" : "normal")
        Private.TextFieldFocus {
            visible: parent.editable
            z: -1
            state: control.activeFocus ? "focus" : (control.hovered ? "hover" : "hidden")
            anchors.fill: parent
        }
        Private.ButtonShadow {
            z: -1
            visible: !parent.editable
            anchors.fill: parent
            state: {
                if (control.pressed) {
                    return "hidden"
                } else if (control.hovered) {
                    return "hover"
                } else if (control.activeFocus) {
                    return "focus"
                } else {
                    return "shadow"
                }
            }
        }

        MouseArea {
            anchors {
                fill: parent
                leftMargin: control.leftPadding
                rightMargin: control.rightPadding
            }
            acceptedButtons: Qt.NoButton
            onWheel: {
                if (wheel.pixelDelta.y < 0 || wheel.angleDelta.y < 0) {
                    control.currentIndex = Math.min(control.currentIndex + 1, delegateModel.count -1);
                } else {
                    control.currentIndex = Math.max(control.currentIndex - 1, 0);
                }
                control.activated(control.currentIndex);
            }
        }
    }

    popup: T.Popup {
        x: control.mirrored ? control.width - width : 0
        y: control.height
        width: Math.max(control.width, 150)
        implicitHeight: contentItem.implicitHeight
        topMargin: 6
        bottomMargin: 6

        contentItem: ListView {
            id: listView
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex
            highlightRangeMode: ListView.ApplyRange
            highlightMoveDuration: 0
            // HACK: When the ComboBox is not inside a top-level Window, it's Popup does not inherit
            // the LayoutMirroring options. This is a workaround to fix this by enforcing
            // the LayoutMirroring options properly.
            // QTBUG: https://bugreports.qt.io/browse/QTBUG-66446
            LayoutMirroring.enabled: Qt.application.layoutDirection === Qt.RightToLeft
            LayoutMirroring.childrenInherit: true
            T.ScrollBar.vertical: Controls.ScrollBar { }
        }
        background: Rectangle {
            anchors {
                fill: parent
                margins: -1
            }
            radius: 2
            color: theme.viewBackgroundColor
            border.color: Qt.rgba(theme.textColor.r, theme.textColor.g, theme.textColor.b, 0.3)
            layer.enabled: true

            layer.effect: DropShadow {
                transparentBorder: true
                radius: 4
                samples: 8
                horizontalOffset: 2
                verticalOffset: 2
                color: Qt.rgba(0, 0, 0, 0.3)
            }
        }
    }
}
