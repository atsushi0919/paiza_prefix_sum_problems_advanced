INPUT1 = <<~"EOS"
  5 100
  10 20 30 40 50
EOS

OUTPUT1 = <<~"EOS"
  3
EOS

INPUT2 = <<~"EOS"
  5 100
  1 2 3 4 5
EOS

OUTPUT2 = <<~"EOS"
  -1
EOS

def solve(input_str)
  n, k, *a = input_str.split.map(&:to_i)

  min_length = Float::INFINITY
  0.upto(n - 1) do |l|
    r = l
    section_sum = 0
    while (r < n)
      section_sum += a[r]
      if section_sum > k
        min_length = [min_length, r - l + 1].min
        break
      end
      r += 1
    end
  end
  min_length.infinite? ? -1 : min_length
end

puts solve(STDIN.read)

=begin
【しゃくとり法の練習問題】 練習問題 その 1 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__syakutori_practice_step1
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。

この数列において、総和が K より大きい区間のうち、最小の長さを求めてください。

ただし、そのような区間がない場合、-1 を出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
1 行目に整数 N, K が与えられます。

2 行目に N 個の整数 a_1, a_2, ..., a_N からなる数列 a が与えられます。



N K
a_1 a_2 ... a_N

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
与えられた数列において、総和が K より大きい区間のうち、最小の長さを求めてください。

ただし、そのような区間がない場合、-1 を出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1000

・ 100 ≦ K ≦ 500

・ 1 ≦ a_i ≦ 50 (1 ≦ i ≦ N)

入力例1
5 100
10 20 30 40 50

出力例1
3

入力例2
5 100
1 2 3 4 5

出力例2
-1
=end
