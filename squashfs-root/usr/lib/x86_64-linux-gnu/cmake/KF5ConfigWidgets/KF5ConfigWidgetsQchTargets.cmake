# This file was generated by ecm_install_qch_export(). DO NOT EDIT!

if (NOT TARGET KF5ConfigWidgets_QCH)

add_custom_target(KF5ConfigWidgets_QCH)
set_target_properties(KF5ConfigWidgets_QCH PROPERTIES
    DOXYGEN_TAGFILE "/usr/share/qt5/doc/KF5ConfigWidgets.tags"
    QHP_NAMESPACE "org.kde.KConfigWidgets"
    QHP_NAMESPACE_VERSIONED "org.kde.KConfigWidgets.5_64_0"
    QHP_VIRTUALFOLDER "kconfigwidgets"
    IMPORTED TRUE
)
set_property(TARGET KF5ConfigWidgets_QCH PROPERTY LINK_QCHS KF5Codecs_QCH;KF5WidgetsAddons_QCH;KF5Config_QCH;KF5Auth_QCH)

endif()
