AM_CFLAGS = \
	-fstack-protector -Wall -pedantic			\
	-Wstrict-prototypes -Wundef -fno-common 		\
	-Werror-implicit-function-declaration 			\
	-Wformat -Wformat-security -Werror=format-security 	\
	-Wconversion -Wunused-variable -Wunreachable-code 	\
	-Wall -W -D_FORTIFY_SOURCE=2 -std=c11			\
        -DDATADIR=\"$(datadir)\" -DSYSCONFDIR=\"$(sysconfdir)\" \
	-DGDK_VERSION_MAX_ALLOWED=GDK_VERSION_3_16 		\
	-DGDK_VERSION_MIN_REQUIRED=GDK_VERSION_3_16		\
	-DGLIB_VERSION_MAX_ALLOWED=GLIB_VERSION_2_44		\
	-DGLIB_VERSION_MIN_REQUIRED=GLIB_VERSION_2_44


AM_CPPFLAGS += \
	-I $(top_srcdir) \
	-I $(top_srcdir)/config \
	-I $(top_srcdir)/gvc \
	-I $(top_srcdir)/lib \
	-I $(top_srcdir)/libsession \
	-I $(top_srcdir)/panel \
	-I $(top_srcdir)/plugin \
	-I $(top_srcdir)/raven \
	-I $(top_srcdir)/theme \
	-O2

DECLARATIONS = \
	-DGETTEXT_PACKAGE=\"$(GETTEXT_PACKAGE)\"

MODULE_FLAGS = \
	-module \
	-avoid-version \
	-shared
