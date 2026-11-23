# Motivnavi OS - penguins-eggs 設定

**眠っている2 in 1タブレットを、カーナビに。**

このリポジトリは、Motivnavi OS のライブISO作成とインストーラー（Calamares）用の penguins-eggs 設定一式です。
`/etc/penguins-eggs.d/` に配置して使います。

- 公式サイト: https://motivnavi.enoki.xyz
- 製作者: エノキ電気 ENOKI ELECTRONICS（https://enoki.xyz）
- GitHub: https://github.com/jikantoki
- お問い合わせ: info@enoki.xyz

## Motivnavi OS について

Motivnavi OS は、家で使われなくなった中古の2 in 1タブレットを、車載カーナビとして再利用するための Linux 派生OSです。

- Android Auto 対応（[Linux Auto](https://github.com/jikantoki/LinuxAuto)）
- 日本語タッチキーボード標準搭載（[Fcitx5 Osk](https://github.com/fortime/fcitx5-osk)）
- Bluetooth での音楽再生と通話（[Mediablue](https://github.com/jikantoki/mediablue)）
- インターネットラジオ（[Castify](https://github.com/jikantoki/castify)）
- 起動画面（[Motivnavi Plymouth](https://github.com/jikantoki/motivnavi-plymouth)）
- KDE Plasma 採用、大きめのUIとウィンドウ自動最大化

詳しくは [公式サイト](https://motivnavi.enoki.xyz) をご覧ください。

## ディレクトリ構成

```
.
├── custom.yaml                 # eggs の設定上書き（ISO名の接頭辞・圧縮方式・インストーラー）
├── custom.exclude.list         # ISOに含めないファイルの一覧
├── brain.d/                    # ISO作成・インストール処理の手順定義
│   ├── base.yaml.tmpl          # 全体の処理計画（polkit の提供元表示を Motivnavi OS に変更済み）
│   ├── index.yaml              # ディストリビューション判定
│   └── modules/                # ディストリビューション別の処理
├── branding.default/
│   ├── applications/
│   │   └── install-system.desktop.tmpl   # デスクトップの「Motivnavi OS をインストール」
│   ├── artwork/
│   │   └── penguins-eggs.svg             # インストーラーのアイコン（中身は Motivnavi ロゴ）
│   ├── calamares/branding/
│   │   ├── branding.desc.tmpl            # Calamares のブランディング設定
│   │   ├── show.qml                      # インストール中のスライドショー（日本語・8枚）
│   │   ├── logo.png                      # 製品アイコン/ロゴ
│   │   ├── welcome.png                   # ようこそ画面のバナー
│   │   └── slide-background.png          # スライドショーの背景
│   └── livecd/
│       ├── isolinux.theme.cfg            # ISOLINUX メニューの配色
│       └── splash.png                    # ブートメニューの背景
└── scripts/
    ├── generate-menus.sh       # GRUB/ISOLINUX メニュー生成（表示名を Motivnavi OS に固定）
    └── ...
```

## 使い方

1. このフォルダの中身を、ISOを作成するマスター環境の `/etc/penguins-eggs.d/` に配置します。

   ```bash
   sudo cp -r ./* /etc/penguins-eggs.d/
   sudo chmod +x /etc/penguins-eggs.d/scripts/*.sh
   ```

2. 通常どおり eggs でISOを作成します。ISO名には `motivnavi-os-` が付きます。

## ブランディングの変更箇所

| 対象 | ファイル | 内容 |
|---|---|---|
| OS名・URL・配色 | `branding.default/calamares/branding/branding.desc.tmpl` | 製品名、バージョン、各種リンク、サイドバーの色 |
| スライドショー | `branding.default/calamares/branding/show.qml` | 文言・配色・フォント |
| ロゴ・バナー | `branding.default/calamares/branding/*.png` | 画像を差し替え |
| ブートメニュー | `scripts/generate-menus.sh`、`branding.default/livecd/` | 表示名・項目名・背景 |
| インストーラーの起動アイコン | `branding.default/applications/`、`branding.default/artwork/` | 名前・説明・アイコン |

バージョン番号（1.0）は、Calamares で必須の `version` と `shortVersion` にのみ記載しています。

## 注意事項

- `componentName: eggs`、アイコン名 `penguins-eggs`、polkit のアクションID など、eggs 本体が参照する内部名は変更しないでください。変更するとインストーラーが起動しなくなります。
- `install-system.desktop.tmpl` の `Version=1.0` はデスクトップエントリ仕様のバージョンで、OSのバージョンではありません。
- ブートメニュー（GRUB/ISOLINUX）は日本語表示に対応していないため、英語表記です。
- スライドショーは `Noto Sans CJK JP` フォントを指定しています。未インストールの場合は別の日本語フォントで表示されます。

## クレジット

- インストーラー作成ツール: [penguins-eggs](https://github.com/pieroproietti/penguins-eggs)（Piero Proietti）
- インストーラー: [Calamares](https://calamares.io)

---

Motivnavi OS © 2026 エノキ電気 ENOKI ELECTRONICS
