# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'devmgr5_base.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.setWindowModality(QtCore.Qt.ApplicationModal)
        MainWindow.resize(700, 500)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridlayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridlayout.setObjectName("gridlayout")
        self.splitter = QtWidgets.QSplitter(self.centralwidget)
        self.splitter.setOrientation(QtCore.Qt.Horizontal)
        self.splitter.setObjectName("splitter")
        self.DeviceList = QtWidgets.QListWidget(self.splitter)
        self.DeviceList.setMovement(QtWidgets.QListView.Static)
        self.DeviceList.setFlow(QtWidgets.QListView.TopToBottom)
        self.DeviceList.setResizeMode(QtWidgets.QListView.Adjust)
        self.DeviceList.setViewMode(QtWidgets.QListView.IconMode)
        self.DeviceList.setUniformItemSizes(True)
        self.DeviceList.setWordWrap(True)
        self.DeviceList.setSelectionRectVisible(False)
        self.DeviceList.setObjectName("DeviceList")
        self.Tabs = QtWidgets.QTabWidget(self.splitter)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.Tabs.sizePolicy().hasHeightForWidth())
        self.Tabs.setSizePolicy(sizePolicy)
        self.Tabs.setStyleSheet("")
        self.Tabs.setObjectName("Tabs")
        self.Actions = QtWidgets.QWidget()
        self.Actions.setObjectName("Actions")
        self.gridlayout1 = QtWidgets.QGridLayout(self.Actions)
        self.gridlayout1.setObjectName("gridlayout1")
        self.ActionsList = QtWidgets.QListWidget(self.Actions)
        self.ActionsList.setViewMode(QtWidgets.QListView.ListMode)
        self.ActionsList.setUniformItemSizes(True)
        self.ActionsList.setWordWrap(True)
        self.ActionsList.setObjectName("ActionsList")
        self.gridlayout1.addWidget(self.ActionsList, 0, 0, 1, 1)
        self.Tabs.addTab(self.Actions, "")
        self.Status = QtWidgets.QWidget()
        self.Status.setObjectName("Status")
        self.gridlayout2 = QtWidgets.QGridLayout(self.Status)
        self.gridlayout2.setObjectName("gridlayout2")
        self.hboxlayout = QtWidgets.QHBoxLayout()
        self.hboxlayout.setObjectName("hboxlayout")
        spacerItem = QtWidgets.QSpacerItem(21, 40, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.hboxlayout.addItem(spacerItem)
        self.LCD = QtWidgets.QLabel(self.Status)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.LCD.sizePolicy().hasHeightForWidth())
        self.LCD.setSizePolicy(sizePolicy)
        self.LCD.setMinimumSize(QtCore.QSize(254, 40))
        self.LCD.setMaximumSize(QtCore.QSize(254, 40))
        self.LCD.setText("")
        self.LCD.setObjectName("LCD")
        self.hboxlayout.addWidget(self.LCD)
        spacerItem1 = QtWidgets.QSpacerItem(21, 40, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.hboxlayout.addItem(spacerItem1)
        self.gridlayout2.addLayout(self.hboxlayout, 0, 0, 1, 1)
        self.StatusTable = QtWidgets.QTableWidget(self.Status)
        self.StatusTable.setAlternatingRowColors(True)
        self.StatusTable.setSelectionMode(QtWidgets.QAbstractItemView.SingleSelection)
        self.StatusTable.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.StatusTable.setShowGrid(False)
        self.StatusTable.setCornerButtonEnabled(False)
        self.StatusTable.setObjectName("StatusTable")
        self.StatusTable.setColumnCount(0)
        self.StatusTable.setRowCount(0)
        self.gridlayout2.addWidget(self.StatusTable, 1, 0, 1, 1)
        self.Tabs.addTab(self.Status, "")
        self.Supplies = QtWidgets.QWidget()
        self.Supplies.setObjectName("Supplies")
        self.gridlayout3 = QtWidgets.QGridLayout(self.Supplies)
        self.gridlayout3.setObjectName("gridlayout3")
        self.SuppliesTable = QtWidgets.QTableWidget(self.Supplies)
        self.SuppliesTable.setAlternatingRowColors(True)
        self.SuppliesTable.setSelectionMode(QtWidgets.QAbstractItemView.SingleSelection)
        self.SuppliesTable.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.SuppliesTable.setShowGrid(False)
        self.SuppliesTable.setCornerButtonEnabled(False)
        self.SuppliesTable.setObjectName("SuppliesTable")
        self.SuppliesTable.setColumnCount(0)
        self.SuppliesTable.setRowCount(0)
        self.gridlayout3.addWidget(self.SuppliesTable, 0, 0, 1, 1)
        self.Tabs.addTab(self.Supplies, "")
        self.Settings = QtWidgets.QWidget()
        self.Settings.setObjectName("Settings")
        self.gridlayout4 = QtWidgets.QGridLayout(self.Settings)
        self.gridlayout4.setObjectName("gridlayout4")
        self.hboxlayout1 = QtWidgets.QHBoxLayout()
        self.hboxlayout1.setObjectName("hboxlayout1")
        self.PrintSettingsPrinterNameLabel = QtWidgets.QLabel(self.Settings)
        self.PrintSettingsPrinterNameLabel.setObjectName("PrintSettingsPrinterNameLabel")
        self.hboxlayout1.addWidget(self.PrintSettingsPrinterNameLabel)
        self.PrintSettingsPrinterNameCombo = QtWidgets.QComboBox(self.Settings)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.PrintSettingsPrinterNameCombo.sizePolicy().hasHeightForWidth())
        self.PrintSettingsPrinterNameCombo.setSizePolicy(sizePolicy)
        self.PrintSettingsPrinterNameCombo.setObjectName("PrintSettingsPrinterNameCombo")
        self.hboxlayout1.addWidget(self.PrintSettingsPrinterNameCombo)
        self.gridlayout4.addLayout(self.hboxlayout1, 0, 0, 1, 1)
        self.PrintSettingsToolbox = PrintSettingsToolbox(self.Settings)
        self.PrintSettingsToolbox.setObjectName("PrintSettingsToolbox")
        self.gridlayout4.addWidget(self.PrintSettingsToolbox, 1, 0, 1, 1)
        self.Tabs.addTab(self.Settings, "")
        self.Control = QtWidgets.QWidget()
        self.Control.setObjectName("Control")
        self.gridlayout5 = QtWidgets.QGridLayout(self.Control)
        self.gridlayout5.setObjectName("gridlayout5")
        self.hboxlayout2 = QtWidgets.QHBoxLayout()
        self.hboxlayout2.setObjectName("hboxlayout2")
        self.PrintControlPrinterNameLabel = QtWidgets.QLabel(self.Control)
        self.PrintControlPrinterNameLabel.setObjectName("PrintControlPrinterNameLabel")
        self.hboxlayout2.addWidget(self.PrintControlPrinterNameLabel)
        self.PrintControlPrinterNameCombo = QtWidgets.QComboBox(self.Control)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.PrintControlPrinterNameCombo.sizePolicy().hasHeightForWidth())
        self.PrintControlPrinterNameCombo.setSizePolicy(sizePolicy)
        self.PrintControlPrinterNameCombo.setObjectName("PrintControlPrinterNameCombo")
        self.hboxlayout2.addWidget(self.PrintControlPrinterNameCombo)
        self.gridlayout5.addLayout(self.hboxlayout2, 0, 0, 1, 1)
        self.groupBox = QtWidgets.QGroupBox(self.Control)
        self.groupBox.setObjectName("groupBox")
        self.gridlayout6 = QtWidgets.QGridLayout(self.groupBox)
        self.gridlayout6.setObjectName("gridlayout6")
        self.vboxlayout = QtWidgets.QVBoxLayout()
        self.vboxlayout.setObjectName("vboxlayout")
        self.groupBox_3 = QtWidgets.QGroupBox(self.groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_3.sizePolicy().hasHeightForWidth())
        self.groupBox_3.setSizePolicy(sizePolicy)
        self.groupBox_3.setTitle("")
        self.groupBox_3.setObjectName("groupBox_3")
        self.gridlayout7 = QtWidgets.QGridLayout(self.groupBox_3)
        self.gridlayout7.setContentsMargins(1, 1, 1, 1)
        self.gridlayout7.setHorizontalSpacing(6)
        self.gridlayout7.setVerticalSpacing(1)
        self.gridlayout7.setObjectName("gridlayout7")
        self.hboxlayout3 = QtWidgets.QHBoxLayout()
        self.hboxlayout3.setObjectName("hboxlayout3")
        self.StartStopIcon = QtWidgets.QLabel(self.groupBox_3)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.StartStopIcon.sizePolicy().hasHeightForWidth())
        self.StartStopIcon.setSizePolicy(sizePolicy)
        self.StartStopIcon.setMinimumSize(QtCore.QSize(16, 16))
        self.StartStopIcon.setMaximumSize(QtCore.QSize(16, 16))
        self.StartStopIcon.setText("")
        self.StartStopIcon.setObjectName("StartStopIcon")
        self.hboxlayout3.addWidget(self.StartStopIcon)
        self.StartStopLabel = QtWidgets.QLabel(self.groupBox_3)
        self.StartStopLabel.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.StartStopLabel.setAlignment(QtCore.Qt.AlignCenter)
        self.StartStopLabel.setObjectName("StartStopLabel")
        self.hboxlayout3.addWidget(self.StartStopLabel)
        self.gridlayout7.addLayout(self.hboxlayout3, 0, 0, 1, 1)
        self.vboxlayout.addWidget(self.groupBox_3)
        self.StartStopButton = QtWidgets.QPushButton(self.groupBox)
        self.StartStopButton.setObjectName("StartStopButton")
        self.vboxlayout.addWidget(self.StartStopButton)
        self.gridlayout6.addLayout(self.vboxlayout, 0, 0, 1, 1)
        self.vboxlayout1 = QtWidgets.QVBoxLayout()
        self.vboxlayout1.setObjectName("vboxlayout1")
        self.groupBox_4 = QtWidgets.QGroupBox(self.groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_4.sizePolicy().hasHeightForWidth())
        self.groupBox_4.setSizePolicy(sizePolicy)
        self.groupBox_4.setTitle("")
        self.groupBox_4.setObjectName("groupBox_4")
        self.gridlayout8 = QtWidgets.QGridLayout(self.groupBox_4)
        self.gridlayout8.setContentsMargins(1, 1, 1, 1)
        self.gridlayout8.setHorizontalSpacing(6)
        self.gridlayout8.setVerticalSpacing(1)
        self.gridlayout8.setObjectName("gridlayout8")
        self.hboxlayout4 = QtWidgets.QHBoxLayout()
        self.hboxlayout4.setObjectName("hboxlayout4")
        self.AcceptRejectIcon = QtWidgets.QLabel(self.groupBox_4)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.AcceptRejectIcon.sizePolicy().hasHeightForWidth())
        self.AcceptRejectIcon.setSizePolicy(sizePolicy)
        self.AcceptRejectIcon.setMinimumSize(QtCore.QSize(16, 16))
        self.AcceptRejectIcon.setMaximumSize(QtCore.QSize(16, 16))
        self.AcceptRejectIcon.setText("")
        self.AcceptRejectIcon.setObjectName("AcceptRejectIcon")
        self.hboxlayout4.addWidget(self.AcceptRejectIcon)
        self.AcceptRejectLabel = QtWidgets.QLabel(self.groupBox_4)
        self.AcceptRejectLabel.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.AcceptRejectLabel.setAlignment(QtCore.Qt.AlignCenter)
        self.AcceptRejectLabel.setObjectName("AcceptRejectLabel")
        self.hboxlayout4.addWidget(self.AcceptRejectLabel)
        self.gridlayout8.addLayout(self.hboxlayout4, 0, 0, 1, 1)
        self.vboxlayout1.addWidget(self.groupBox_4)
        self.AcceptRejectButton = QtWidgets.QPushButton(self.groupBox)
        self.AcceptRejectButton.setObjectName("AcceptRejectButton")
        self.vboxlayout1.addWidget(self.AcceptRejectButton)
        self.gridlayout6.addLayout(self.vboxlayout1, 0, 1, 1, 1)
        self.vboxlayout2 = QtWidgets.QVBoxLayout()
        self.vboxlayout2.setObjectName("vboxlayout2")
        self.groupBox_5 = QtWidgets.QGroupBox(self.groupBox)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.groupBox_5.sizePolicy().hasHeightForWidth())
        self.groupBox_5.setSizePolicy(sizePolicy)
        self.groupBox_5.setTitle("")
        self.groupBox_5.setObjectName("groupBox_5")
        self.gridlayout9 = QtWidgets.QGridLayout(self.groupBox_5)
        self.gridlayout9.setContentsMargins(1, 1, 1, 1)
        self.gridlayout9.setHorizontalSpacing(6)
        self.gridlayout9.setVerticalSpacing(1)
        self.gridlayout9.setObjectName("gridlayout9")
        self.hboxlayout5 = QtWidgets.QHBoxLayout()
        self.hboxlayout5.setObjectName("hboxlayout5")
        self.SetDefaultIcon = QtWidgets.QLabel(self.groupBox_5)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.SetDefaultIcon.sizePolicy().hasHeightForWidth())
        self.SetDefaultIcon.setSizePolicy(sizePolicy)
        self.SetDefaultIcon.setMinimumSize(QtCore.QSize(16, 16))
        self.SetDefaultIcon.setMaximumSize(QtCore.QSize(16, 16))
        self.SetDefaultIcon.setText("")
        self.SetDefaultIcon.setObjectName("SetDefaultIcon")
        self.hboxlayout5.addWidget(self.SetDefaultIcon)
        self.SetDefaultLabel = QtWidgets.QLabel(self.groupBox_5)
        self.SetDefaultLabel.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.SetDefaultLabel.setAlignment(QtCore.Qt.AlignCenter)
        self.SetDefaultLabel.setObjectName("SetDefaultLabel")
        self.hboxlayout5.addWidget(self.SetDefaultLabel)
        self.gridlayout9.addLayout(self.hboxlayout5, 0, 0, 1, 1)
        self.vboxlayout2.addWidget(self.groupBox_5)
        self.SetDefaultButton = QtWidgets.QPushButton(self.groupBox)
        self.SetDefaultButton.setObjectName("SetDefaultButton")
        self.vboxlayout2.addWidget(self.SetDefaultButton)
        self.gridlayout6.addLayout(self.vboxlayout2, 0, 2, 1, 1)
        self.gridlayout5.addWidget(self.groupBox, 1, 0, 1, 1)
        self.groupBox_2 = QtWidgets.QGroupBox(self.Control)
        self.groupBox_2.setObjectName("groupBox_2")
        self.gridlayout10 = QtWidgets.QGridLayout(self.groupBox_2)
        self.gridlayout10.setObjectName("gridlayout10")
        self.JobTable = QtWidgets.QTableWidget(self.groupBox_2)
        self.JobTable.setAlternatingRowColors(True)
        self.JobTable.setSelectionMode(QtWidgets.QAbstractItemView.SingleSelection)
        self.JobTable.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.JobTable.setGridStyle(QtCore.Qt.DotLine)
        self.JobTable.setObjectName("JobTable")
        self.JobTable.setColumnCount(0)
        self.JobTable.setRowCount(0)
        self.gridlayout10.addWidget(self.JobTable, 0, 0, 1, 3)
        self.CancelJobButton = QtWidgets.QPushButton(self.groupBox_2)
        self.CancelJobButton.setObjectName("CancelJobButton")
        self.gridlayout10.addWidget(self.CancelJobButton, 1, 0, 1, 1)
        spacerItem2 = QtWidgets.QSpacerItem(131, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridlayout10.addItem(spacerItem2, 1, 1, 1, 1)
        self.RefreshButton = QtWidgets.QPushButton(self.groupBox_2)
        self.RefreshButton.setObjectName("RefreshButton")
        self.gridlayout10.addWidget(self.RefreshButton, 1, 2, 1, 1)
        self.gridlayout5.addWidget(self.groupBox_2, 2, 0, 1, 1)
        self.Tabs.addTab(self.Control, "")
        self.gridlayout.addWidget(self.splitter, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.Menubar = QtWidgets.QMenuBar(MainWindow)
        self.Menubar.setGeometry(QtCore.QRect(0, 0, 700, 27))
        self.Menubar.setObjectName("Menubar")
        self.DeviceMenu = QtWidgets.QMenu(self.Menubar)
        self.DeviceMenu.setObjectName("DeviceMenu")
        self.ConfigureMenu = QtWidgets.QMenu(self.Menubar)
        self.ConfigureMenu.setObjectName("ConfigureMenu")
        self.HelpMenu = QtWidgets.QMenu(self.Menubar)
        self.HelpMenu.setObjectName("HelpMenu")
        self.ViewMenu = QtWidgets.QMenu(self.Menubar)
        self.ViewMenu.setObjectName("ViewMenu")
        MainWindow.setMenuBar(self.Menubar)
        self.Statusbar = QtWidgets.QStatusBar(MainWindow)
        self.Statusbar.setObjectName("Statusbar")
        MainWindow.setStatusBar(self.Statusbar)
        self.toolBar = QtWidgets.QToolBar(MainWindow)
        self.toolBar.setObjectName("toolBar")
        MainWindow.addToolBar(QtCore.Qt.TopToolBarArea, self.toolBar)
        self.QuitAction = QtWidgets.QAction(MainWindow)
        self.QuitAction.setObjectName("QuitAction")
        self.PreferencesAction = QtWidgets.QAction(MainWindow)
        self.PreferencesAction.setObjectName("PreferencesAction")
        self.AboutAction = QtWidgets.QAction(MainWindow)
        self.AboutAction.setObjectName("AboutAction")
        self.ContentsAction = QtWidgets.QAction(MainWindow)
        self.ContentsAction.setObjectName("ContentsAction")
        self.DeviceSettingsAction = QtWidgets.QAction(MainWindow)
        self.DeviceSettingsAction.setEnabled(False)
        self.DeviceSettingsAction.setObjectName("DeviceSettingsAction")
        self.DeviceRefreshAction = QtWidgets.QAction(MainWindow)
        self.DeviceRefreshAction.setObjectName("DeviceRefreshAction")
        self.RefreshAllAction = QtWidgets.QAction(MainWindow)
        self.RefreshAllAction.setObjectName("RefreshAllAction")
        self.SetupDeviceAction = QtWidgets.QAction(MainWindow)
        self.SetupDeviceAction.setObjectName("SetupDeviceAction")
        self.RemoveDeviceAction = QtWidgets.QAction(MainWindow)
        self.RemoveDeviceAction.setObjectName("RemoveDeviceAction")
        self.ViewAsListAction = QtWidgets.QAction(MainWindow)
        self.ViewAsListAction.setObjectName("ViewAsListAction")
        self.ViewAsIconsAction = QtWidgets.QAction(MainWindow)
        self.ViewAsIconsAction.setObjectName("ViewAsIconsAction")
        self.DeviceMenu.addAction(self.DeviceSettingsAction)
        self.DeviceMenu.addSeparator()
        self.DeviceMenu.addAction(self.DeviceRefreshAction)
        self.DeviceMenu.addAction(self.RefreshAllAction)
        self.DeviceMenu.addSeparator()
        self.DeviceMenu.addAction(self.SetupDeviceAction)
        self.DeviceMenu.addAction(self.RemoveDeviceAction)
        self.DeviceMenu.addSeparator()
        self.DeviceMenu.addAction(self.QuitAction)
        self.ConfigureMenu.addAction(self.PreferencesAction)
        self.HelpMenu.addAction(self.ContentsAction)
        self.HelpMenu.addAction(self.AboutAction)
        self.ViewMenu.addAction(self.ViewAsListAction)
        self.ViewMenu.addAction(self.ViewAsIconsAction)
        self.Menubar.addAction(self.DeviceMenu.menuAction())
        self.Menubar.addAction(self.ViewMenu.menuAction())
        self.Menubar.addAction(self.ConfigureMenu.menuAction())
        self.Menubar.addAction(self.HelpMenu.menuAction())
        self.toolBar.addAction(self.DeviceRefreshAction)
        self.toolBar.addAction(self.RefreshAllAction)
        self.toolBar.addSeparator()
        self.toolBar.addAction(self.SetupDeviceAction)
        self.toolBar.addAction(self.RemoveDeviceAction)
        self.toolBar.addSeparator()
        self.toolBar.addAction(self.ContentsAction)

        #self.retranslateUi(MainWindow)
        self.Tabs.setCurrentIndex(5)
        self.PrintSettingsToolbox.setCurrentIndex(-1)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "HP Device Manager"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.Actions), _translate("MainWindow", "Actions"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.Status), _translate("MainWindow", "Status"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.Supplies), _translate("MainWindow", "Supplies"))
        self.PrintSettingsPrinterNameLabel.setText(_translate("MainWindow", "Printer Name:"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.Settings), _translate("MainWindow", "Print Settings"))
        self.PrintControlPrinterNameLabel.setText(_translate("MainWindow", "Printer Name:"))
        self.groupBox.setTitle(_translate("MainWindow", "Printer/Queue Control"))
        self.StartStopLabel.setText(_translate("MainWindow", "Started"))
        self.StartStopButton.setText(_translate("MainWindow", "Stop Printer"))
        self.AcceptRejectLabel.setText(_translate("MainWindow", "Accepting"))
        self.AcceptRejectButton.setText(_translate("MainWindow", "Reject Jobs"))
        self.SetDefaultLabel.setText(_translate("MainWindow", "Not default"))
        self.SetDefaultButton.setText(_translate("MainWindow", "Set as Default"))
        self.groupBox_2.setTitle(_translate("MainWindow", "Job Queue"))
        self.CancelJobButton.setText(_translate("MainWindow", "Cancel Job"))
        self.RefreshButton.setText(_translate("MainWindow", "Refresh"))
        self.Tabs.setTabText(self.Tabs.indexOf(self.Control), _translate("MainWindow", "Printer Control"))
        self.DeviceMenu.setTitle(_translate("MainWindow", "&Device"))
        self.ConfigureMenu.setTitle(_translate("MainWindow", "&Configure"))
        self.HelpMenu.setTitle(_translate("MainWindow", "&Help"))
        self.ViewMenu.setTitle(_translate("MainWindow", "&View"))
        self.toolBar.setWindowTitle(_translate("MainWindow", "toolBar_2"))
        self.QuitAction.setText(_translate("MainWindow", "Quit"))
        self.PreferencesAction.setText(_translate("MainWindow", "Preferences..."))
        self.AboutAction.setText(_translate("MainWindow", "About..."))
        self.ContentsAction.setText(_translate("MainWindow", "Contents..."))
        self.DeviceSettingsAction.setText(_translate("MainWindow", "Settings..."))
        self.DeviceRefreshAction.setText(_translate("MainWindow", "Refresh Device"))
        self.RefreshAllAction.setText(_translate("MainWindow", "Refresh All"))
        self.SetupDeviceAction.setText(_translate("MainWindow", "Setup Device..."))
        self.RemoveDeviceAction.setText(_translate("MainWindow", "Remove Device..."))
        self.ViewAsListAction.setText(_translate("MainWindow", "View as List"))
        self.ViewAsListAction.setToolTip(_translate("MainWindow", "View Devices as a list"))
        self.ViewAsIconsAction.setText(_translate("MainWindow", "View as Icons"))
        self.ViewAsIconsAction.setToolTip(_translate("MainWindow", "View device list as icons"))

from .printsettingstoolbox import PrintSettingsToolbox
