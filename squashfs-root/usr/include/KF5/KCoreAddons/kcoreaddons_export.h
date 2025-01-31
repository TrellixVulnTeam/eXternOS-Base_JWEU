
#ifndef KCOREADDONS_EXPORT_H
#define KCOREADDONS_EXPORT_H

#ifdef KCOREADDONS_STATIC_DEFINE
#  define KCOREADDONS_EXPORT
#  define KCOREADDONS_NO_EXPORT
#else
#  ifndef KCOREADDONS_EXPORT
#    ifdef KF5CoreAddons_EXPORTS
        /* We are building this library */
#      define KCOREADDONS_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define KCOREADDONS_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef KCOREADDONS_NO_EXPORT
#    define KCOREADDONS_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef KCOREADDONS_DECL_DEPRECATED
#  define KCOREADDONS_DECL_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef KCOREADDONS_DECL_DEPRECATED_EXPORT
#  define KCOREADDONS_DECL_DEPRECATED_EXPORT KCOREADDONS_EXPORT KCOREADDONS_DECL_DEPRECATED
#endif

#ifndef KCOREADDONS_DECL_DEPRECATED_NO_EXPORT
#  define KCOREADDONS_DECL_DEPRECATED_NO_EXPORT KCOREADDONS_NO_EXPORT KCOREADDONS_DECL_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef KCOREADDONS_NO_DEPRECATED
#    define KCOREADDONS_NO_DEPRECATED
#  endif
#endif

#define KCOREADDONS_DECL_DEPRECATED_TEXT(text) __attribute__ ((__deprecated__(text)))

#define ECM_GENERATEEXPORTHEADER_VERSION_VALUE(major, minor, patch) ((major<<16)|(minor<<8)|(patch))

/* Take any defaults from group settings */
#if !defined(KCOREADDONS_NO_DEPRECATED) && !defined(KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT)
#  ifdef KF_NO_DEPRECATED
#    define KCOREADDONS_NO_DEPRECATED
#  elif defined(KF_DISABLE_DEPRECATED_BEFORE_AND_AT)
#    define KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT KF_DISABLE_DEPRECATED_BEFORE_AND_AT
#  endif
#endif
#if !defined(KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT) && defined(KF_DISABLE_DEPRECATED_BEFORE_AND_AT)
#  define KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT KF_DISABLE_DEPRECATED_BEFORE_AND_AT
#endif

#if !defined(KCOREADDONS_NO_DEPRECATED_WARNINGS) && !defined(KCOREADDONS_DEPRECATED_WARNINGS_SINCE)
#  ifdef KF_NO_DEPRECATED_WARNINGS
#    define KCOREADDONS_NO_DEPRECATED_WARNINGS
#  elif defined(KF_DEPRECATED_WARNINGS_SINCE)
#    define KCOREADDONS_DEPRECATED_WARNINGS_SINCE KF_DEPRECATED_WARNINGS_SINCE
#  endif
#endif
#if !defined(KCOREADDONS_DEPRECATED_WARNINGS_SINCE) && defined(KF_DEPRECATED_WARNINGS_SINCE)
#  define KCOREADDONS_DEPRECATED_WARNINGS_SINCE KF_DEPRECATED_WARNINGS_SINCE
#endif

#if defined(KCOREADDONS_NO_DEPRECATED)
#  undef KCOREADDONS_DEPRECATED
#  define KCOREADDONS_DEPRECATED_EXPORT KCOREADDONS_EXPORT
#  define KCOREADDONS_DEPRECATED_NO_EXPORT KCOREADDONS_NO_EXPORT
#elif defined(KCOREADDONS_NO_DEPRECATED_WARNINGS)
#  define KCOREADDONS_DEPRECATED
#  define KCOREADDONS_DEPRECATED_EXPORT KCOREADDONS_EXPORT
#  define KCOREADDONS_DEPRECATED_NO_EXPORT KCOREADDONS_NO_EXPORT
#else
#  define KCOREADDONS_DEPRECATED KCOREADDONS_DECL_DEPRECATED
#  define KCOREADDONS_DEPRECATED_EXPORT KCOREADDONS_DECL_DEPRECATED_EXPORT
#  define KCOREADDONS_DEPRECATED_NO_EXPORT KCOREADDONS_DECL_DEPRECATED_NO_EXPORT
#endif

/* No deprecated API had been removed from build */
#define KCOREADDONS_EXCLUDE_DEPRECATED_BEFORE_AND_AT 0

#define KCOREADDONS_BUILD_DEPRECATED_SINCE(major, minor) 1

#ifdef KCOREADDONS_NO_DEPRECATED
#  define KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT 344064
#endif
#ifdef KCOREADDONS_NO_DEPRECATED_WARNINGS
#  define KCOREADDONS_DEPRECATED_WARNINGS_SINCE 0
#endif

#ifndef KCOREADDONS_DEPRECATED_WARNINGS_SINCE
#  ifdef KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT
#    define KCOREADDONS_DEPRECATED_WARNINGS_SINCE KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT
#  else
#    define KCOREADDONS_DEPRECATED_WARNINGS_SINCE 344064
#  endif
#endif

#ifndef KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT
#  define KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT 0
#endif

#ifdef KCOREADDONS_DEPRECATED
#  define KCOREADDONS_ENABLE_DEPRECATED_SINCE(major, minor) (ECM_GENERATEEXPORTHEADER_VERSION_VALUE(major, minor, 0) > KCOREADDONS_DISABLE_DEPRECATED_BEFORE_AND_AT)
#else
#  define KCOREADDONS_ENABLE_DEPRECATED_SINCE(major, minor) 0
#endif

#if KCOREADDONS_DEPRECATED_WARNINGS_SINCE >= 262144
#  define KCOREADDONS_DEPRECATED_VERSION_4_0(text) KCOREADDONS_DECL_DEPRECATED_TEXT(text)
#else
#  define KCOREADDONS_DEPRECATED_VERSION_4_0(text)
#endif

#if KCOREADDONS_DEPRECATED_WARNINGS_SINCE >= 327680
#  define KCOREADDONS_DEPRECATED_VERSION_5_0(text) KCOREADDONS_DECL_DEPRECATED_TEXT(text)
#else
#  define KCOREADDONS_DEPRECATED_VERSION_5_0(text)
#endif

#if KCOREADDONS_DEPRECATED_WARNINGS_SINCE >= 328192
#  define KCOREADDONS_DEPRECATED_VERSION_5_2(text) KCOREADDONS_DECL_DEPRECATED_TEXT(text)
#else
#  define KCOREADDONS_DEPRECATED_VERSION_5_2(text)
#endif
#define KCOREADDONS_DEPRECATED_VERSION_4(minor, text)      KCOREADDONS_DEPRECATED_VERSION_4_##minor(text)
#define KCOREADDONS_DEPRECATED_VERSION_5(minor, text)      KCOREADDONS_DEPRECATED_VERSION_5_##minor(text)
#define KCOREADDONS_DEPRECATED_VERSION(major, minor, text) KCOREADDONS_DEPRECATED_VERSION_##major(minor, "Since "#major"."#minor". " text)

#endif
