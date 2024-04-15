# アプリケーション名
**Prebo (プレボ)**
<br>
<br>

# アプリケーション概要

`プレゼントを記録し、思い出を大切にするアプリケーション`です。  
プレゼントを贈る大切な人を思い浮かべて**プレゼントボックスを作成**し、  
その箱に**プレゼントを一つ一つ入れていく**ようなイメージで、`プレゼントを贈った相手`と`プレゼント`の`記録を作る`ことができます。
<br>
<br>

# URL
https://presentbox.onrender.com
<br>
<br>

# テスト用アカウント
・ Basic認証パスワード：`admin`  
・ Basic認証ID：`2222`  
・ メールアドレス：`test@test`  
・ パスワード：`111aaa`  
<br>
<br>

# 利用方法

## プレゼントボックスを作成する
1. トップページ(一覧ページ)の`サインアップアイコン`をクリックし、新規ユーザー登録画面に遷移する  
2. 新規ユーザー登録画面で`ユーザー登録`をする  
3. ヘッダー右上にある`プレゼントボックス追加アイコン`をクリックし、プレゼントボックス新規作成ページへ遷移  
4. 必須事項を入力し、`「つくる」ボタン`をクリック  

**プレゼントボックス作成画面**  

[![Image from Gyazo](https://i.gyazo.com/8d155ea96cbf2bd56b8cc77d82c0aa30.gif)](https://gyazo.com/8d155ea96cbf2bd56b8cc77d82c0aa30)　

### プレゼントを作成する
※ **プレゼントボックス作成後**に**プレゼント追加ボタンが画面の右下に表示**されます。  
1. `プレゼント追加ボタン`をクリックし、プレゼント新規作成ページへ遷移  
2. 必須事項を入力し、`「つくる」ボタン`をクリック  <br>

**プレゼント作成画面**  

[![Image from Gyazo](https://i.gyazo.com/d077733187e5e991890f70307b10b5cc.gif)](https://gyazo.com/d077733187e5e991890f70307b10b5cc)

<br>
<br>

# アプリケーションを作成した背景
`プレゼントをする`という行為はとても素敵なイベントですが、  
**何を渡したのかわからなくなってしまう**ことが多々あります。  <br>

気がつけば、去年と同じプレゼントを選んていたり、前回と同じ予算で準備しようにも記録がなくて困ってしまったりという経験をした人は
少なくないのではないでしょうか。  <br>

私自身、写真を撮ってSNSに投稿するという方法もありますが、ついつい**見映えを気にしてしまって、結局投稿できない**ということが多々あります。  
`そうした思い出は、アルバムの中に埋もれていき、後で振り返ることが難しく`なります。  <br>

こうした課題を解決するため、`プレゼントの記録に特化したアプリケーションを開発`することにしました。  

<br><br>

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1WjMNwPp2_6gxAwK0LaxKFQ947SStH2WuJ2OEK9hYWts/edit?usp=sharing
<br>
<br>
# 実装した機能についての画像やGIFおよびその説明
プレゼントを贈る大切な人を思い浮かべて`プレゼントボックス`を作成し、その箱に`プレゼント`を一つずつ入れていくようなイメージで、
`プレゼントを贈った相手`と`プレゼントの記録`を作ることができます。

### プレゼントボックス管理機能
・新規作成機能  
・編集削除機能  
・詳細表示機能  
<br>
プレゼントを贈る大切なひとの`箱`を作ります。  
新規作成を手軽にするため、最初は`名前`と`画像`の入力のみで作成できます。  
詳細表示画面では、`内容の編集削除`、および、`より詳細な情報(誕生日・所属・記念日・好きなもの・嫌いなもの)`を登録することが可能です。 
<br>

**プレゼントボックス詳細画面**  
https://i.gyazo.com/8403f929f098ca12a90921dab148a019.gif
[![Image from Gyazo](https://i.gyazo.com/39deb01632f235c8ff05bd3737366d50.gif)](https://gyazo.com/39deb01632f235c8ff05bd3737366d50)
<br>

### プレゼント管理機能
プレゼントボックスに紐づく`プレゼント`を`作成`・`編集`・`削除`することができます。　　<br>
・新規作成機能  
・編集削除機能  
・詳細表示機能  

`プレゼントの箱を開ける時のようなワクワク感`を大切にしたくて、プレゼント詳細画面に遷移すると`紙吹雪が舞う演出`を加えました。  

**プレゼント詳細画面**  
https://i.gyazo.com/39deb01632f235c8ff05bd3737366d50.gif
[![Image from Gyazo](https://i.gyazo.com/39deb01632f235c8ff05bd3737366d50.gif)](https://gyazo.com/39deb01632f235c8ff05bd3737366d50)
<br>
<br>

# 実装予定の機能
プレゼントボックスを振り返った時、プレゼントの記録だけでなく思い出が溢れかえるようなツールとなるよう、開発を進めております。 <br>   

・画像の複数投稿機能  
・マイページ実装  
・プレゼントを受け取った時の記録作成機能  
・プレゼントを渡した場所の記録機能  
・カレンダー機能  
・プレゼント詳細ページを画像生成する機能  <br>
<br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/f40cd95be8486c01b0b692db52761565.png)](https://gyazo.com/f40cd95be8486c01b0b692db52761565)
<br><br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/a2fe250bbcd0d16c6be463010a599c5d.png)](https://gyazo.com/a2fe250bbcd0d16c6be463010a599c5d)  
2024.4.13　グレーの色の項目は今後実装予定  
<br><br>

# 開発環境
・ フロントエンド  
・ バックエンド  
・ インフラ  
・ テスト  
・ テキストエディタ  
<br>
<br>

# ローカルでの動作方法
以下のコマンドを順に実行
``` shell 
% git clone https://github.com/samaimo/presentbox  
% cd presentbox  
% bundle install  
% yam install  
```
<br>
<br>

# 工夫したポイント

`デザインや写真や文章を書くことが苦手な人への配慮`を意識しております。  
特に、`プレゼントの詳細ページ`は、最小限の入力項目で`雑誌の１ページのようなデザイン`としてまとまるようにレイアウトを工夫しました。  
また、**プレゼントを振り返った時に楽しくなるような仕掛け**として、プレゼントを閲覧した際に`紙吹雪が舞う演出`を入れております。  
思い出を振り返るたび、`嬉しくなるような仕掛けをもっと取り入れていきたい`と思っております。