############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: bhotkeys-kde - KDE panel shortcuts $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: bhotkeys-kde/Makefile 2026-10-03 21:49:38 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

# listen 0. KDE owns the key. Shown only when the session is KDE.
# RUN_DEPENDS bhotkeys.
PLUGINS=	kde-activity-next \
		kde-activity-prev \
		kde-clipboard \
		kde-clipboard-action \
		kde-display \
		kde-emoji \
		kde-krunner \
		kde-krunner-clip \
		kde-monitor \
		kde-power \
		kde-rec-region \
		kde-rec-screen \
		kde-rec-window \
		kde-settings \
		kde-shot \
		kde-shot-desktop \
		kde-shot-region \
		kde-shot-under \
		kde-shot-window

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
.for p in ${PLUGINS}
	install -m 644 plugins.d/${p} \
		${DESTDIR}${PLUGDIR}/${p}
.endfor

################################################################################
# END
################################################################################
