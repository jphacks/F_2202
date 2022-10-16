# Flutter環境構築

使用バージョン: flutter 3.3.2

管理ツール: [fvm](https://fvm.app/)


### fvmのセットアップ

```
fvm install 3.3.2 /// ここまででOK

/// 上でビルドできない人は下もやる

cd プロジェクト内

fvm use 3.3.2
```

### 環境構築

```
make setup

export PATH="$PATH":"$HOME/.pub-cache/bin"

melos run develop

cd mobile/ios

pod install
```

### 実行コマンド

```
melos run  ///5番を選択(melos run run)
```

### melos番号

1. 環境とかを整える
2. pub get
3. l10nファイル生成
4. freezed実行コマンド
5. ビルド
6. clean
