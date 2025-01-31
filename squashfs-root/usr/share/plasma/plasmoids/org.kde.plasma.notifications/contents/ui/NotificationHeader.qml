/*
 * Copyright 2018-2019 Kai Uwe Broulik <kde@privat.broulik.de>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License or (at your option) version 3 or any later version
 * accepted by the membership of KDE e.V. (or its successor approved
 * by the membership of KDE e.V.), which shall act as a proxy
 * defined in Section 14 of version 3 of the license.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>
 */

import QtQuick 2.8
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras

import org.kde.notificationmanager 1.0 as NotificationManager

import org.kde.kcoreaddons 1.0 as KCoreAddons

import "global"

RowLayout {
    id: notificationHeading
    property bool inGroup
    property int notificationType

    property var applicationIconSource
    property string applicationName
    property string originName

    property string configureActionLabel

    property alias configurable: configureButton.visible
    property alias dismissable: dismissButton.visible
    property bool dismissed
    property alias closeButtonTooltip: closeButton.tooltip
    property alias closable: closeButton.visible

    property var time

    property int jobState
    property QtObject jobDetails

    signal configureClicked
    signal dismissClicked
    signal closeClicked

    // notification created/updated time changed
    onTimeChanged: updateAgoText()

    function updateAgoText() {
        ageLabel.agoText = ageLabel.generateAgoText();
    }

    spacing: units.smallSpacing
    Layout.preferredHeight: Math.max(applicationNameLabel.implicitHeight, units.iconSizes.small)

    Component.onCompleted: updateAgoText()

    Connections {
        target: Globals
        // clock time changed
        onTimeChanged: notificationHeading.updateAgoText()
    }

    PlasmaCore.IconItem {
        id: applicationIconItem
        Layout.preferredWidth: units.iconSizes.small
        Layout.preferredHeight: units.iconSizes.small
        source: notificationHeading.applicationIconSource
        usesPlasmaTheme: false
        visible: valid
    }

    PlasmaExtras.DescriptiveLabel {
        id: applicationNameLabel
        Layout.fillWidth: true
        textFormat: Text.PlainText
        elide: Text.ElideLeft
        text: notificationHeading.applicationName + (notificationHeading.originName ? " · " + notificationHeading.originName : "")
    }

    PlasmaExtras.DescriptiveLabel {
        id: ageLabel

        // the "n minutes ago" text, for jobs we show remaining time instead
        // updated periodically by a Timer hence this property with generate() function
        property string agoText: ""
        visible: text !== ""
        text: generateRemainingText() || agoText
        Layout.rightMargin: -notificationHeading.spacing // the ToolButton's margins are enough

        function generateAgoText() {
            if (!time || isNaN(time.getTime()) || notificationHeading.jobState === NotificationManager.Notifications.JobStateRunning) {
                return "";
            }

            var now = new Date();
            var deltaMinutes = Math.floor((now.getTime() - time.getTime()) / 1000 / 60);
            if (deltaMinutes < 1) {
                return "";
            }

            // Received less than an hour ago, show relative minutes
            if (deltaMinutes < 60) {
                return i18ndcp("plasma_applet_org.kde.plasma.notifications", "Notification was added minutes ago, keep short", "%1 min ago", "%1 min ago", deltaMinutes);
            }
            // Received less than a day ago, show time, 22 hours so the time isn't as ambiguous between today and yesterday
            if (deltaMinutes < 60 * 22) {
                return Qt.formatTime(time, Qt.locale().timeFormat(Locale.ShortFormat).replace(/.ss?/i, ""));
            }

            // Otherwise show relative date (Yesterday, "Last Sunday", or just date if too far in the past)
            return KCoreAddons.Format.formatRelativeDate(time, Locale.ShortFormat);
        }

        function generateRemainingText() {
            if (notificationHeading.notificationType !== NotificationManager.Notifications.JobType
                || notificationHeading.jobState !== NotificationManager.Notifications.JobStateRunning) {
                return "";
            }

            var details = notificationHeading.jobDetails;
            if (!details || !details.speed) {
                return "";
            }

            var remaining = details.totalBytes - details.processedBytes;
            if (remaining <= 0) {
                return "";
            }

            var eta = remaining / details.speed;
            if (!eta) {
                return "";
            }

            if (eta < 60) { // 1 minute
                return i18ndcp("plasma_applet_org.kde.plasma.notifications", "seconds remaining, keep short",
                              "%1 s remaining", "%1 s remaining", Math.round(eta));
            }
            if (eta < 60 * 60) {// 1 hour
                return i18ndcp("plasma_applet_org.kde.plasma.notifications", "minutes remaining, keep short",
                              "%1 min remaining", "%1 min remaining",
                              Math.round(eta / 60));
            }
            if (eta < 60 * 60 * 5) { // 5 hours max, if it takes even longer there's no real point in shoing that
                return i18ndcp("plasma_applet_org.kde.plasma.notifications", "hours remaining, keep short",
                              "%1 h remaining", "%1 h remaining",
                              Math.round(eta / 60 / 60));
            }

            return "";
        }

        PlasmaCore.ToolTipArea {
            anchors.fill: parent
            active: ageLabel.agoText !== ""
            subText: notificationHeading.time ? notificationHeading.time.toLocaleString(Qt.locale(), Locale.LongFormat) : ""
        }
    }

    RowLayout {
        id: headerButtonsRow
        spacing: 0

        PlasmaComponents.ToolButton {
            id: configureButton
            tooltip: notificationHeading.configureActionLabel || i18nd("plasma_applet_org.kde.plasma.notifications", "Configure")
            iconSource: "configure"
            visible: false
            onClicked: notificationHeading.configureClicked()
        }

        PlasmaComponents.ToolButton {
            id: dismissButton
            tooltip: notificationHeading.dismissed
                     ? i18ndc("plasma_applet_org.kde.plasma.notifications", "Opposite of minimize", "Restore")
                     : i18nd("plasma_applet_org.kde.plasma.notifications", "Minimize")
            iconSource: notificationHeading.dismissed ? "window-restore" : "window-minimize"
            visible: false
            onClicked: notificationHeading.dismissClicked()
        }

        PlasmaComponents.ToolButton {
            id: closeButton
            tooltip: i18nd("plasma_applet_org.kde.plasma.notifications", "Close")
            iconSource: "window-close"
            visible: false
            onClicked: notificationHeading.closeClicked()
        }
    }

    states: [
        State {
            when: notificationHeading.inGroup
            PropertyChanges {
                target: applicationIconItem
                source: ""
            }
            PropertyChanges {
                target: applicationNameLabel
                visible: false
            }
        }

    ]
}
