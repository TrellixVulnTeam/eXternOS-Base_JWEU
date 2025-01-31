/* This file is part of the KDE libraries
   Copyright (C) 2000-2005 David Faure <faure@kde.org>

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public
   License version 2 as published by the Free Software Foundation.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public License
   along with this library; see the file COPYING.LIB.  If not, write to
   the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.
*/
#ifndef KFILEUTILS_H
#define KFILEUTILS_H

#include "kcoreaddons_export.h"

#include <QString>
#include <QUrl>

/**
 * @short A namespace for KFileUtils globals
 *
 */
namespace KFileUtils
{

/**
 * Given a directory path and a filename (which usually exists already),
 * this function returns a suggested name for a file that doesn't exist
 * in that directory. The existence is only checked for local urls though.
 * The suggested file name is of the form "foo 1", "foo 2" etc.
 * @since 5.61
 */
KCOREADDONS_EXPORT QString suggestName(const QUrl &baseURL, const QString &oldName);

}
#endif
