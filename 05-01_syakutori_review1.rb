INPUT1 = <<~"EOS"
  10 15
  2 6 20 4 2 15 4 5 6 8
EOS

OUTPUT1 = <<~"EOS"
  15
EOS

INPUT2 = <<~"EOS"
  8 13
  8 3 1 1 3 8 1 3
EOS

OUTPUT2 = <<~"EOS"
  25
EOS

def solve(input_str)
  n, k, *a = input_str.split.map(&:to_i)

  count = 0
  0.upto(n - 1) do |l|
    r = l
    section_sum = 0
    while (r < n)
      section_sum += a[r]
      break if section_sum > k
      count += 1
      r += 1
    end
  end
  count
end

puts solve(STDIN.read)

=begin
【しゃくとり法の練習問題】 復習問題 その 1 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__syakutori_review_step1
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。

この数列において、長さが 1 以上で総和が K 以下の区間がいくつあるか求めてください。

▼　下記解答欄にコードを記入してみよう

入力される値
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。



N K
a_1 a_2 ... a_N

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
与えられた数列において、総和が K 以下の区間がいくつあるか求めてください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1,000

・ 1 ≦ K ≦ 100

・ 1 ≦ a_i ≦ 50 (1 ≦ i ≦ N)

入力例1
10 15
2 6 20 4 2 15 4 5 6 8

出力例1
15

入力例2
8 13
8 3 1 1 3 8 1 3

出力例2
25
=end
