#!/bin/sh
# Motivnavi OS インストーラー起動ラッパー
# pkexec は DISPLAY / WAYLAND_DISPLAY などの環境変数を消すため、
# root で動く Calamares が画面に接続できず落ちる（qt.qpa.xcb: could not connect to display）。
# root にこの画面への表示を許可し、sudo -E で環境変数を引き継いで起動する。
# live ユーザーは /etc/sudoers.d/00-live で NOPASSWD のため、パスワードは聞かれない。

xhost +si:localuser:root >/dev/null 2>&1

if command -v calamares >/dev/null 2>&1; then
    exec sudo -E eggs sysinstall calamares
else
    # Calamares が無い場合は CLI インストーラー（krill）
    exec sudo -E eggs sysinstall krill
fi
