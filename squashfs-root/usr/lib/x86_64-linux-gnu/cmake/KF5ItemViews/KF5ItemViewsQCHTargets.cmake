# This file was generated by ecm_install_qch_export(). DO NOT EDIT!

if (NOT TARGET KF5ItemViews_QCH)

add_custom_target(KF5ItemViews_QCH)
set_target_properties(KF5ItemViews_QCH PROPERTIES
    DOXYGEN_TAGFILE "/usr/share/qt5/doc/KF5ItemViews.tags"
    QHP_NAMESPACE "org.kde.KItemViews"
    QHP_NAMESPACE_VERSIONED "org.kde.KItemViews.5_64_0"
    QHP_VIRTUALFOLDER "kitemviews"
    IMPORTED TRUE
)
set_property(TARGET KF5ItemViews_QCH PROPERTY LINK_QCHS Qt5Widgets_QCH;Qt5Gui_QCH;Qt5Core_QCH)

endif()
