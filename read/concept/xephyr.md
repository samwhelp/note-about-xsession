---
title: 使用Xephyr測試
nav_order: 11
---

## 說明

延續[上一篇](https://samwhelp.github.io/note-about-xsession/read/concept/start.html)提到的案例。

有另一種方式，可以搭配「[Xephyr](https://manpages.ubuntu.com/manpages/focal/en/man1/Xephyr.1.html)」來測試，

就不需要使用「登出登入」來測試。


## 安裝「xserver-xephyr」

執行下面指令安裝「Package: [xserver-xephyr](https://packages.ubuntu.com/focal/xserver-xephyr)」。

``` sh
sudo apt-get install xserver-xephyr
```


## 撰寫 xephyr 測試腳本

撰寫一個檔案「[run-xsession-on-xephyr.sh](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/run-xsession-on-xephyr.sh)」，內容如下


``` sh
#!/usr/bin/env bash

Xephyr :100 -ac -screen 1280x680 &
XEPHYR_PID=$!
sleep 0.5

DISPLAY=:100 demo-session.sh
kill ${XEPHYR_PID}
```

這個腳本是在「github / worron / awesome-config / scripts / [run-with-xephyr.sh](https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh)」看到的。

記得將這個腳本設為可執行

``` sh
chmod u+x run-xsession-on-xephyr.sh
```


## 執行測試

接著執行如下的指令

``` sh
./run-xsession-on-xephyr.sh
```


## 相關案例

* [在 xephyr 上執行 awesome](https://samwhelp.github.io/note-about-awesome-wm/read/test/run-awesome-on-xephyr.html)


## 參考

* Arch Wiki / [Xephyr](https://wiki.archlinux.org/index.php/Xephyr)
