# TodoDaily

**習慣化 × シンプルなTodo管理アプリ（iOS）**  
毎日続けたいことを“見える化”。モチベーションを維持しながら自己管理をサポートします。

---

## 特徴

- 毎日の習慣づくりを強力サポート
- 習慣タスクには達成スタンプ・グラフ・連続記録（ストリーク）付き
- 通常タスク・習慣タスクをまとめてシンプル管理
- ミニマルで直感的なUI  
- ダークモード／ライトモード対応

---

## 機能一覧

- タスク管理（追加・編集・削除、カテゴリ分け）
- 習慣タスクの繰り返し設定＆進捗可視化
- 達成率／連続記録（ストリーク）自動集計
- 達成スタンプ・バッジ獲得でモチベーションUP
- タスクごとのリマインダー・通知機能
- グリッド／リスト表示切り替え
- ローカル保存＋iCloud同期（予定）

---

## 画面イメージ

| ホーム | タスク追加 | 習慣分析 | 設定 |
|:---:|:---:|:---:|:---:|
| ![ホーム画面](ワイヤーフレーム_ホーム画面.png) | ![タスク追加](ワイヤーフレーム_タスク追加・編集画面.png) | ![習慣分析](ワイヤーフレーム_習慣（記録・分析）画面.png) | ![設定](ワイヤーフレーム_設定画面.png) |

---

## 動作環境・技術スタック

- iOS 17 以降
- Swift, SwiftUI
- ローカルデータ保存: SwiftData
- グラフ: Swift Charts
- テスト: XCTest
- パッケージ管理: Swift Package Manager

---

## セットアップ手順

1. **このリポジトリをクローン**
   ```sh
   git clone https://github.com/shiba-tt/TodoDaily.git
   cd TodoDaily
   ```

2. **Xcodeで開く**  
   `TodoDaily.xcodeproj` をダブルクリック or Xcodeから開く

3. **必要なライブラリの取得**  
   Swift Package Manager で自動的に依存ライブラリが解決されます。

4. **実機またはシミュレータでビルド＆実行**

---

## 今後の予定（Roadmap）

- iCloud同期/バックアップ
- ホーム画面ウィジェット対応
- サブタスク対応
- 詳細な分析グラフの追加
- より細かいカスタム繰り返しルール
- App Store公開準備

---

## ライセンス

MIT License

---

## Author

- [shiba-tt](https://github.com/shiba-tt)

---

## English (Summary)

**TodoDaily is a simple yet powerful iOS app that helps you build daily habits and manage todos efficiently, with visualized progress and motivating features like streaks, badges, and reminders.**


