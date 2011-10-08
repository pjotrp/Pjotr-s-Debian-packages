#! /bin/sh

fakeroot dpkg-deb --build debian
export version=`dpkg-deb -f debian.deb Version`
export package=`dpkg-deb -f debian.deb Package`
mv -v debian.deb "$package"_"$version"_all.deb 
