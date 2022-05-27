INPUT1 = <<~"EOS"
  5
  1 2 3 4 5
EOS

OUTPUT1 = <<~"EOS"
  3
EOS

INPUT2 = <<~"EOS"
  6
  1 1 1 1 1 1
EOS

OUTPUT2 = <<~"EOS"
  0
EOS

def solve(input_str)
  n, *a = input_str.split.map(&:to_i)

  sum1 = [0]
  sum2 = [0]
  total = a.sum
  min_dif = Float::INFINITY
  0.upto(n - 1) do |k|
    sum1 << sum1[-1] + a[k]
    sum2 << total - sum1[-1]
    min_dif = [min_dif, (sum1[-1] - sum2[-1]).abs].min
  end
  min_dif
end

puts solve(STDIN.read)

=begin
【累積和の練習問題】練習問題 その 3 (paizaランク B 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_practice_step3
問題文のURLをコピーする
 チャレンジする言語

得意な言語を選択してください
コードを書いて解いてみる
問題
 下記の問題をプログラミングしてみよう！
1 行目に整数 N が与えられます。

2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} からなる数列 a が与えられます。

ある整数 K (0 ≦ K ≦ N-1) を考えたとき、a_0 + a_1 + ... + a_K を sum1 、
a_(K+1) + a_(K+2) + ... + a_{N-1} を sum2 とします。

K = 0 の場合から K = N-1 の場合まで全て考えたとき、sum1 と sum2 の差の絶対値 |sum1 - sum2| の最小値を累積和を用いて求め、
一行で出力してください。

入力される値
・ 1 行目に整数 N が与えられます。

・ 2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。


N
a_0 a_1 a_2 ... a_{N-1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
sum1 と sum2 の差の絶対値 |sum1 - sum2| の最小値を累積和を用いて求め、一行で出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 2 ≦ N ≦ 100

・ 0 ≦ a_i ≦ 100 (0 ≦ i ≦ N-1)

入力例1
5
1 2 3 4 5

出力例1
3

入力例2
6
1 1 1 1 1 1

出力例2
0
=end
