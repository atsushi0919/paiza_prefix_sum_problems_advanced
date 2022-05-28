INPUT1 = <<~"EOS"
  5
  1 2 3 4 5
EOS

OUTPUT1 = <<~"EOS"
  15
EOS

INPUT2 = <<~"EOS"
  10
  6 5 4 3 2 1 2 3 4 5
EOS

OUTPUT2 = <<~"EOS"
  20
EOS

def solve(input_str)
  n, *a = input_str.split.map(&:to_i)

  count = 0
  0.upto(n - 1) do |l|
    count += 1
    r = l + 1
    while (r < n)
      break if a[r - 1] > a[r]
      count += 1
      r += 1
    end
  end
  count
end

puts solve(STDIN.read)

=begin
【しゃくとり法の練習問題】 練習問題 その 2 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__syakutori_practice_step2
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 N が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。

この数列において、連続する部分列のうち、広義単調増加となっている区間がいくつあるか求めてください。



連続する部分列 a_l, a_(l + 1), ..., a_r (l ≦ r) が広義単調増加とは、a_i ≦ a_(i + 1) (l ≦ i < r) であることを指します。

▼　下記解答欄にコードを記入してみよう

入力される値
1 行目に整数 N が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。



N
a_1 a_2 ... a_N

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
与えられた数列において、連続する部分列のうち、広義単調増加となっている区間がいくつあるか求めてください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1,000

・ 1 ≦ a_i ≦ 50 (1 ≦ i ≦ N)

入力例1
5
1 2 3 4 5

出力例1
15

入力例2
10
6 5 4 3 2 1 2 3 4 5

出力例2
20
=end
