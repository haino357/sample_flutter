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

## flutterコマンド
### クリーンビルド
ビルド時に生成されるファイル群のクリーン (削除) 時に利用する。
buildと.dart_toolディレクトリを削除する。
```
flutter clean
```
### pubspec.yamlを変更後実行するコマンド
```
flutter pub get
```

### flutterコマンド参考
- [Flutterコマンド一覧まとめ](https://qiita.com/kurun_pan/items/f9251b1827ce9dca9e14#-flutter-clean)

## 依存関係を記載するファイル
` pubspec.yaml`には下記のような依存を追加している
**静的解析強化**
```
dev_dependencies:
  pedantic_mono: any　
```
**スプラッシュ画面作成**
```
dependencies:
  flutter_native_splash: ^2.1.2+1
```

## 静的解析強化(pedantic_mono)導入
### 目的
(Flutter推奨 + α)に静的解析強化を行うため

### 具体的な方法
1. インストール

プロジェクトファイル直下の`pubspec.yaml`に下記のように依存関係を記載する。
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

## スプラッシュ画面作成

### 具体的な方法
1. インストール

プロジェクトファイル直下の`pubspec.yaml`に下記のように依存関係を記載する。
```
dev_dependencies:　　　　　　
  flutter_native_splash: ^2.1.2+1
```

2. スプラッシュ画面の設定
　下記の設定をカスタマイズし、`pubspec.yaml`に追記する、もしくは`flutter_native_splash.yaml`をルートプロジェクトフォルダに追加する。
```
flutter_native_splash:

  # This package generates native code to customize Flutter's default white native splash screen
  # with background color and splash image.
  # Customize the parameters below, and run the following command in the terminal:
  # flutter pub run flutter_native_splash:create
  # To restore Flutter's default white splash screen, run the following command in the terminal:
  # flutter pub run flutter_native_splash:remove

  # color or background_image is the only required parameter.  Use color to set the background
  # of your splash screen to a solid color.  Use background_image to set the background of your
  # splash screen to a png image.  This is useful for gradients. The image will be stretch to the
  # size of the app. Only one parameter can be used, color and background_image cannot both be set.
  color: "#42a5f5"
  #background_image: "assets/background.png"

  # Optional parameters are listed below.  To enable a parameter, uncomment the line by removing
  # the leading # character.

  # The image parameter allows you to specify an image used in the splash screen.  It must be a
  # png file and should be sized for 4x pixel density.
  #image: assets/splash.png

  # The branding property allows you to specify an image used as branding in the splash screen.
  # It must be a png file. Currently, it is only supported for Android < v12 and iOS.
  #branding: assets/dart.png

  # To position the branding image at the bottom of the screen you can use bottom, bottomRight,
  # and bottomLeft. The default values is bottom if not specified or specified something else.
  #branding_mode: bottom

  # The color_dark, background_image_dark, image_dark, branding_dark are parameters that set the background
  # and image when the device is in dark mode. If they are not specified, the app will use the
  # parameters from above. If the image_dark parameter is specified, color_dark or
  # background_image_dark must be specified.  color_dark and background_image_dark cannot both be
  # set.
  #color_dark: "#042a49"
  #background_image_dark: "assets/dark-background.png"
  #image_dark: assets/splash-invert.png
  #branding_dark: assets/dart_dark.png

  # Android 12 handles the splash screen differently than previous versions.  Please visit
  # https://developer.android.com/guide/topics/ui/splash-screen
  # Following are Android 12 specific parameter.
  android_12:
    # The image parameter sets the splash screen icon image.  If this parameter is not specified,
    # the app's launcher icon will be used instead.
    # Please note that the splash screen will be clipped to a circle on the center of the screen.
    # App icon with an icon background: This should be 960×960 pixels, and fit within a circle
    # 640 pixels in diameter.
    # App icon without an icon background: This should be 1152×1152 pixels, and fit within a circle
    # 768 pixels in diameter.
    #image: assets/android12splash.png

    # App icon background color.
    #icon_background_color: "#111111"

    # The image_dark parameter and icon_background_color_dark set the image and icon background
    # color when the device is in dark mode. If they are not specified, the app will use the
    # parameters from above.
    #image_dark: assets/android12splash-invert.png
    #icon_background_color_dark: "#eeeeee"

  # The android, ios and web parameters can be used to disable generating a splash screen on a given
  # platform.
  #android: false
  #ios: false
  #web: false

  # The position of the splash image can be set with android_gravity, ios_content_mode, and
  # web_image_mode parameters.  All default to center.
  #
  # android_gravity can be one of the following Android Gravity (see
  # https://developer.android.com/reference/android/view/Gravity): bottom, center,
  # center_horizontal, center_vertical, clip_horizontal, clip_vertical, end, fill, fill_horizontal,
  # fill_vertical, left, right, start, or top.
  #android_gravity: center
  #
  # ios_content_mode can be one of the following iOS UIView.ContentMode (see
  # https://developer.apple.com/documentation/uikit/uiview/contentmode): scaleToFill,
  # scaleAspectFit, scaleAspectFill, center, top, bottom, left, right, topLeft, topRight,
  # bottomLeft, or bottomRight.
  #ios_content_mode: center
  #
  # web_image_mode can be one of the following modes: center, contain, stretch, and cover.
  #web_image_mode: center

  # To hide the notification bar, use the fullscreen parameter.  Has no effect in web since web
  # has no notification bar.  Defaults to false.
  # NOTE: Unlike Android, iOS will not automatically show the notification bar when the app loads.
  #       To show the notification bar, add the following code to your Flutter app:
  #       WidgetsFlutterBinding.ensureInitialized();
  #       SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom, SystemUiOverlay.top]);
  #fullscreen: true
  
  # If you have changed the name(s) of your info.plist file(s), you can specify the filename(s) 
  # with the info_plist_files parameter.  Remove only the # characters in the three lines below,
  # do not remove any spaces:
  #info_plist_files:
  #  - 'ios/Runner/Info-Debug.plist'
  #  - 'ios/Runner/Info-Release.plist'
```
3. パッケージの実行
上記項目の設定を追加したら、下記コマンドをターミナルで実行する。
```
flutter pub run flutter_native_splash:create

// 実行結果
[Android] Updating launch background(s) with splash image path...
[Android]    - android/app/src/main/res/drawable/launch_background.xml
[Android]    - android/app/src/main/res/drawable-v21/launch_background.xml
[Android] Updating styles...
[Android]    - android/app/src/main/res/values-v31/styles.xml
[Android] No android/app/src/main/res/values-v31/styles.xml found in your Android project
[Android] Creating android/app/src/main/res/values-v31/styles.xml and adding it to your Android project
[Android]    - android/app/src/main/res/values/styles.xml
[iOS] Updating LaunchScreen.storyboard with width, and height
[iOS] Updating ios/Runner/Info.plist for status bar hidden/visible
Web folder not found, skipping web splash update...
╔════════════════════════════════════════════════════════════════════════════╗
║                                 WHAT IS NEW:                               ║
╠════════════════════════════════════════════════════════════════════════════╣
║ You can now keep the splash screen up while your app initializes!          ║
║ No need for a secondary splash screen anymore. Just use the remove()       ║
║ method to remove the splash screen after your initialization is complete.  ║
║ Check the docs for more info.                                              ║
╚════════════════════════════════════════════════════════════════════════════╝

Native splash complete. 👍
Now go finish building something awesome! 💪 You rock! 🤘🤩
```

4. アプリをビルドして実行する。

### スプラッシュ画面作成参考資料
- [公式ドキュメント](https://pub.dev/packages/flutter_native_splash)

## Widget
Scaffoldのbodyに複数のウェジェットを表示するには、主に３つのウェジェットを使う。
- Column : 縦方向に複数のウェジェットを並べて表示
- Row : 横方向に複数のウェジェットを並べて表示
- Stack : 複数のウェジェットを重ねて表示

**例**
```
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( //RowとStackでも同じ
        children: [
          Widget1(),
          Widget2(),
          Widget3(),
          ・・・
        ],
      ),
    );
  }
```

## Flutter全体の参考
- [Flutter実践入門 ～環境構築からAndroid/iOS/Webに広告を付けて同時にリリース!!～](https://zenn.dev/kazutxt/books/flutter_practice_introduction)
- [2021年 - これからFlutterを始める人へ学習方法のススメ](https://zenn.dev/tsuruo/articles/6cc7b5bf24bb65#%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%82%92%E4%BD%93%E7%B3%BB%E7%9A%84%E3%81%AB%E5%AD%A6%E3%81%B6%E3%81%AE%E3%81%AB%E3%82%AA%E3%82%B9%E3%82%B9%E3%83%A1)