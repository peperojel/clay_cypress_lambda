#!/bin/bash

yum -y install Xvfb pango pango-devel \
    libXrandr libXrandr-devel \
    libXcursor libXcursor-devel \
    libXcomposite libXcomposite-devel cups \
    gtk3-devel alsa-lib

rpm -ivh http://mirror.centos.org/centos/6/os/x86_64/Packages/libXScrnSaver-1.2.2-2.el6.x86_64.rpm