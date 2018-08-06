#ifndef INCLUDE_features_h__
#define INCLUDE_features_h__

/* #undef GIT_DEBUG_POOL */
/* #undef GIT_TRACE */
#define GIT_THREADS 1
/* #undef GIT_MSVC_CRTDBG */

#define GIT_ARCH_64 1
/* #undef GIT_ARCH_32 */

#define GIT_USE_ICONV 1
#define GIT_USE_NSEC 1
/* #undef GIT_USE_STAT_MTIM */
#define GIT_USE_STAT_MTIMESPEC 1
/* #undef GIT_USE_STAT_MTIME_NSEC */
/* #undef GIT_USE_FUTIMENS */
#define GIT_USE_REGCOMP_L 1

/* #undef GIT_SSH */
/* #undef GIT_SSH_MEMORY_CREDENTIALS */

/* #undef GIT_GSSAPI */
/* #undef GIT_WINHTTP */
#define GIT_CURL 1

#define GIT_HTTPS 1
/* #undef GIT_OPENSSL */
#define GIT_SECURE_TRANSPORT 1

#define GIT_SHA1_COLLISIONDETECT 1
/* #undef GIT_SHA1_WIN32 */
/* #undef GIT_SHA1_COMMON_CRYPTO */
/* #undef GIT_SHA1_OPENSSL */

#endif
