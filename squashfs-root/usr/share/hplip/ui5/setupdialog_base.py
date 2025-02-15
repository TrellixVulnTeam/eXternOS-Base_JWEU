# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'setupdialog_base.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.setWindowModality(QtCore.Qt.ApplicationModal)
        Dialog.resize(700, 500)
        self.gridlayout = QtWidgets.QGridLayout(Dialog)
        self.gridlayout.setObjectName("gridlayout")
        self.StackedWidget = QtWidgets.QStackedWidget(Dialog)
        self.StackedWidget.setObjectName("StackedWidget")
        self.DiscoveryPage = QtWidgets.QWidget()
        self.DiscoveryPage.setObjectName("DiscoveryPage")
        self.gridlayout1 = QtWidgets.QGridLayout(self.DiscoveryPage)
        self.gridlayout1.setObjectName("gridlayout1")
        self.label = QtWidgets.QLabel(self.DiscoveryPage)
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.gridlayout1.addWidget(self.label, 0, 0, 1, 2)
        self.line = QtWidgets.QFrame(self.DiscoveryPage)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.gridlayout1.addWidget(self.line, 1, 0, 1, 2)
        self.groupBox = QtWidgets.QGroupBox(self.DiscoveryPage)
        self.groupBox.setObjectName("groupBox")
        self.gridlayout2 = QtWidgets.QGridLayout(self.groupBox)
        self.gridlayout2.setObjectName("gridlayout2")
        self.UsbRadioButton = QtWidgets.QRadioButton(self.groupBox)
        self.UsbRadioButton.setChecked(True)
        self.UsbRadioButton.setObjectName("UsbRadioButton")
        self.gridlayout2.addWidget(self.UsbRadioButton, 0, 0, 1, 1)
        self.NetworkRadioButton = QtWidgets.QRadioButton(self.groupBox)
        self.NetworkRadioButton.setObjectName("NetworkRadioButton")
        self.gridlayout2.addWidget(self.NetworkRadioButton, 1, 0, 1, 1)
        self.ParallelRadioButton = QtWidgets.QRadioButton(self.groupBox)
        self.ParallelRadioButton.setEnabled(True)
        self.ParallelRadioButton.setObjectName("ParallelRadioButton")
        self.gridlayout2.addWidget(self.ParallelRadioButton, 3, 0, 1, 1)
        self.WirelessButton = QtWidgets.QRadioButton(self.groupBox)
        self.WirelessButton.setObjectName("WirelessButton")
        self.gridlayout2.addWidget(self.WirelessButton, 2, 0, 1, 1)
        self.gridlayout1.addWidget(self.groupBox, 2, 0, 1, 2)
        self.AdvancedButton = QtWidgets.QPushButton(self.DiscoveryPage)
        self.AdvancedButton.setText("")
        self.AdvancedButton.setObjectName("AdvancedButton")
        self.gridlayout1.addWidget(self.AdvancedButton, 3, 0, 1, 1)
        spacerItem = QtWidgets.QSpacerItem(381, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridlayout1.addItem(spacerItem, 3, 1, 1, 1)
        self.AdvancedStackedWidget = QtWidgets.QStackedWidget(self.DiscoveryPage)
        self.AdvancedStackedWidget.setObjectName("AdvancedStackedWidget")
        self.page = QtWidgets.QWidget()
        self.page.setObjectName("page")
        self.gridlayout3 = QtWidgets.QGridLayout(self.page)
        self.gridlayout3.setObjectName("gridlayout3")
        self.DiscoveryOptionsGroupBox = QtWidgets.QGroupBox(self.page)
        self.DiscoveryOptionsGroupBox.setObjectName("DiscoveryOptionsGroupBox")
        self.gridlayout4 = QtWidgets.QGridLayout(self.DiscoveryOptionsGroupBox)
        self.gridlayout4.setObjectName("gridlayout4")
        self.hboxlayout = QtWidgets.QHBoxLayout()
        self.hboxlayout.setObjectName("hboxlayout")
        self.label_2 = QtWidgets.QLabel(self.DiscoveryOptionsGroupBox)
        self.label_2.setObjectName("label_2")
        self.hboxlayout.addWidget(self.label_2)
        self.SearchLineEdit = QtWidgets.QLineEdit(self.DiscoveryOptionsGroupBox)
        self.SearchLineEdit.setObjectName("SearchLineEdit")
        self.hboxlayout.addWidget(self.SearchLineEdit)
        self.gridlayout4.addLayout(self.hboxlayout, 0, 0, 1, 1)
        self.hboxlayout1 = QtWidgets.QHBoxLayout()
        self.hboxlayout1.setObjectName("hboxlayout1")
        self.DeviceTypeLabel = QtWidgets.QLabel(self.DiscoveryOptionsGroupBox)
        self.DeviceTypeLabel.setObjectName("DeviceTypeLabel")
        self.hboxlayout1.addWidget(self.DeviceTypeLabel)
        self.DeviceTypeComboBox = QtWidgets.QComboBox(self.DiscoveryOptionsGroupBox)
        self.DeviceTypeComboBox.setObjectName("DeviceTypeComboBox")
        self.hboxlayout1.addWidget(self.DeviceTypeComboBox)
        self.gridlayout4.addLayout(self.hboxlayout1, 0, 1, 1, 2)
        self.hboxlayout2 = QtWidgets.QHBoxLayout()
        self.hboxlayout2.setObjectName("hboxlayout2")
        self.NetworkDiscoveryMethodLabel = QtWidgets.QLabel(self.DiscoveryOptionsGroupBox)
        self.NetworkDiscoveryMethodLabel.setObjectName("NetworkDiscoveryMethodLabel")
        self.hboxlayout2.addWidget(self.NetworkDiscoveryMethodLabel)
        self.NetworkDiscoveryMethodComboBox = QtWidgets.QComboBox(self.DiscoveryOptionsGroupBox)
        self.NetworkDiscoveryMethodComboBox.setObjectName("NetworkDiscoveryMethodComboBox")
        self.NetworkDiscoveryMethodComboBox.addItem("")
        self.NetworkDiscoveryMethodComboBox.addItem("")
        self.hboxlayout2.addWidget(self.NetworkDiscoveryMethodComboBox)
        self.gridlayout4.addLayout(self.hboxlayout2, 1, 0, 1, 1)
        self.hboxlayout3 = QtWidgets.QHBoxLayout()
        self.hboxlayout3.setObjectName("hboxlayout3")
        self.NetworkTimeoutLabel = QtWidgets.QLabel(self.DiscoveryOptionsGroupBox)
        self.NetworkTimeoutLabel.setObjectName("NetworkTimeoutLabel")
        self.hboxlayout3.addWidget(self.NetworkTimeoutLabel)
        self.NetworkTimeoutSpinBox = QtWidgets.QSpinBox(self.DiscoveryOptionsGroupBox)
        self.NetworkTimeoutSpinBox.setMinimum(1)
        self.NetworkTimeoutSpinBox.setMaximum(90)
        self.NetworkTimeoutSpinBox.setProperty("value", 5)
        self.NetworkTimeoutSpinBox.setObjectName("NetworkTimeoutSpinBox")
        self.hboxlayout3.addWidget(self.NetworkTimeoutSpinBox)
        self.gridlayout4.addLayout(self.hboxlayout3, 1, 1, 1, 1)
        self.hboxlayout4 = QtWidgets.QHBoxLayout()
        self.hboxlayout4.setObjectName("hboxlayout4")
        self.NetworkTTLLabel = QtWidgets.QLabel(self.DiscoveryOptionsGroupBox)
        self.NetworkTTLLabel.setObjectName("NetworkTTLLabel")
        self.hboxlayout4.addWidget(self.NetworkTTLLabel)
        self.NetworkTTLSpinBox = QtWidgets.QSpinBox(self.DiscoveryOptionsGroupBox)
        self.NetworkTTLSpinBox.setSuffix("")
        self.NetworkTTLSpinBox.setMinimum(1)
        self.NetworkTTLSpinBox.setMaximum(8)
        self.NetworkTTLSpinBox.setProperty("value", 4)
        self.NetworkTTLSpinBox.setObjectName("NetworkTTLSpinBox")
        self.hboxlayout4.addWidget(self.NetworkTTLSpinBox)
        self.gridlayout4.addLayout(self.hboxlayout4, 1, 2, 1, 1)
        self.gridlayout3.addWidget(self.DiscoveryOptionsGroupBox, 0, 0, 1, 1)
        self.ManualGroupBox = QtWidgets.QGroupBox(self.page)
        self.ManualGroupBox.setCheckable(True)
        self.ManualGroupBox.setObjectName("ManualGroupBox")
        self.gridlayout5 = QtWidgets.QGridLayout(self.ManualGroupBox)
        self.gridlayout5.setObjectName("gridlayout5")
        self.ManualParamLabel = QtWidgets.QLabel(self.ManualGroupBox)
        self.ManualParamLabel.setObjectName("ManualParamLabel")
        self.gridlayout5.addWidget(self.ManualParamLabel, 0, 0, 1, 1)
        self.ManualParamLineEdit = QtWidgets.QLineEdit(self.ManualGroupBox)
        self.ManualParamLineEdit.setObjectName("ManualParamLineEdit")
        self.gridlayout5.addWidget(self.ManualParamLineEdit, 0, 1, 1, 1)
        self.JetDirectLabel = QtWidgets.QLabel(self.ManualGroupBox)
        self.JetDirectLabel.setObjectName("JetDirectLabel")
        self.gridlayout5.addWidget(self.JetDirectLabel, 0, 2, 1, 1)
        self.JetDirectSpinBox = QtWidgets.QSpinBox(self.ManualGroupBox)
        self.JetDirectSpinBox.setMinimum(1)
        self.JetDirectSpinBox.setMaximum(3)
        self.JetDirectSpinBox.setObjectName("JetDirectSpinBox")
        self.gridlayout5.addWidget(self.JetDirectSpinBox, 0, 3, 1, 1)
        self.gridlayout3.addWidget(self.ManualGroupBox, 1, 0, 1, 1)
        self.AdvancedStackedWidget.addWidget(self.page)
        self.page_4 = QtWidgets.QWidget()
        self.page_4.setObjectName("page_4")
        self.AdvancedStackedWidget.addWidget(self.page_4)
        self.gridlayout1.addWidget(self.AdvancedStackedWidget, 4, 0, 1, 2)
        spacerItem1 = QtWidgets.QSpacerItem(478, 20, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridlayout1.addItem(spacerItem1, 5, 0, 1, 2)
        self.StackedWidget.addWidget(self.DiscoveryPage)
        self.page_2 = QtWidgets.QWidget()
        self.page_2.setObjectName("page_2")
        self.gridlayout6 = QtWidgets.QGridLayout(self.page_2)
        self.gridlayout6.setObjectName("gridlayout6")
        self.label_4 = QtWidgets.QLabel(self.page_2)
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label_4.setFont(font)
        self.label_4.setObjectName("label_4")
        self.gridlayout6.addWidget(self.label_4, 0, 0, 1, 2)
        self.line_2 = QtWidgets.QFrame(self.page_2)
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.gridlayout6.addWidget(self.line_2, 1, 0, 1, 3)
        self.DevicesTableWidget = QtWidgets.QTableWidget(self.page_2)
        self.DevicesTableWidget.setAlternatingRowColors(True)
        self.DevicesTableWidget.setSelectionMode(QtWidgets.QAbstractItemView.SingleSelection)
        self.DevicesTableWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.DevicesTableWidget.setObjectName("DevicesTableWidget")
        self.DevicesTableWidget.setColumnCount(0)
        self.DevicesTableWidget.setRowCount(0)
        self.gridlayout6.addWidget(self.DevicesTableWidget, 2, 0, 1, 3)
        self.hboxlayout5 = QtWidgets.QHBoxLayout()
        self.hboxlayout5.setObjectName("hboxlayout5")
        self.DevicesFoundIcon = QtWidgets.QLabel(self.page_2)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.DevicesFoundIcon.sizePolicy().hasHeightForWidth())
        self.DevicesFoundIcon.setSizePolicy(sizePolicy)
        self.DevicesFoundIcon.setMinimumSize(QtCore.QSize(16, 16))
        self.DevicesFoundIcon.setMaximumSize(QtCore.QSize(16, 16))
        self.DevicesFoundIcon.setFrameShape(QtWidgets.QFrame.NoFrame)
        self.DevicesFoundIcon.setText("")
        self.DevicesFoundIcon.setObjectName("DevicesFoundIcon")
        self.hboxlayout5.addWidget(self.DevicesFoundIcon)
        self.DevicesFoundLabel = QtWidgets.QLabel(self.page_2)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.DevicesFoundLabel.sizePolicy().hasHeightForWidth())
        self.DevicesFoundLabel.setSizePolicy(sizePolicy)
        self.DevicesFoundLabel.setWordWrap(True)
        self.DevicesFoundLabel.setObjectName("DevicesFoundLabel")
        self.hboxlayout5.addWidget(self.DevicesFoundLabel)
        self.gridlayout6.addLayout(self.hboxlayout5, 3, 0, 1, 1)
        spacerItem2 = QtWidgets.QSpacerItem(21, 28, QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Minimum)
        self.gridlayout6.addItem(spacerItem2, 3, 1, 1, 1)
        self.RefreshButton = QtWidgets.QPushButton(self.page_2)
        self.RefreshButton.setObjectName("RefreshButton")
        self.gridlayout6.addWidget(self.RefreshButton, 3, 2, 1, 1)
        self.StackedWidget.addWidget(self.page_2)
        self.page_3 = QtWidgets.QWidget()
        self.page_3.setObjectName("page_3")
        self.gridlayout7 = QtWidgets.QGridLayout(self.page_3)
        self.gridlayout7.setObjectName("gridlayout7")
        self.label_5 = QtWidgets.QLabel(self.page_3)
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label_5.setFont(font)
        self.label_5.setObjectName("label_5")
        self.gridlayout7.addWidget(self.label_5, 0, 0, 1, 1)
        self.line_3 = QtWidgets.QFrame(self.page_3)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.gridlayout7.addWidget(self.line_3, 1, 0, 1, 1)
        self.SetupPrintGroupBox = QtWidgets.QGroupBox(self.page_3)
        self.SetupPrintGroupBox.setObjectName("SetupPrintGroupBox")
        self.gridlayout8 = QtWidgets.QGridLayout(self.SetupPrintGroupBox)
        self.gridlayout8.setObjectName("gridlayout8")
        self.label_6 = QtWidgets.QLabel(self.SetupPrintGroupBox)
        self.label_6.setObjectName("label_6")
        self.gridlayout8.addWidget(self.label_6, 0, 0, 1, 1)
        self.PrinterNameLineEdit = QtWidgets.QLineEdit(self.SetupPrintGroupBox)
        self.PrinterNameLineEdit.setObjectName("PrinterNameLineEdit")
        self.gridlayout8.addWidget(self.PrinterNameLineEdit, 0, 1, 1, 2)
        self.label_7 = QtWidgets.QLabel(self.SetupPrintGroupBox)
        self.label_7.setObjectName("label_7")
        self.gridlayout8.addWidget(self.label_7, 1, 0, 1, 1)
        self.PrinterDescriptionLineEdit = QtWidgets.QLineEdit(self.SetupPrintGroupBox)
        self.PrinterDescriptionLineEdit.setObjectName("PrinterDescriptionLineEdit")
        self.gridlayout8.addWidget(self.PrinterDescriptionLineEdit, 1, 1, 1, 2)
        self.label_8 = QtWidgets.QLabel(self.SetupPrintGroupBox)
        self.label_8.setObjectName("label_8")
        self.gridlayout8.addWidget(self.label_8, 2, 0, 1, 1)
        self.PrinterLocationLineEdit = QtWidgets.QLineEdit(self.SetupPrintGroupBox)
        self.PrinterLocationLineEdit.setObjectName("PrinterLocationLineEdit")
        self.gridlayout8.addWidget(self.PrinterLocationLineEdit, 2, 1, 1, 2)
        self.label_3 = QtWidgets.QLabel(self.SetupPrintGroupBox)
        self.label_3.setObjectName("label_3")
        self.gridlayout8.addWidget(self.label_3, 3, 0, 1, 1)
        self.PPDFileLineEdit = QtWidgets.QLineEdit(self.SetupPrintGroupBox)
        self.PPDFileLineEdit.setReadOnly(True)
        self.PPDFileLineEdit.setObjectName("PPDFileLineEdit")
        self.gridlayout8.addWidget(self.PPDFileLineEdit, 3, 1, 1, 1)
        self.OtherPPDButton = QtWidgets.QToolButton(self.SetupPrintGroupBox)
        self.OtherPPDButton.setText("")
        self.OtherPPDButton.setObjectName("OtherPPDButton")
        self.gridlayout8.addWidget(self.OtherPPDButton, 3, 2, 1, 1)
        self.gridlayout7.addWidget(self.SetupPrintGroupBox, 2, 0, 1, 1)
        self.SetupFaxGroupBox = QtWidgets.QGroupBox(self.page_3)
        self.SetupFaxGroupBox.setCheckable(True)
        self.SetupFaxGroupBox.setObjectName("SetupFaxGroupBox")
        self.gridlayout9 = QtWidgets.QGridLayout(self.SetupFaxGroupBox)
        self.gridlayout9.setObjectName("gridlayout9")
        self.label_9 = QtWidgets.QLabel(self.SetupFaxGroupBox)
        self.label_9.setObjectName("label_9")
        self.gridlayout9.addWidget(self.label_9, 0, 0, 1, 1)
        self.FaxNameLineEdit = QtWidgets.QLineEdit(self.SetupFaxGroupBox)
        self.FaxNameLineEdit.setObjectName("FaxNameLineEdit")
        self.gridlayout9.addWidget(self.FaxNameLineEdit, 0, 1, 1, 3)
        self.label_10 = QtWidgets.QLabel(self.SetupFaxGroupBox)
        self.label_10.setObjectName("label_10")
        self.gridlayout9.addWidget(self.label_10, 1, 0, 1, 1)
        self.FaxNumberLineEdit = QtWidgets.QLineEdit(self.SetupFaxGroupBox)
        self.FaxNumberLineEdit.setObjectName("FaxNumberLineEdit")
        self.gridlayout9.addWidget(self.FaxNumberLineEdit, 1, 1, 1, 1)
        self.label_11 = QtWidgets.QLabel(self.SetupFaxGroupBox)
        self.label_11.setObjectName("label_11")
        self.gridlayout9.addWidget(self.label_11, 1, 2, 1, 1)
        self.NameCompanyLineEdit = QtWidgets.QLineEdit(self.SetupFaxGroupBox)
        self.NameCompanyLineEdit.setObjectName("NameCompanyLineEdit")
        self.gridlayout9.addWidget(self.NameCompanyLineEdit, 1, 3, 1, 1)
        self.label_12 = QtWidgets.QLabel(self.SetupFaxGroupBox)
        self.label_12.setObjectName("label_12")
        self.gridlayout9.addWidget(self.label_12, 2, 0, 1, 1)
        self.FaxDescriptionLineEdit = QtWidgets.QLineEdit(self.SetupFaxGroupBox)
        self.FaxDescriptionLineEdit.setObjectName("FaxDescriptionLineEdit")
        self.gridlayout9.addWidget(self.FaxDescriptionLineEdit, 2, 1, 1, 3)
        self.label_13 = QtWidgets.QLabel(self.SetupFaxGroupBox)
        self.label_13.setObjectName("label_13")
        self.gridlayout9.addWidget(self.label_13, 3, 0, 1, 1)
        self.FaxLocationLineEdit = QtWidgets.QLineEdit(self.SetupFaxGroupBox)
        self.FaxLocationLineEdit.setObjectName("FaxLocationLineEdit")
        self.gridlayout9.addWidget(self.FaxLocationLineEdit, 3, 1, 1, 3)
        self.gridlayout7.addWidget(self.SetupFaxGroupBox, 3, 0, 1, 1)
        spacerItem3 = QtWidgets.QSpacerItem(341, 16, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.gridlayout7.addItem(spacerItem3, 4, 0, 1, 1)
        self.SendTestPageCheckBox = QtWidgets.QCheckBox(self.page_3)
        self.SendTestPageCheckBox.setChecked(False)
        self.SendTestPageCheckBox.setObjectName("SendTestPageCheckBox")
        self.gridlayout7.addWidget(self.SendTestPageCheckBox, 5, 0, 1, 1)
        self.StackedWidget.addWidget(self.page_3)
        self.page_5 = QtWidgets.QWidget()
        self.page_5.setObjectName("page_5")
        self.gridlayout10 = QtWidgets.QGridLayout(self.page_5)
        self.gridlayout10.setObjectName("gridlayout10")
        self.label_15 = QtWidgets.QLabel(self.page_5)
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label_15.setFont(font)
        self.label_15.setObjectName("label_15")
        self.gridlayout10.addWidget(self.label_15, 0, 0, 1, 1)
        self.line_4 = QtWidgets.QFrame(self.page_5)
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.gridlayout10.addWidget(self.line_4, 1, 0, 1, 1)
        self.RemoveDevicesTableWidget = QtWidgets.QTableWidget(self.page_5)
        self.RemoveDevicesTableWidget.setAlternatingRowColors(True)
        self.RemoveDevicesTableWidget.setSelectionMode(QtWidgets.QAbstractItemView.SingleSelection)
        self.RemoveDevicesTableWidget.setSelectionBehavior(QtWidgets.QAbstractItemView.SelectRows)
        self.RemoveDevicesTableWidget.setObjectName("RemoveDevicesTableWidget")
        self.RemoveDevicesTableWidget.setColumnCount(0)
        self.RemoveDevicesTableWidget.setRowCount(0)
        self.gridlayout10.addWidget(self.RemoveDevicesTableWidget, 2, 0, 1, 1)
        self.StackedWidget.addWidget(self.page_5)
        self.gridlayout.addWidget(self.StackedWidget, 0, 0, 1, 5)
        self.StepText = QtWidgets.QLabel(Dialog)
        self.StepText.setObjectName("StepText")
        self.gridlayout.addWidget(self.StepText, 1, 0, 1, 1)
        spacerItem4 = QtWidgets.QSpacerItem(181, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.gridlayout.addItem(spacerItem4, 1, 1, 1, 1)
        self.BackButton = QtWidgets.QPushButton(Dialog)
        self.BackButton.setObjectName("BackButton")
        self.gridlayout.addWidget(self.BackButton, 1, 2, 1, 1)
        self.NextButton = QtWidgets.QPushButton(Dialog)
        self.NextButton.setObjectName("NextButton")
        self.gridlayout.addWidget(self.NextButton, 1, 3, 1, 1)
        self.CancelButton = QtWidgets.QPushButton(Dialog)
        self.CancelButton.setObjectName("CancelButton")
        self.gridlayout.addWidget(self.CancelButton, 1, 4, 1, 1)

        self.retranslateUi(Dialog)
        self.StackedWidget.setCurrentIndex(0)
        self.AdvancedStackedWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "HP Device Manager - Setup"))
        self.label.setText(_translate("Dialog", "Device Discovery"))
        self.groupBox.setTitle(_translate("Dialog", "Connection (I/O) Type"))
        self.UsbRadioButton.setText(_translate("Dialog", "Universal Serial Bus (USB)"))
        self.NetworkRadioButton.setText(_translate("Dialog", "Network/Ethernet/Wireless network (direct connection or JetDirect)"))
        self.ParallelRadioButton.setText(_translate("Dialog", "Parallel Port (LPT)"))
        self.WirelessButton.setText(_translate("Dialog", "Wireless/802.11 (requires a temporary USB connection and is only available for select devices)"))
        self.DiscoveryOptionsGroupBox.setTitle(_translate("Dialog", "Discovery Options"))
        self.label_2.setText(_translate("Dialog", "Search term:"))
        self.DeviceTypeLabel.setText(_translate("Dialog", "Type:"))
        self.NetworkDiscoveryMethodLabel.setText(_translate("Dialog", "Network discovery method:"))
        self.NetworkDiscoveryMethodComboBox.setItemText(0, _translate("Dialog", "SLP"))
        self.NetworkDiscoveryMethodComboBox.setItemText(1, _translate("Dialog", "mDNS/Bonjour"))
        self.NetworkTimeoutLabel.setText(_translate("Dialog", "Timeout:"))
        self.NetworkTimeoutSpinBox.setSuffix(_translate("Dialog", "sec"))
        self.NetworkTTLLabel.setText(_translate("Dialog", "TTL:"))
        self.ManualGroupBox.setTitle(_translate("Dialog", "Manual Discovery"))
        self.ManualParamLabel.setText(_translate("Dialog", "Parameter:"))
        self.JetDirectLabel.setText(_translate("Dialog", "Jetdirect port:"))
        self.label_4.setText(_translate("Dialog", "Select From Discovered Devices"))
        self.DevicesTableWidget.setSortingEnabled(False)
        self.DevicesFoundLabel.setText(_translate("Dialog", "Found %1 devices on the %1 bus."))
        self.RefreshButton.setText(_translate("Dialog", "Refresh"))
        self.label_5.setText(_translate("Dialog", "Setup Device"))
        self.SetupPrintGroupBox.setTitle(_translate("Dialog", "Printer Setup"))
        self.label_6.setText(_translate("Dialog", "Printer name:"))
        self.label_7.setText(_translate("Dialog", "Description:"))
        self.label_8.setText(_translate("Dialog", "Location:"))
        self.label_3.setText(_translate("Dialog", "PPD file:"))
        self.SetupFaxGroupBox.setTitle(_translate("Dialog", "Fax Setup"))
        self.label_9.setText(_translate("Dialog", "Fax name:"))
        self.label_10.setText(_translate("Dialog", "Fax number:"))
        self.label_11.setText(_translate("Dialog", "Name/company:"))
        self.label_12.setText(_translate("Dialog", "Description:"))
        self.label_13.setText(_translate("Dialog", "Location:"))
        self.SendTestPageCheckBox.setText(_translate("Dialog", "Send test page to printer"))
        self.label_15.setText(_translate("Dialog", "Select Printer/Fax Queues to Remove"))
        self.RemoveDevicesTableWidget.setSortingEnabled(False)
        self.StepText.setText(_translate("Dialog", "Step %1 of %2"))
        self.BackButton.setText(_translate("Dialog", "< Back"))
        self.NextButton.setText(_translate("Dialog", "Next >"))
        self.CancelButton.setText(_translate("Dialog", "Cancel"))

