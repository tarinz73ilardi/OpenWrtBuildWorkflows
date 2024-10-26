#!/bin/bash
# Copyright (c) 2022-2023 Curious <https://www.curious.host>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
# 
# https://github.com/Curious-r/OpenWrtBuildWorkflows
# Description: Automatically check OpenWrt source code update and build it. No additional keys are required.
#-------------------------------------------------------------------------------------------------------
#
#
# Patching is generally recommended.
# # Here's a template for patching:
#touch example.patch
#cat>example.patch<<EOF
#patch content
#EOF
#git apply example.patch
rm -rf staging_dir/hostpkg/lib/ruby
rm -rf staging_dir/hostpkg/include/ruby-*
rm staging_dir/hostpkg/lib/pkgconfig/ruby-*
rm staging_dir/hostpkg/bin/ruby
rm -rf build_dir/hostpkg/ruby-*
make package/feeds/packages/ruby/host/compile V=s
make package/feeds/packages/ruby/compile V=s
