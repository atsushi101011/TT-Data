# TT-Data

## サービス概要

試合で勝ちたい卓球選手のための、データ分析ツールです。<br>
分析したい選手の動画を見ながら、サーブコースやラリー回数、得点した技術などを1ポイントずつ手入力して、データ化します。
(野球の一球速報のような形です。)<br>
そこから自分や対戦相手の、プレーの「パターン」を知り、より得点率の高い「武器」を作って、勝利につなげることができます。

## 登場人物
#### エンドユーザー
現役のアマチュア卓球選手<br>
アマチュアチームの監督、コーチ<br>
試合観戦が好きな卓球ファン

## ユーザーが抱える課題
練習で出来るようになったことを試合で活かせない。<br>
負けた原因が正確にわからないので、どう練習を改善していけば良いかわからない。

## 解決方法
自分の試合動画をもとに、何で得点、失点しているのかを1ポイントずつ入力して、データ化する。<br>
そこから自分のプレーの「パターン」を知り、より得点率の高い「武器」を作って、勝利につなげる。

## プロダクト
卓球の試合を1ポイントずつデータ化して、自分やプロ選手をデータ分析できるWebアプリ<br>

### データ分析方法
試合動画を見ながら、1ポイントずつ入力していく。試合が終わるとプログラムされた計算式により、出力データが得られる。<br>

#### 入力データ(試合動画を見ながら)<br>
・サーブコース<br>
・得点した技術or失点した技術<br>
・ラリー回数<br>


#### 出力データ(試合終了後)<br>
・サーブ得点率<br>
・レシーブ得点率<br>
・サーブコース割合<br>
・得点した技術割合<br>
・失点した技術割合<br>
・得点時の平均ラリー回数<br>
・失点時の平均ラリー回数<br>

という7つのデータが入手できる。

### コンテンツ一覧
### ・TT-Data Labo
プロ選手の試合をデータ化<br>
オープンソースとして、みんなでシェア<br>
試合のデータとコメントを見て、学びながら観戦を楽しむ

### ・TT-Data Me
自分の試合をデータ化<br>
データから、自己分析できる<br>
非公開なので、他の人に見られない<br>
ライバル選手の研究にも使える

### ・TT-Data TEAM
個人のデータをチーム共有<br>
ライバル校の分析<br>
練習、試合で、データに基づいたアドバイスをチームメイトに送れる

## マーケット
強くなりたいアマチュア卓球選手(年齢問わず)<br>
チームを勝たせたい監督、コーチ<br>
試合観戦が好きな卓球ファン