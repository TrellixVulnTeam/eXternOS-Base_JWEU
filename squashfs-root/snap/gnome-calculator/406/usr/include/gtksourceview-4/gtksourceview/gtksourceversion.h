/* -*- Mode: C; tab-width: 8; indent-tabs-mode: t; c-basic-offset: 8; coding: utf-8 -*-
 * gtksourceversion.h
 * This file is part of GtkSourceView
 *
 * Copyright (C) 2015 - Paolo Borelli <pborelli@gnome.org>
 *
 * GtkSourceView is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * GtkSourceView is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library; if not, see <http://www.gnu.org/licenses/>.
 */

#ifndef GTK_SOURCE_VERSION_H
#define GTK_SOURCE_VERSION_H

#include <glib.h>

G_BEGIN_DECLS

/**
 * GTK_SOURCE_MAJOR_VERSION:
 *
 * Like gtk_source_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_MAJOR_VERSION (4)

/**
 * GTK_SOURCE_MINOR_VERSION:
 *
 * Like gtk_source_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_MINOR_VERSION (2)

/**
 * GTK_SOURCE_MICRO_VERSION:
 *
 * Like gtk_source_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_MICRO_VERSION (0)


/**
 * GTK_SOURCE_CHECK_VERSION:
 * @major: major version (e.g. 3 for version 3.20.0)
 * @minor: minor version (e.g. 20 for version 3.20.0)
 * @micro: micro version (e.g. 0 for version 3.20.0)
 *
 * Macro to test the version of GtkSourceView being compiled against.
 *
 * Returns: %TRUE if the version of the GtkSourceView header files
 * is the same as or newer than the passed-in version.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_CHECK_VERSION(major, minor, micro) \
	(GTK_SOURCE_MAJOR_VERSION > (major) || \
	(GTK_SOURCE_MAJOR_VERSION == (major) && GTK_SOURCE_MINOR_VERSION > ((gint) (minor))) || \
	(GTK_SOURCE_MAJOR_VERSION == (major) && GTK_SOURCE_MINOR_VERSION == (minor) && \
	 GTK_SOURCE_MICRO_VERSION >= (micro)))

#ifndef _GTK_SOURCE_EXTERN
#define _GTK_SOURCE_EXTERN extern
#endif

#ifndef __GTK_DOC_IGNORE__
#define GTK_SOURCE_ENUM_EXTERN _GTK_SOURCE_EXTERN
#endif

/**
 * GTK_SOURCE_VERSION_3_0:
 *
 * A macro that evaluates to the 3.0 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_0 (G_ENCODE_VERSION (3, 0))

/**
 * GTK_SOURCE_VERSION_3_2:
 *
 * A macro that evaluates to the 3.2 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_2 (G_ENCODE_VERSION (3, 2))

/**
 * GTK_SOURCE_VERSION_3_4:
 *
 * A macro that evaluates to the 3.4 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_4 (G_ENCODE_VERSION (3, 4))

/**
 * GTK_SOURCE_VERSION_3_6:
 *
 * A macro that evaluates to the 3.6 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_6 (G_ENCODE_VERSION (3, 6))

/**
 * GTK_SOURCE_VERSION_3_8:
 *
 * A macro that evaluates to the 3.8 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_8 (G_ENCODE_VERSION (3, 8))

/**
 * GTK_SOURCE_VERSION_3_10:
 *
 * A macro that evaluates to the 3.10 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_10 (G_ENCODE_VERSION (3, 10))

/**
 * GTK_SOURCE_VERSION_3_12:
 *
 * A macro that evaluates to the 3.12 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_12 (G_ENCODE_VERSION (3, 12))

/**
 * GTK_SOURCE_VERSION_3_14:
 *
 * A macro that evaluates to the 3.14 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_14 (G_ENCODE_VERSION (3, 14))

/**
 * GTK_SOURCE_VERSION_3_16:
 *
 * A macro that evaluates to the 3.16 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_16 (G_ENCODE_VERSION (3, 16))

/**
 * GTK_SOURCE_VERSION_3_18:
 *
 * A macro that evaluates to the 3.18 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_18 (G_ENCODE_VERSION (3, 18))

/**
 * GTK_SOURCE_VERSION_3_20:
 *
 * A macro that evaluates to the 3.20 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.20
 */
#define GTK_SOURCE_VERSION_3_20 (G_ENCODE_VERSION (3, 20))

/**
 * GTK_SOURCE_VERSION_3_22:
 *
 * A macro that evaluates to the 3.22 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.22
 */
#define GTK_SOURCE_VERSION_3_22 (G_ENCODE_VERSION (3, 22))

/**
 * GTK_SOURCE_VERSION_3_24:
 *
 * A macro that evaluates to the 3.24 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 3.24
 */
#define GTK_SOURCE_VERSION_3_24 (G_ENCODE_VERSION (3, 24))

/**
 * GTK_SOURCE_VERSION_4_0:
 *
 * A macro that evaluates to the 4.0 version of GtkSourceView,
 * in a format that can be used by the C pre-processor.
 *
 * Since: 4.0
 */
#define GTK_SOURCE_VERSION_4_0 (G_ENCODE_VERSION (4, 0))

/* Define GTK_SOURCE_VERSION_CUR_STABLE */
#ifndef __GTK_DOC_IGNORE__
#  if (GTK_SOURCE_MINOR_VERSION % 2)
#    define GTK_SOURCE_VERSION_CUR_STABLE (G_ENCODE_VERSION (GTK_SOURCE_MAJOR_VERSION, GTK_SOURCE_MINOR_VERSION + 1))
#  else
#    define GTK_SOURCE_VERSION_CUR_STABLE (G_ENCODE_VERSION (GTK_SOURCE_MAJOR_VERSION, GTK_SOURCE_MINOR_VERSION))
#  endif
#endif /* __GTK_DOC_IGNORE__ */

/* Define GTK_SOURCE_VERSION_PREV_STABLE */
#ifndef __GTK_DOC_IGNORE__
#if (GTK_SOURCE_MINOR_VERSION % 2)
#define GTK_SOURCE_VERSION_PREV_STABLE (G_ENCODE_VERSION (GTK_SOURCE_MAJOR_VERSION, GTK_SOURCE_MINOR_VERSION - 1))
#else
#define GTK_SOURCE_VERSION_PREV_STABLE (G_ENCODE_VERSION (GTK_SOURCE_MAJOR_VERSION, GTK_SOURCE_MINOR_VERSION - 2))
#endif
#endif /* __GTK_DOC_IGNORE__ */

/**
 * GTK_SOURCE_VERSION_MIN_REQUIRED:
 *
 * A macro that should be defined by the user prior to including
 * the gtksource.h header.
 * The definition should be one of the predefined version
 * macros: %GTK_SOURCE_VERSION_3_0, %GTK_SOURCE_VERSION_3_2, ...
 *
 * This macro defines the lower bound for the GtkSourceView API to use.
 *
 * If a function has been deprecated in a newer version of GtkSourceView,
 * defining this symbol hides the compiler warnings for those functions
 * without disabling warnings for the other deprecated functions.
 *
 * <warning>
 * Warning: if you define this macro, do not forget to update it! Especially
 * when writing new code. Otherwise you can miss the new deprecations.
 * </warning>
 *
 * Since: 3.20
 */
#ifndef GTK_SOURCE_VERSION_MIN_REQUIRED
#define GTK_SOURCE_VERSION_MIN_REQUIRED (GTK_SOURCE_VERSION_CUR_STABLE)
#endif

/**
 * GTK_SOURCE_VERSION_MAX_ALLOWED:
 *
 * A macro that should be defined by the user prior to including
 * the gtksource.h header.
 * The definition should be one of the predefined version
 * macros: %GTK_SOURCE_VERSION_3_0, %GTK_SOURCE_VERSION_3_2, ...
 *
 * This macro defines the upper bound for the GtkSourceView API to use.
 *
 * If a function has been introduced in a newer version of GtkSourceView,
 * it is possible to use this symbol to get compiler warnings when
 * trying to use that function.
 *
 * Since: 3.20
 */
#ifndef GTK_SOURCE_VERSION_MAX_ALLOWED
#if GTK_SOURCE_VERSION_MIN_REQUIRED > GTK_SOURCE_VERSION_PREV_STABLE
#define GTK_SOURCE_VERSION_MAX_ALLOWED  GTK_SOURCE_VERSION_MIN_REQUIRED
#else
#define GTK_SOURCE_VERSION_MAX_ALLOWED GTK_SOURCE_VERSION_CUR_STABLE
#endif
#endif

/* sanity checks */
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_MIN_REQUIRED
#error "GTK_SOURCE_VERSION_MAX_ALLOWED must be >= GTK_SOURCE_VERSION_MIN_REQUIRED"
#endif
#if GTK_SOURCE_VERSION_MIN_REQUIRED < GTK_SOURCE_VERSION_3_0
#error "GTK_SOURCE_VERSION_MIN_REQUIRED must be >= GTK_SOURCE_VERSION_3_0"
#endif

#ifndef __GTK_DOC_IGNORE__
#define GTK_SOURCE_AVAILABLE_IN_ALL _GTK_SOURCE_EXTERN
#endif

/* Every new stable minor release should add a set of macros here */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_0
#define GTK_SOURCE_DEPRECATED_IN_3_0 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_0_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_0 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_0_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_0
#define GTK_SOURCE_AVAILABLE_IN_3_0 G_UNAVAILABLE(3, 0) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_0 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_2
#define GTK_SOURCE_DEPRECATED_IN_3_2 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_2_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_2 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_2_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_2
#define GTK_SOURCE_AVAILABLE_IN_3_2 G_UNAVAILABLE(3, 2) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_2 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_4
#define GTK_SOURCE_DEPRECATED_IN_3_4 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_4_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_4 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_4_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_4
#define GTK_SOURCE_AVAILABLE_IN_3_4 G_UNAVAILABLE(3, 4) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_4 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_6
#define GTK_SOURCE_DEPRECATED_IN_3_6 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_6_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_6 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_6_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_6
#define GTK_SOURCE_AVAILABLE_IN_3_6 G_UNAVAILABLE(3, 6) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_6 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_8
#define GTK_SOURCE_DEPRECATED_IN_3_8 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_8_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_8 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_8_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_8
#define GTK_SOURCE_AVAILABLE_IN_3_8 G_UNAVAILABLE(3, 8) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_8 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_10
#define GTK_SOURCE_DEPRECATED_IN_3_10 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_10_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_10 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_10_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_10
#define GTK_SOURCE_AVAILABLE_IN_3_10 G_UNAVAILABLE(3, 10) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_10 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_12
#define GTK_SOURCE_DEPRECATED_IN_3_12 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_12_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_12 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_12_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_12
#define GTK_SOURCE_AVAILABLE_IN_3_12 G_UNAVAILABLE(3, 12) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_12 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_14
#define GTK_SOURCE_DEPRECATED_IN_3_14 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_14_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_14 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_14_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_14
#define GTK_SOURCE_AVAILABLE_IN_3_14 G_UNAVAILABLE(3, 14) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_14 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_16
#define GTK_SOURCE_DEPRECATED_IN_3_16 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_16_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_16 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_16_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_16
#define GTK_SOURCE_AVAILABLE_IN_3_16 G_UNAVAILABLE(3, 16) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_16 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_18
#define GTK_SOURCE_DEPRECATED_IN_3_18 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_18_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_18 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_18_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_18
#define GTK_SOURCE_AVAILABLE_IN_3_18 G_UNAVAILABLE(3, 18) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_18 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_20
#define GTK_SOURCE_DEPRECATED_IN_3_20 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_20_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_20 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_20_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_20
#define GTK_SOURCE_AVAILABLE_IN_3_20 G_UNAVAILABLE(3, 20) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_20 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_22
#define GTK_SOURCE_DEPRECATED_IN_3_22 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_22_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_22 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_22_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_22
#define GTK_SOURCE_AVAILABLE_IN_3_22 G_UNAVAILABLE(3, 22) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_22 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_3_24
#define GTK_SOURCE_DEPRECATED_IN_3_24 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_24_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_3_24 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_3_24_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_3_24
#define GTK_SOURCE_AVAILABLE_IN_3_24 G_UNAVAILABLE(3, 24) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_3_24 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MIN_REQUIRED >= GTK_SOURCE_VERSION_4_0
#define GTK_SOURCE_DEPRECATED_IN_4_0 G_DEPRECATED _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_4_0_FOR(f) G_DEPRECATED_FOR(f) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_DEPRECATED_IN_4_0 _GTK_SOURCE_EXTERN
#define GTK_SOURCE_DEPRECATED_IN_4_0_FOR(f) _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

#ifndef __GTK_DOC_IGNORE__
#if GTK_SOURCE_VERSION_MAX_ALLOWED < GTK_SOURCE_VERSION_4_0
#define GTK_SOURCE_AVAILABLE_IN_4_0 G_UNAVAILABLE(4, 0) _GTK_SOURCE_EXTERN
#else
#define GTK_SOURCE_AVAILABLE_IN_4_0 _GTK_SOURCE_EXTERN
#endif
#endif /* __GTK_DOC_IGNORE__ */

GTK_SOURCE_AVAILABLE_IN_3_20
guint		gtk_source_get_major_version		(void);

GTK_SOURCE_AVAILABLE_IN_3_20
guint		gtk_source_get_minor_version		(void);

GTK_SOURCE_AVAILABLE_IN_3_20
guint		gtk_source_get_micro_version		(void);

GTK_SOURCE_AVAILABLE_IN_3_20
gboolean	gtk_source_check_version		(guint major,
							 guint minor,
							 guint micro);

G_END_DECLS

#endif /* GTK_SOURCE_VERSION_H */
