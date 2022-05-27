INPUT1 = <<~"EOS"
  1
  1 100
EOS

OUTPUT1 = <<~"EOS"
  6
EOS

INPUT2 = <<~"EOS"
  3
  1 15
  15 100
  138 813
EOS

OUTPUT2 = <<~"EOS"
  1
  6
  45
EOS

def solve(input_str)
  input_lines = input_str.split("\n")
  n = input_lines.shift.to_i
  a = input_lines.map { |e| e.split.map(&:to_i) }

  a.map do |l, r|
    b = []
    s = [0]
    l.upto(r) do |x|
      b <<= x % 15 == 0 ? 1 : 0
      s << s[-1] + b[-1]
    end
    s[-1]
  end
end

puts solve(STDIN.read)

=begin
【累積和の練習問題】練習問題 その 4 (paizaランク B 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_practice_step4
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 Q が与えられます。

2 行目以降に Q 行に渡って整数 L_i, R_i (1 ≦ i ≦ Q) が与えられます。

各 L_i, R_i について、L_i ≦ x ≦ R_i かつ 3 と 5 の両方で割り切れるような整数 x の個数を累積和を用いて求め、
改行区切りで出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
・ 1 行目に整数 Q が与えられます。

・ 2 行目以降に Q 行に渡って整数 L_i, R_i (1 ≦ i ≦ Q) が与えられます。


Q
L_1 R_1
L_2 R_2
...
L_Q R_Q

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
各 L_i, R_i について、L_i ≦ x ≦ R_i かつ 3 と 5 の両方で割り切れるような整数 x の個数を累積和を用いて求め、
改行区切りで出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ Q ≦ 100

・ 1 ≦ L_i ≦ R_i ≦ 1,000 (1 ≦ i ≦ Q)

入力例1
1
1 100

出力例1
6

入力例2
3
1 15
15 100
138 813

出力例2
1
6
45
=end
