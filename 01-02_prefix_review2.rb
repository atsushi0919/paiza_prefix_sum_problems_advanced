INPUT1 = <<~"EOS"
  10 4
  10 1 9 2 8 3 7 4 6 5
EOS

OUTPUT1 = <<~"EOS"
  22
EOS

INPUT2 = <<~"EOS"
  8 3
  813 138 318 111 888 333 381 831
EOS

OUTPUT2 = <<~"EOS"
  1602
EOS

def solve(input_str)
  _, k, *a = input_str.split.map(&:to_i)

  max_sum = 0
  s = [0]
  a.each.with_index(1) do |e, i|
    s << s[-1] + e
    next if i < k
    max_sum = [max_sum, s[i] - s[i - k]].max
  end
  max_sum
end

puts solve(STDIN.read)

=begin
【累積和の練習問題】復習問題 その 2 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_review_step2
問題文のURLをコピーする
 チャレンジする言語

得意な言語を選択してください
コードを書いて解いてみる
問題
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。

連続する K 個の整数の和の最大値を、累積和を使うことで求め、一行で出力してください。

入力される値
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。


N K
a_0 a_1 a_2 ... a_{N-1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
連続する K 個の整数の和の最大値を、累積和を使うことで求め、一行で出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1,000

・ 1 ≦ K ≦ N

・ 1 ≦ a_i ≦ 1,000 (0 ≦ i ≦ N-1)

入力例1
10 4
10 1 9 2 8 3 7 4 6 5

出力例1
22

入力例2
8 3
813 138 318 111 888 333 381 831

出力例2
1602
=end
