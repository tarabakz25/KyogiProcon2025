## 🌟 競技部門テーマ：「エ。ー縁結びの誘導についてー」

この競技は、「縁結び」をモチーフにしたパズル形式の問題です。  
フィールド上に数字が書かれた「エンティティ（要素）」が配置されており、同じ数字を持つエンティティを近づけてペアを作ります。

---

## 📌 ゲームの基本ルール：

### ① フィールドとエンティティ
- フィールドは正方形（縦横同じマス数）です。
  - **サイズ**：最小4×4マス、最大24×24マス
- 各マスには整数（エンティティ）が1つずつ配置されている。
- 各エンティティの数値は、**0～（フィールドのマス数÷2 - 1）** の範囲です。
  - 例）4×4マスなら数値は0〜7
- フィールド内には、必ず同じ整数を持つエンティティが2つずつ存在します。
- **ペアの成立条件**：
  - 同じ数値のエンティティが上下左右（4近傍）のいずれかで隣接すると「ペア」として成立します。

### ② 「園」と「導き」
- **導きとは？**  
  エンティティを移動させる操作であり、これが競技のアクションです。
  - **園とは？**：導きを行う際にフィールド上で指定する正方形領域（2×2以上、最大はフィールドのサイズ）。
- 導きの手順：
  1. 園の場所（左上の座標）を決定
  2. 園のサイズ（n×n）を決定
  3. 園を**右方向に90度回転**させることで、エンティティの配置を変化させる。
- 園の位置はフィールドからはみ出てはいけません。

### ③ 導きの例：
例えば、次のような4×4のフィールドがあった場合：

```
最初の状態：
  6  3  4  0
  1  5  3  5
  2  7  0  6
  1  2  7  4
```

座標(1,1)〜(2,2)に2×2の園を指定し、右に90度回転すると：

```
変更前：       変更後：
  5  3          1  5
  7  0    →     7  3
```

となり、園の内部のみが回転します。

---

## 📥 問題の提供形式（JSON形式）
競技では、フィールドやエンティティ配置情報がJSON形式で提供されます。

**例：**
```json
{
  "startsAt": 1743489020, 
  "problem": { 
    "field": { 
      "size": 4, 
      "entities": [ 
        [6, 3, 4, 0], 
        [1, 5, 3, 5], 
        [2, 7, 0, 6], 
        [1, 2, 7, 4] 
      ] 
    } 
  } 
}
```

---

## 📤 回答方法（JSON形式）
回答（導きの操作）は次のようなJSON形式で行います。

**例：**
```json
{
  "ops": [
    {"x": 0, "y": 0, "n": 2},  // (0,0)から2×2の園を回転
    {"x": 2, "y": 2, "n": 2}   // (2,2)から2×2の園を回転
  ]
}
```

---

## 🕒 試合の進行方法
- 1試合は複数チームが同時に競います（制限時間：約5分）。
- 試合開始後に問題データが提供されます。
- 各チームは制限時間内に回答をサーバーへ送信（最大30回送信可能）。
- 最終的に提出した有効な回答が評価対象になります。

---

## 🎖️ 勝敗の決定方法（優先順位順）
1. 作成したペアの数（多いほうが勝ち）
2. 使用した導きの手数（少ないほうが勝ち）
3. 最後に有効回答を送信した時間（早いほうが勝ち）

---

## 📡 通信環境について
- 会場で用意された有線LANを利用します。
- 回答を送信するためのPCを最低1台（LANポート搭載必須）用意。
- 無線LAN（Wi-Fi）の利用は禁止、Bluetoothは許可されています。

---

## 🚨 注意事項まとめ
- 持ち込みPCは最大3台、電力合計500W以内。
- 他チームや外部との通信は禁止です。
- 競技中の画面や操作状況は審査委員に公開されます。



# 勝つための前提条件
 ## - 全ペアを作ること
 ## - 時間内に終わるプログラムであること