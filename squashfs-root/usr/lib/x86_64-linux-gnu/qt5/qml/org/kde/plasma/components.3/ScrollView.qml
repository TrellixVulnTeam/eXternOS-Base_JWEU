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


import QtQuick 2.9
import QtQuick.Controls 2.6
import QtQuick.Templates 2.6 as T
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kirigami 2.9 as Kirigami

T.ScrollView {
    id: controlRoot

    clip: true

    implicitWidth: Math.max(background ? background.implicitWidth : 0, contentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(background ? background.implicitHeight : 0, contentHeight + topPadding + bottomPadding)


    //create a background only after Component.onCompleted, see on the component creation below for explanation
    Component.onCompleted: {
        if (!controlRoot.background) {
            controlRoot.background = backgroundComponent.createObject(controlRoot);
        }
    }

 
    data: [
        Kirigami.WheelHandler {
            target: controlRoot.contentItem
        },
        Component {
            id: backgroundComponent
            Rectangle {
                color: theme.viewBackgroundColor
                visible: false
                anchors.fill:parent
            }
        }
    ]

    ScrollBar.vertical: ScrollBar {
        id: verticalScrollBar
        readonly property Flickable flickableItem: controlRoot.contentItem
        onFlickableItemChanged: {
            flickableItem.clip = true;
            flickableItem.pixelAligned = true;
        }
        parent: controlRoot
        x: controlRoot.mirrored ? 0 : controlRoot.width - width
        y: controlRoot.topPadding
        height: controlRoot.availableHeight
        active: controlRoot.ScrollBar.horizontal || controlRoot.ScrollBar.horizontal.active
    }

    ScrollBar.horizontal: ScrollBar {
        parent: controlRoot
        x: controlRoot.leftPadding
        y: controlRoot.height - height
        width: controlRoot.availableWidth
        active: controlRoot.ScrollBar.vertical || controlRoot.ScrollBar.vertical.active
    }
}
