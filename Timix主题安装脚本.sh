#! /bin/bash

show_question() {
  echo -e "\033[1;34m$@\033[0m"
}

show_dir() {
  echo -e "\033[1;32m$@\033[0m"
}

show_error() {
  echo -e "\033[1;31m$@\033[0m"
}

end() {
  echo -e "\n     正在退出...\n"
  exit 0
}

continue() {
  show_question "\n     继续？  是的：（ Y/y ）， 不用：（ N/n ）： \n"
  read INPUT
  case $INPUT in
    [Yy]* ) ;;
    [Nn]* ) end;;
    * ) show_error "\n     不好意思，再试一次吧！"; continue;;
  esac
}

replace() {
  show_question "\n     发现你以前安装过这个主题，需要替换掉吗? 替换：（ Y/y ）， 不用：（ N/n ） :\n" 
  read INPUT
  case $INPUT in
    [Yy]* ) rm -rf $DEST_DIR/Timix*;;
    [Nn]* ) ;;
    * ) show_error "\n     不好意思，再试一次吧！"; replace $@;;
  esac
}

setup() {
  show_question "\n     现在要设置主题吗？  是的：（ Y/y ）， 不用：（ N/n ） \n"
  read INPUT
  case $INPUT in
    [Yy]* ) themes;;
    [Nn]* ) end;;
    * ) show_error "\n     不好意思，再试一次吧！"; setup;;
  esac
}

themes() {
  show_question "\n+------------------------------------------------------------------+

  请输入数字选择主题：（提示：笔记本用户推荐Laptop版，版式更紧凑。）

              (a)  TimixDark
              (b)  TimixDark-Doder
              (c)  TimixDark-Beryl
              (d)  TimixDark-Ruby
              (e)  TimixDark-Laptop
              (f)  TimixDark-Laptop-Doder
              (g)  TimixDark-Laptop-Beryl
              (h)  TimixDark-Laptop-Ruby
              (i)  TimixLight
              (j)  TimixLight-Doder
              (k)  TimixLight-Beryl
              (l)  TimixLight-Ruby
              (m)  TimixLight-Laptop
              (n)  TimixLight-Laptop-Doder
              (o)  TimixLight-Laptop-Beryl
              (p)  TimixLight-Laptop-Ruby

+------------------------------------------------------------------+\n"
  read INPUT
  case $INPUT in
    [Aa]* )  TimixDark;;
    [Bb]* )  TimixDark-Doder;;
    [Cc]* )  TimixDark-Beryl;;
    [Dd]* )  TimixDark-Ruby;;
    [Ee]* )  TimixDark-Laptop;;
    [Ff]* )  TimixDark-Laptop-Doder;;
    [Gg]* )  TimixDark-Laptop-Beryl;;
    [Hh]* )  TimixDark-Laptop-Ruby;;
    [Ii]* )  TimixLight;;
    [Jj]* )  TimixLight-Doder;;
    [Kk]* )  TimixLight-Beryl;;
    [Ll]* )  TimixLight-Ruby;;
    [Mm]* )  TimixLight-Laptop;;
    [Nn]* )  TimixLight-Laptop-Doder;;
    [Oo]* )  TimixLight-Laptop-Beryl;;
    [Pp]* )  TimixLight-Laptop-Ruby;;
    * ) show_error "\n     不好意思，再试一次吧！"; themes;;
  esac
}

TimixDark() {

# 设置TimixDark主题
  echo "     正在设置TimixDark主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark
  echo "     设置完成！"

}

TimixDark-Doder() {

# 正在设置TimixDark-Doder主题
  echo "     正在设置TimixDark-Doder主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Doder
  echo "     设置完成！"

}

TimixDark-Beryl() {

# 设置TimixDark-Beryl主题
  echo "     正在设置TimixDark-Beryl主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Beryl
  echo "     设置完成！"

}


TimixDark-Ruby() {

# 设置TimixDark-Ruby主题
  echo "     正在设置TimixDark-Ruby主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Ruby
  echo "    设置完成！"

}

TimixDark-Laptop() {

# 设置TimixDark-Laptop主题
  echo "     正在设置TimixDark-Laptop主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop
  echo "     设置完成！"

}

TimixDark-Laptop-Doder() {

# 设置TimixDark-Laptop-Doder主题
  echo "     正在设置TimixDark-Laptop-Doder主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Doder
  echo "     设置完成！"

}

TimixDark-Laptop-Doder() {

# 设置TimixDark-Laptop-Beryl主题
  echo "     正在设置TimixDark-Laptop-Beryl主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Beryl
  echo "     设置完成！"

}

TimixDark-Laptop-Ruby() {

# 设置TimixDark-Laptop-Ruby主题
  echo "     正在设置TimixDark-Laptop-Ruby主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixDark-Laptop-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixDark-Laptop-Ruby
  echo "     设置完成！"

}

TimixLight() {

# 设置TimixLight主题
  echo "     正在设置TimixLight主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight
  echo "     设置完成！"

}

TimixLight-Doder() {

# 设置TimixLight-Doder主题
  echo "     正在设置TimixLight-Doder主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Doder
  echo "     设置完成！"

}

TimixLight-Beryl() {

# 设置TimixLight-Doder主题
  echo "     正在设置TimixLight-Beryl主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Beryl
  echo "     设置完成！"

}

TimixLight-Ruby() {

# 设置TimixLight-Ruby主题
  echo "     正在设置TimixLight-Ruby主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Ruby
  echo "    设置完成！"

}

TimixLight-Laptop() {

# 设置TimixLight-Laptop主题
  echo "     正在设置TimixLight-Laptop主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop
  echo "     设置完成！"

}

TimixLight-Laptop-Doder() {

# 设置TimixLight-Laptop-Doder主题
  echo "     正在设置TimixLight-Laptop-Doder主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Doder
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Doder
  echo "     设置完成！"

}

TimixLight-Laptop-Doder() {

# 设置TimixLight-Laptop-Beryl主题
  echo "     正在设置TimixLight-Laptop-Beryl主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Beryl
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Beryl
  echo "     设置完成！"

}


TimixLight-Laptop-Ruby() {

# 设置TimixLight-Laptop-Ruby主题
  echo "     正在设置TimixLight-Laptop-Ruby主题为默认主题..."
  gsettings set org.gnome.desktop.interface gtk-theme TimixLight-Laptop-Ruby
  gsettings set org.gnome.desktop.wm.preferences theme TimixLight-Laptop-Ruby
  echo "     设置完成！"

}

install() {

  # 预览
  # 显示主题目录
  echo -e "\n     Timix 主题会安装在:\n"
  show_dir "\t$DEST_DIR"
  if [ "$UID" -eq "$ROOT_UID" ]; then
    echo -e "\n     主题会安装在系统目录，所有用户共享。"
  else
    echo -e "\n（提示：如果你想安装到系统目录，就用root权限运行这个脚本吧！）."
  fi

  continue

  # 安装

  # 检测主题目录
  if [ ! -d $DEST_DIR ]; then
    mkdir -p $DEST_DIR
  elif [[ -d $DEST_DIR/TimixDark && -d $DEST_DIR/TimixDark-Doder && -d $DEST_DIR/TimixDark-Beryl && -d $DEST_DIR/TimixDark-Ruby && -d $DEST_DIR/TimixDark-Laptop && -d $DEST_DIR/TimixDark-Laptop-Doder && -d $DEST_DIR/TimixDark-Laptop-Beryl && -d $DEST_DIR/TimixDark-Laptop-Ruby && -d $DEST_DIR/TimixLight && -d $DEST_DIR/TimixLight-Doder && -d $DEST_DIR/TimixLight-Beryl && -d $DEST_DIR/TimixLight-Ruby && -d $DEST_DIR/TimixLight-Laptop && -d $DEST_DIR/TimixLight-Laptop-Doder && -d $DEST_DIR/TimixLight-Laptop-Beryl && -d $DEST_DIR/TimixLight-Laptop-Ruby ]]; then
    replace $DEST_DIR
  fi

  echo -e "\n     正在安装 Timix..."
  
  # 复制文件

  ./Install

  echo -e "\n     安装完成！"

  setup

}

remove() {

  # 预览

  # 显示安装目录
  if [[ -d $DEST_DIR/TimixDark && -d $DEST_DIR/TimixDark-Doder && -d $DEST_DIR/TimixDark-Beryl && -d $DEST_DIR/TimixDark-Ruby && -d $DEST_DIR/TimixDark-Laptop && -d $DEST_DIR/TimixDark-Laptop-Doder && -d $DEST_DIR/TimixDark-Laptop-Beryl && -d $DEST_DIR/TimixDark-Laptop-Ruby && -d $DEST_DIR/TimixLight && -d $DEST_DIR/TimixLight-Doder && -d $DEST_DIR/TimixLight-Beryl && -d $DEST_DIR/TimixLight-Ruby && -d $DEST_DIR/TimixLight-Laptop && -d $DEST_DIR/TimixLight-Laptop-Doder && -d $DEST_DIR/TimixLight-Laptop-Beryl && -d $DEST_DIR/TimixLight-Laptop-Ruby ]]; then
    echo -e "\n    Timix主题 安装在了：\n"
    show_dir "\t$DEST_DIR"
    if [ "$UID" -eq "$ROOT_UID" ]; then
      echo -e "\n     主题会从系统目录删除"
    else
      echo -e "\n     主题会从你的用户目录删除"
    fi

    continue
  
  else
    show_error "\n     Timix 主题没有安装在:\n"
    show_dir "\t$DEST_DIR\n"
    end
  fi

  # 卸载

  echo -e "\n     正在删除 Timix主题 ..."

  # 卸载文件

  rm -rf $DEST_DIR/Timix*

  echo "     删除成功！"
  echo "     看来你并不喜欢这个主题，可能我这个主题还做得不够好！."
}

ROOT_UID=0
DEST_DIR=

# 主题目录
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/themes"
else
  DEST_DIR="$HOME/.themes"
fi

main() {
  show_question "     你是想安装，还是卸载？  安装：（ I/i ）  卸载：（ R/r ）： \n"
  read INPUT
  case $INPUT in
    [Ii]* ) install;;
    [Rr]* ) remove;;
    * ) show_error "\n     不好意思，再试一次吧！"; main;;
  esac
}

echo -e "\e[1m\n     +----------------------------------------------+"
echo -e "     |              Timix 主题安装脚本              |"
echo -e "     +----------------------------------------------+\n\e[0m"

main
