---
title: 快速入門
nav_order: 1
---


## 範例

* [demo-start](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start)


## 測試環境

* Xubuntu 20.04


## 說明


### 安裝步驟

主要有兩個檔案

* [demo-session.desktop](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/demo-session.desktop)
* [demo-session.sh](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/demo-session.sh)

執行下面指令

``` sh
sudo install -m 644 "demo-session.desktop" "/usr/share/xsessions/demo-session.desktop"
sudo install -m 755 "demo-session.sh" "/usr/bin/demo-session.sh"
```

安裝到如下的路徑

* [/usr/share/xsessions/demo-session.desktop](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/demo-session.desktop)
* [/usr/bin/demo-session.sh](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-concept/demo-start/demo-session.sh)


### 測試步驟

從登入畫面，選擇「Demo Session」，

登入後，應該只有出現「xterm」，因為沒有啟動「[Window Manager](https://en.wikipedia.org/wiki/Window_manager)」，

所以視窗是無法移動，也沒有「[Window Decoration](https://en.wikipedia.org/wiki/Window_(computing)#Window_decoration)」。

這時候您可以在「xterm」上面輸入指令，啟動某一個「[Window Manager](https://en.wikipedia.org/wiki/Window_manager)」，

舉例，若有安裝「xfwm4」，就可以執行下面指令

``` sh
xfwm4 &
```

啟動後，就可以看到「[Window Decoration](https://en.wikipedia.org/wiki/Window_(computing)#Window_decoration)」

也可以移動視窗了。



接下來，您也可以啟動其他的元件，

例如，啟動「tint2」


``` sh
tint2 &
```

就會出現一個「panel」。


## 注意事項

* 上面要登出，只要「killall -9 xterm」就可以登出，

或是直接在「xterm」，下指令輸入「exit」，按下「Enter」，就會關閉「xterm」，於是也就會登出了。

* 在上面提到的「 /usr/bin/demo-session.sh」，裡面啟動的是「xterm」，
您也可以改成其他的「terminal」，

例如，我有另外寫了一個範例「[zero-session](https://github.com/samwhelp/note-about-xsession/tree/gh-pages/_demo/xsession-zero/zero-session)」，是執行「[sakura](http://manpages.ubuntu.com/manpages/focal/en/man1/sakura.1.html) (Package: [sakura](https://packages.ubuntu.com/focal/sakura))」。

或是「xterm」也可以改成其他應用程式，例如「firefox」，您可以實驗看看。


## 原始討論串

* [#2 回覆: [Help]顯卡 NVIDIA GeForce 210 on 2020.04版?](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362406#forumpost362406)
