# configuration options for all flavours
extra_config_options = --disable-multi-arch


# Install a compat symlink so old binaries keep working:
define libc6_extra_pkg_install
mkdir -p debian/libc6/usr/lib/sw_64-linux-gnu

ln -sf ld-linux-sw-64.so.2 debian/libc6/usr/lib/ld-linux.so.2
ln -sf libc.so.6 debian/libc6/usr/lib/sw_64-linux-gnu/libc.so.6.1
ln -sf libm.so.6 debian/libc6/usr/lib/sw_64-linux-gnu/libm.so.6.1
ln -sf libdl.so.2 debian/libc6/usr/lib/sw_64-linux-gnu/libdl.so.2.1
ln -sf libutil.so.1 debian/libc6/usr/lib/sw_64-linux-gnu/libutil.so.1.1
ln -sf libresolv.so.2 debian/libc6/usr/lib/sw_64-linux-gnu/libresolv.so.2.1
ln -sf libBrokenLocale.so.1 debian/libc6/usr/lib/sw_64-linux-gnu/libBrokenLocale.so.1.1
ln -sf libnsl.so.1 debian/libc6/usr/lib/sw_64-linux-gnu/libnsl.so.1.1
endef

define libc6-udeb_extra_pkg_install
mkdir -p debian/libc6-udeb/usr/lib/sw_64-linux-gnu

ln -sf ld-linux-sw-64.so.2 debian/libc6-udeb/usr/lib/ld-linux.so.2
ln -sf libc.so.6 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libc.so.6.1
ln -sf libm.so.6 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libm.so.6.1
ln -sf libdl.so.2 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libdl.so.2.1
ln -sf libutil.so.1 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libutil.so.1.1
ln -sf libresolv.so.2 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libresolv.so.2.1
ln -sf libBrokenLocale.so.1 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libBrokenLocale.so.1.1
ln -sf libnsl.so.1 debian/libc6-udeb/usr/lib/sw_64-linux-gnu/libnsl.so.1.1
endef
