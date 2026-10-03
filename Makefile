# bhotkeys-kde: KDE global shortcuts, advertised in the panel.
# listen 0. KDE owns the key. Shown only when the session is KDE.
# RUN_DEPENDS bhotkeys.
#
PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

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

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
.for p in ${PLUGINS}
	install -m 644 plugins.d/${p} \
		${DESTDIR}${PLUGDIR}/${p}
.endfor

.PHONY: install
