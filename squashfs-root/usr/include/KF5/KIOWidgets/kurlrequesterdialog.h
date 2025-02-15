/* This file is part of the KDE libraries
    Copyright (C) 2000 Wilco Greven <greven@kde.org>

    library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

#ifndef KURLREQUESTERDIALOG_H
#define KURLREQUESTERDIALOG_H

#include "kiowidgets_export.h"
#include <QDialog>
#include <QUrl>

class KUrlRequester;
class QFileDialog;
class KUrlRequesterDialogPrivate;

/**
 * @class KUrlRequesterDialog kurlrequesterdialog.h <KUrlRequesterDialog>
 *
 * Dialog in which a user can enter a filename or url. It is a dialog
 * encapsulating KUrlRequester.
 *
 * @short Simple dialog to enter a filename/url.
 * @author Wilco Greven <greven@kde.org>
 */
class KIOWIDGETS_EXPORT KUrlRequesterDialog : public QDialog
{
    Q_OBJECT

public:
    /**
     * Constructs a KUrlRequesterDialog.
     *
     * @param url    The url of the directory to start in. Use QString()
     *               to start in the current working directory, or the last
     *               directory where a file has been selected.
     * @param parent The parent object of this widget.
     */
    explicit KUrlRequesterDialog(const QUrl &url, QWidget *parent = nullptr);

    /**
     * Constructs a KUrlRequesterDialog.
     *
     * @param url    The url of the directory to start in. Use QString()
     *               to start in the current working directory, or the last
     *               directory where a file has been selected.
     * @param text   Text of the label
     * @param parent The parent object of this widget.
     */
    KUrlRequesterDialog(const QUrl &url, const QString &text,
                        QWidget *parent);
    /**
     * Destructs the dialog.
     */
    ~KUrlRequesterDialog();

    /**
     * Returns the fully qualified filename.
     */
    QUrl selectedUrl() const;

    /**
     * Creates a modal dialog, executes it and returns the selected URL.
     *
     * @param url This specifies the initial path of the input line.
     * @param parent The widget the dialog will be centered on initially.
     * @param caption The caption to use for the dialog.
     */
    static QUrl getUrl(const QUrl &url = QUrl(),
                       QWidget *parent = nullptr, const QString &caption = QString());

#if KIOWIDGETS_ENABLE_DEPRECATED_SINCE(5, 0)
    /**
     * Returns a pointer to the file dialog used by the KUrlRequester.
     * @deprecated since 5.0, use urlRequester() methods instead.
     */
    KIOWIDGETS_DEPRECATED_VERSION(5, 0, "Use KUrlRequesterDialog::urlRequester() and methods on it")
    QFileDialog *fileDialog();
#endif

    /**
     * Returns a pointer to the KUrlRequester.
     */
    KUrlRequester *urlRequester();

private:
    friend class KUrlRequesterDialogPrivate;
    KUrlRequesterDialogPrivate *const d;

    Q_DISABLE_COPY(KUrlRequesterDialog)

    Q_PRIVATE_SLOT(d, void _k_slotTextChanged(const QString &))
};

#endif // KURLREQUESTERDIALOG_H

