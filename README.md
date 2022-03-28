# sample_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## dartで記載するコードのディレクトリ
`test_flutter_app>lib>main.dart`
共通のコードは上記に記載する。

## 依存関係を記載するファイル
` pubspec.yaml`には下記のような依存を追加している
**静的解析強化**
```
dev_dependencies:
  pedantic_mono: any　
```

## 静的解析強化(pedantic_mono)導入
### 目的
(Flutter推奨 + α)に静的解析強化を行うため

### 具体的な方法
1. インストール

プロジェクトファイル直下の`pubspec.yaml`に下記のように記載する。
```
dev_dependencies:　　　　　　// 既存部
  pedantic_mono: any　　　　// 追加部
```

2. analysis_options.yamlの配置.   
`analysis_options.yaml`ファイルをプロジェクト直下へ配置する。  
`analysis_options.yaml`の中身は下記。
```
# https://pub.dev/packages/pedantic_mono
include: package:pedantic_mono/analysis_options.yaml
```

### デフォルト
`Flutter 2.5.0`より、`flutter_lints`がデフォルトで用意される。それが下記で`analysis_options.yaml`に記載される。
```
# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml
```

### 静的解析強化導入参考資料
- [pedantic_mono](https://pub.dev/packages/pedantic_mono)
- [Dart/Flutter の静的解析強化のススメ](https://medium.com/flutter-jp/analysis-b8dbb19d3978)
- [Flutterのテンプレートにlinterが入りますよ](https://zenn.dev/sugitlab/articles/flutter_linter_recommend_sugitlab)

## Flutter全体の参考
- [Flutter実践入門 ～環境構築からAndroid/iOS/Webに広告を付けて同時にリリース!!～](https://zenn.dev/kazutxt/books/flutter_practice_introduction)
- [2021年 - これからFlutterを始める人へ学習方法のススメ](https://zenn.dev/tsuruo/articles/6cc7b5bf24bb65#%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%82%92%E4%BD%93%E7%B3%BB%E7%9A%84%E3%81%AB%E5%AD%A6%E3%81%B6%E3%81%AE%E3%81%AB%E3%82%AA%E3%82%B9%E3%82%B9%E3%83%A1)