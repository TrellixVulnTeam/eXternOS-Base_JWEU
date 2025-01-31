/*
 *   Copyright 2018 Aleix Pol Gonzalez <aleixpol@kde.org>
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

import QtQuick 2.3
import QtQuick.Controls 2.3 as Controls
import org.kde.kirigami 2.4 as Kirigami

Controls.MenuItem {
    id: menuItem

    visible: action.visible === undefined || action.visible
    height: visible ? implicitHeight : 0
    autoExclusive: action.Controls.ActionGroup && action.Controls.ActionGroup.group && action.Controls.ActionGroup.group.exclusive

    Controls.ToolTip.text: action.tooltip || ""
    Controls.ToolTip.visible: menuItem.hovered && Controls.ToolTip.text.length>0
    Controls.ToolTip.delay: Kirigami.Units.toolTipDelay
}
