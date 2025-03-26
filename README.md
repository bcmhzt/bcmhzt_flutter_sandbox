# flutter_application_sandbox
iOS App / Android Appのデプロイフローや開発フローを確認・整理するためのダミーのアプリケーションです。また同時にFlutterの基本的な開発スタイル構築に利用します。  

`.works`にそれらの詳細Documentがあります。

## Getting Started

簡易的な開発はChromeを使って行います。シュミレータの起動。
```
% flutter run -d chrome --web-port 50000
```

## Buildの手順

### iOS

iOS用にビルドする
```
% flutter clean
% flutter pub get
% flutter build ios --release
```
以下にビルドされる。（が、特に直接は使わない）
```
build/ios/iphoneos/Runner.app
```
iOSディレクトリへ移動してRunner.xcworkspaceを起動
```
% cd ios
% open Runner.xcworkspace
```
Xcodeで、指定のRunnerを選択したまま、上部メニューのProduct->Archiveを選択する。するとアーカイブのビルドが開始されます。終了するとArchiveの画面が自動的に起動して履歴が表示されます。



## Android
coming sson

# Git repos

[bcmhzt_flutter_sandbox](https://github.com/bcmhzt/bcmhzt_flutter_sandbox)









------
##  options

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.