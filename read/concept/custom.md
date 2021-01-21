---
title: 自訂
nav_order: 12
---


## 說明

延續[上一篇](https://samwhelp.github.io/note-about-xsession/read/concept/start.html)提到的案例。


原本的「[demo-session.sh](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/demo-session.sh)」內容如下


``` sh
#!/bin/sh

exec xterm -fa Monospace -fs 16
```

將它修改如下

``` sh
#!/bin/sh

xterm -fa Monospace -fs 16 &

exec xfwm4
```


## 測試步驟

可以採用「登出登入」的方式來測試，

也可以採用[「Xephyr」的方式](https://samwhelp.github.io/note-about-xsession/read/concept/xephyr.html)來測試


## 其他範例


* [demo-wm-with-panel](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-wm-with-panel) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-wm-with-panel/demo-session.sh)
* [demo-wm-with-panel-wallpaper](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper/demo-session.sh)
* [demo-wm-with-panel-wallpaper-other-compositor](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper-other-compositor) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper-other-compositor/demo-session.sh)
* [demo-wm-with-panel-wallpaper-other-compositor-and-keybind](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper-other-compositor-and-keybind) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-wm-with-panel-wallpaper-other-compositor-and-keybind/demo-session.sh)
* [demo-firefox](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-firefox) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-firefox/demo-session.sh)
* [demo-xdg-autostart](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-xdg-autostart) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-xdg-autostart/demo-session.sh)
* [demo-volume-control-status-icon](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-volume-control-status-icon) / [demo-session.sh](https://github.com/samwhelp/note-about-xsession/blob/gh-pages/_demo/xsession-concept/demo-volume-control-status-icon/demo-session.sh)
