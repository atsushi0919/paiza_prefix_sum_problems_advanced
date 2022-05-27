INPUT1 = <<~"EOS"
  3 1
  1 2 3
  4 5 6
  7 8 9
EOS
OUTPUT1 = <<~"EOS"
  9
EOS

INPUT2 = <<~"EOS"
  3 4
  1 2 3
  4 5 6
  7 8 9
EOS
OUTPUT2 = <<~"EOS"
  28
EOS

def solve(input_str)
  input_lines = input_str.split("\n")
  n, w, h = input_lines.shift.split.map(&:to_i)
  a = input_lines.map { |l| l.split.map(&:to_i) }

  s = Array.new(n + 1) { Array.new(n + 1, 0) }
  0.upto(n - 1) do |y|
    0.upto(n - 1) do |x|
      s[y + 1][x + 1] = a[y][x] + s[y][x + 1] + s[y + 1][x] - s[y][x]
    end
  end

  max_sum = -1
  0.upto(n - h) do |y|
    0.upto(n - w) do |x|
      area_sum = s[y + h][x + w] - s[y][x + w] - s[y + h][x] + s[y][x]
      max_sum = [max_sum, area_sum].max
    end
  end
  max_sum
end

p solve(INPUT2)

=begin
【二次元累積和の練習問題】練習問題 その 2 (paizaランク B 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__2dprefix_practice_step2
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, P が与えられます。

2 行目以降に N 行 N 列の整数の二次元配列 A が与えられます。

N [m] × N [m] のグリッドがあり、その中に数字が書かれています。

各グリッドは一辺 1 [m] の正方形であり、面積は 1 [m^2] です。

このとき、面積が P [m^2] 以下となるような長方形領域を考えたとき、長方形領域内の整数の和の最大値を累積和を用いて求め、
改行区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
・ 1 行目に整数 N, P が与えられます。

・ 2 行目以降に N 行 N 列の整数の二次元配列 A が与えられます。


N P
A_{0, 0} A_{0, 1} ... A_{0, N - 1}
A_{1, 0} A_{1, 1} ... A_{1, N - 1}
...
A_{N - 1, 0} A_{N - 1, 1} ... A_{N - 1, N - 1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
面積が P [m^2] 以下となるような長方形領域を考えたとき、長方形領域内の整数の和の最大値を累積和を用いて求め、改行区切りで出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 100

・ 1 ≦ P ≦ N^2

・ 0 ≦ A_{i, j} ≦ 100 (0 ≦ i ≦ N - 1, 0 ≦ j ≦ N - 1)

入力例1
3 1
1 2 3
4 5 6
7 8 9

出力例1
9

入力例2
3 4
1 2 3
4 5 6
7 8 9

出力例2
28
=end
