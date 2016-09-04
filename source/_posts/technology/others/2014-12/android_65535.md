---
title: Android 安装程序报错：INSTALL_FAILED_DEXOPT
---
在 Android3.0 以前，dex 限制了程序的最大方法数是 65535，也就是说，如果你的系统是 3.0 以前的，同时你的程序的代码量太大，方法的数目超过了 65535 个，这个时候肯定会出现这个问题的。遇到这种情况的话，建议先使用 3.0 以后的设备进行开发和安装，屏蔽部分代码。

根本解决办法在这里，使用 DexClassLoader 动态加载类，同时打包的时候使用多个 dex，详情见下面链接:

- [Android 打包多个 dex 并运行时动态加载类](http://android-developers.blogspot.hk/2011/07/custom-class-loading-in-dalvik.html)
- Hack Dalvik VM 解决 Android 2.3 DEX/LinearAllocHdr 超限
  - [http://viila.info/2014/04/android-2-3-dex-max-function-problem/](http://viila.info/2014/04/android-2-3-dex-max-function-problem/)
  - [https://github.com/viilaismonster/LinearAllocFix](https://github.com/viilaismonster/LinearAllocFix)
- Android 插件化，动态升级
  - [http://www.trinea.cn/android/android-plugin/](http://www.trinea.cn/android/android-plugin/)
										
