INPUT1 = <<~"EOS"
  13 3 8 a
  paizalearning
EOS

OUTPUT1 = <<~"EOS"
  2
EOS

INPUT2 = <<~"EOS"
  30 10 20 p
  papapaizapapaizapaizapapapaiza
EOS

OUTPUT2 = <<~"EOS"
  2
EOS

def solve(input_str)
  _, x, y, c, str = input_str.split
  x, y = [x, y].map(&:to_i)

  a = str.chars.map { |chr| chr == c ? 1 : 0 }
  s = [0]
  a.each { |e| s << s.last + e }
  s[y] - s[x - 1]
end

p solve(INPUT1)

=begin
【累積和の練習問題】復習問題 その 3 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_review_step3
問題文のURLをコピーする
 チャレンジする言語

得意な言語を選択してください
コードを書いて解いてみる
 チケット使用済
問題
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, X, Y と文字 C が与えられます。

2 行目に小文字のアルファベットで構成された長さ N の文字列 str が与えられます。

文字列 str の X 文字目から Y 文字目までの文字 C の個数を累積和を用いて求め、一行で出力してください。

入力される値
1 行目に整数 N, X, Y と文字 C が与えられます。

2 行目に小文字のアルファベットで構成された長さ N の文字列 str が与えられます。


N X Y C
str

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 str の X 文字目から Y 文字目までの文字 C の個数を累積和を用いて求め、一行で出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1,000

・ 1 ≦ X ≦ Y ≦ N

・ C は小文字のアルファベット一文字

・ str は小文字のアルファベット (a~z) からなる長さ N の文字列

入力例1
13 3 8 a
paizalearning

出力例1
2

入力例2
30 10 20 p
papapaizapapaizapaizapapapaiza

出力例2
3
=end
