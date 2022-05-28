# 【いもす法の練習問題】練習問題 その 3 (paizaランク B 相当)
# https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__imos_practice_step3

INPUT1 = <<~"EOS"
  3
  1 3 1
  2 4 1
  3 5 1
EOS

OUTPUT1 = <<~"EOS"
  3
EOS

INPUT2 = <<~"EOS"
  3
  1 5 1
  2 6 2
  3 7 3
EOS

OUTPUT2 = <<~"EOS"
  3
  4
  5
EOS

def solve(input_str)
  input_lines = input_str.split("\n")
  # q: 予約数, m: 人数制限
  q, m = input_lines.shift.split.map(&:to_i)
  # end_time: 最後の退場時刻
  end_time = -Float::INFINITY
  a = input_lines.map do |e|
    s, t, c = e.split.map(&:to_i)
    end_time = [end_time, t].max
    [s, t, c]
  end

  # いもす
  imos = Array.new(end_time + 1, 0)
  # s: 入場時刻, t: 退場時刻, c: 人数
  a.each do |s, t, c|
    imos[s - 1] = imos[s - 1] + c
    imos[t] = imos[t] - c
  end

  # 累積和
  max_sum = -Float::INFINITY
  max_times = []
  s = [0]
  imos[...-1].each.with_index(1) do |e, i|
    s << s[-1] + e
    if max_sum < s[-1]
      max_sum = s[-1]
      max_times = [i]
    elsif max_sum == s[-1]
      max_times << i
    end
  end
  max_times
end

puts solve(STDIN.read)

=begin
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 Q が与えられます。
2 行目以降に整数 S_i, T_i, P_i (1 ≦ i ≦ Q) が Q 行で与えられます。
ある会場では、Q 個の予約が入っており、それぞれ時間 S_i に P_i 人が入場し、時間 T_i までいる予定です。
各時間の合計人数を計算したとき、最も人数が多い時間を一行で出力してください。
複数ある場合、時間が早い順に改行区切りですべて出力してください。

▼　下記解答欄にコードを記入してみよう

入力される値
・ 1 行目に整数 Q が与えられます。
・ 2 行目以降に整数 S_i, T_i, P_i (1 ≦ i ≦ Q) が Q 行で与えられます。

Q
S_1 T_1 P_1
S_2 T_2 P_2
...
S_Q T_Q P_Q

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
各時間の合計人数を計算したとき、最も人数が多い時間を一行で出力してください。複数ある場合、時間が早い順に改行区切りですべて出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 1 ≦ Q ≦ 1,000

・ 1 ≦ S_i < T_i ≦ N (1 ≦ i ≦ Q)

・ 1 ≦ P_i ≦ 10 (1 ≦ i ≦ Q)

入力例1
3
1 3 1
2 4 1
3 5 1

出力例1
3

入力例2
3
1 5 1
2 6 2
3 7 3

出力例2
3
4
5
=end
