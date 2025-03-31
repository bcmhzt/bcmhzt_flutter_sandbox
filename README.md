# flutter_application_sandbox
iOS App / Android Appのデプロイフローや開発フローを確認・整理するためのダミーのアプリケーションです。また同時にFlutterの基本的な開発スタイル構築に利用します。  

`.works`にそれらの詳細Documentがあります。

## Getting Started

簡易的な開発はChromeを使って行います。シュミレータの起動。
```
% flutter clean;
% flutter pub get;
% flutter run -d chrome --web-port 50000;
```

## Buildの手順

### iOS

ビルド番号を上げる
flutter_application_sandbox/pubspec.yamlの以下の箇所を修正（+1の部分がビルド番号）
```
version: 1.0.0+1
```

iOS用にビルドする  
--releaseなしでもOK
```
% flutter clean
% flutter pub get
% flutter build ios --release *めっちゃ時間かかる
(% flutter build ios *めっちゃ時間かかる)　
```
以下にビルドされる。（が、特に直接は使わない）
```
build/ios/iphoneos/Runner.app
```
iOSディレクトリへ移動してRunner.xcworkspaceを起動
(このときXcodeとかApple Store connectとかにログインしていないとだめそう。)
```
% open ios/Runner.xcworkspace *めっちゃ時間かかる(xcodeが起動する)
```
Xcodeで、指定のRunnerを選択したまま、上部メニューのProduct->Archiveを選択する。するとアーカイブのビルドが開始されます。終了するとArchiveの画面が自動的に起動して履歴が表示されます。
履歴にUploaded to Appleが表示されていればOK
履歴一覧で最新のRunnerを選択して、右のDistribute Appを押す。
TestFlight Internal Onlyを選んで実行
成功したら終了

Apple Store Connectにログインして、アプリから該当のアプリを選択
TestFlightのタブを選択
iOSのビルドの一覧で（処理中）になっていたらOK. (処理中ステータスが表示されるまでも結構時間がかかる。数分) しばらくすると「テスト準備完了」になる（めっちゃ時間がかかる



これでTestFlightに新しいビルドが追加されます。
標準的な暗号化アルゴリズムを選択
フランスに配信する予定は「なし」を選択
これで新しいビルドがTestFlightに上がります。

iPhone端末のTestFlightに新しいビルドが上がって来ないときは、内部テスターを一度削除して、新しい内部テスターを作成して招待し直します。そのとき「自動配信」を選択しておくこと！！


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