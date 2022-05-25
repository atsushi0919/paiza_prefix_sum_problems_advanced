INPUT1 = <<~"EOS"
  5 0 4
  1 2 3 4 5
EOS

OUTPUT1 = <<~"EOS"
  15
EOS

INPUT2 = <<~"EOS"
  8 1 3
  8 1 3 8 1 3 8 1
EOS

OUTPUT2 = <<~"EOS"
  12
EOS

def solve(input_str)
  _, l, r, *a = input_str.split.map(&:to_i)

  s = [0]
  a.each { |e| s << s.last + e }
  s[r + 1] - s[l]
end

p solve(INPUT2)

=begin
【累積和の練習問題】復習問題 その 1 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_review_step1
問題文のURLをコピーする
 チャレンジする言語

得意な言語を選択してください
コードを書いて解いてみる
 チケット使用済
問題
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, A, B が与えられます。

2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} からなる数列 a が与えられます。

この数列の a_A から a_B までの和 (a_A + a_{A + 1} + ... + a_B) を、累積和を使うことで求め、一行で出力してください。

入力される値
・ 1 行目に整数 N, A, B が与えられます。
・ 2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。

N A B
a_0 a_1 a_2 ... a_{N-1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
数列 a の a_A から a_B までの和を、累積和を使うことで求め、一行で出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 2 ≦ N ≦ 1,000
・ 0 ≦ A < B ≦ N-1
・ 1 ≦ a_i ≦ 100 (0 ≦ i ≦ N-1)

入力例1
5 0 4
1 2 3 4 5

出力例1
15

入力例2
8 1 3
8 1 3 8 1 3 8 1

出力例2
12
=end
