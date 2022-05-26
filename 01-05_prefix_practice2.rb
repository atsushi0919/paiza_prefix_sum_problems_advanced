INPUT1 = <<~"EOS"
  12 1 12
  aapizaapizaa
EOS

OUTPUT1 = <<~"EOS"
  1
EOS

INPUT2 = <<~"EOS"
  12 4 12
  aapizaapizaa
EOS

OUTPUT2 = <<~"EOS"
  1
EOS

INPUT3 = <<~"EOS"
  12 1 9
  aapizaapizaa
EOS

OUTPUT3 = <<~"EOS"
  1
EOS

def solve(input_str)
  tmp, str = input_str.split("\n")
  n, a, b = tmp.split.map(&:to_i)

  s = Array.new(n + 1, 0)
  0.upto(n - 3) do |i|
    s[i + 1] = s[i]
    if str[i] == "p" && str[i + 1] == "i" && str[i + 2] == "z"
      s[i + 1] += 1
    end
  end

  s[b - 3] - s[a - 1]
end

p solve(INPUT3)

=begin
【累積和の練習問題】練習問題 その 2 (paizaランク B 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_practice_step2
問題文のURLをコピーする
 チャレンジする言語

得意な言語を選択してください
コードを書いて解いてみる
問題
 下記の問題をプログラミングしてみよう！
1 行目に整数 N, A, B が与えられます。

2 行目に 'p', 'a', 'i', 'z', 'a' からなる長さ N の文字列 str が与えられます。
文字列 str の A 文字目から B 文字目までに "piz" は部分文字列として何回あらわれるかを累積和を用いて求め、一行で出力してください。

部分文字列とは、ある文字列の先頭と末尾から 0 文字以上取り除くことによって得られる文字列のことを指します。
例えば、"paiza" の部分文字列には、"pa", "aiz", "paiza" が含まれ、"az", "iap", "izapa" は含まれません。

( ヒント )

"piz" をどのように数えるかに注目して解いてみましょう。

"piz" をそのまま数えるのではなく、ある決まった条件で並んでいる一つの文字を数えるようにしてみましょう。
入力される値
1 行目に整数 N, A, B が与えられます。

2 行目に 'p', 'a', 'i', 'z', 'a' からなる長さ N の文字列 str が与えられます。


N A B
str

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
文字列 str の A 文字目から B 文字目までに "piz" は部分文字列として何回あらわれるかを累積和を用いて求め、一行で出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ N ≦ 1,000

・ 1 ≦ A ≦ B ≦ N

・ str は 'p', 'a', 'i', 'z', 'a' からなる長さ N の文字列

入力例1
12 1 12
aapizaapizaa

出力例1
2

入力例2
12 4 12
aapizaapizaa

出力例2
1

入力例3
12 1 9
aapizaapizaa

出力例3
1
=end
