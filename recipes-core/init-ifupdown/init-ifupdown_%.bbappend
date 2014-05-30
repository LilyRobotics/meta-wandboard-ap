FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append = " \
	file:///usr/develop/fsl-community-bsp/sources/meta-wandboard-ap/recipes-core/init-ifupdown/interfaces-wlan0-ap \
"

# Replace previously installed interfaces file with the one that allows for an AP
do_install_append () {
	rm ${D}${sysconfdir}/network/interfaces
        install -m 0644 /usr/develop/fsl-community-bsp/sources/meta-wandboard-ap/recipes-core/init-ifupdown/interfaces-wlan0-ap ${D}${sysconfdir}/network/interfaces
}

