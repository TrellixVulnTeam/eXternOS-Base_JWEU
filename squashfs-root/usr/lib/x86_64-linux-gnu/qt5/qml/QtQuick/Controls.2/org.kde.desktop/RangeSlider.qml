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
import QtQuick.Controls 2.6
import QtQuick.Templates 2.6 as T
import org.kde.kirigami 2.4 as Kirigami

T.RangeSlider {
    id: control

     palette: Kirigami.Theme.palette
    implicitWidth: Math.max(background ? background.implicitWidth : 0,
        Math.max(first.handle ? first.handle.implicitWidth : 0,
                 second.handle ? second.handle.implicitWidth : 0) + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0,
        Math.max(first.handle ? first.handle.implicitHeight : 0,
                 second.handle ? second.handle.implicitHeight : 0) + topPadding + bottomPadding)

    padding: 6

    first.handle: Rectangle {
        property bool horizontal: control.orientation === Qt.Horizontal
        x: control.leftPadding + (horizontal ? control.first.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : control.first.visualPosition * (control.availableHeight - height))
        implicitWidth: 18
        implicitHeight: 18
        radius: width / 2
        property color borderColor: Kirigami.Theme.textColor
        border.color: control.activeFocus ? Kirigami.Theme.highlightColor : Qt.rgba(borderColor.r, borderColor.g, borderColor.b, 0.3)
        color: Kirigami.Theme.backgroundColor
        Rectangle {
            z: -1
            x: 1
            y: 1
            width: parent.width
            height: parent.height
            radius: width / 2
            color: Qt.rgba(0, 0, 0, 0.15)
        }
    }

    second.handle: Rectangle {
        property bool horizontal: control.orientation === Qt.Horizontal
        x: control.leftPadding + (horizontal ? control.second.visualPosition * (control.availableWidth - width) : (control.availableWidth - width) / 2)
        y: control.topPadding + (horizontal ? (control.availableHeight - height) / 2 : control.second.visualPosition * (control.availableHeight - height))
        implicitWidth: 18
        implicitHeight: 18
        radius: width / 2
        property color borderColor: Kirigami.Theme.textColor
        border.color: control.activeFocus ? Kirigami.Theme.highlightColor : Qt.rgba(borderColor.r, borderColor.g, borderColor.b, 0.3)
        color: Kirigami.Theme.backgroundColor
        Rectangle {
            z: -1
            x: 1
            y: 1
            width: parent.width
            height: parent.height
            radius: width / 2
            color: Qt.rgba(0, 0, 0, 0.15)
        }
    }

    background: Rectangle {
        readonly property bool horizontal: control.orientation === Qt.Horizontal
        implicitWidth: horizontal ? 200 : 6
        implicitHeight: horizontal ? 6 : 200
        width: horizontal ? control.availableWidth : implicitWidth
        height: horizontal ? implicitHeight : control.availableHeight
        radius: Math.round(Math.min(width/2, height/2))
        property color bgColor: Kirigami.Theme.textColor
        color: Qt.rgba(bgColor.r, bgColor.g, bgColor.b, 0.3)
        anchors.centerIn: parent

        Rectangle {
            x: parent.horizontal ? control.first.position * parent.width : 0
            y: parent.horizontal ? 0 : control.second.visualPosition * parent.height + 6
            width: parent.horizontal ? control.second.position * parent.width - control.first.position * parent.width - 6 : 6
            height: parent.horizontal ? 6 : control.second.position * parent.height - control.first.position * parent.height - 6
            color: Kirigami.Theme.highlightColor
        }
    }
}
