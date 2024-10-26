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
rm -rf build_dir/hostpkg/ruby-3.3.4
wget https://cache.ruby-lang.org/pub/ruby/3.3/ruby-3.3.5.tar.gz
tar -zxvf ruby-3.3.5.tar.gz build_dir/hostpkg/ruby-3.3.5
