/*
【累積和の練習問題】練習問題 その 1 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_practice_step1
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！
1 行目に整数 N が与えられます。

2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} からなる数列 a が与えられます。

最初黒板には 0 が書かれており、これに以下の動作をおこないます。



また、数列 a には負の数が含まれる可能性があることに注意してください。




黒板に書かれた数字を、黒板に書かれた数字 + a_0 に書き換える
黒板に書かれた数字を、黒板に書かれた数字 + ( a_0 + a_1 ) に書き換える
黒板に書かれた数字を、黒板に書かれた数字 + ( a_0 + a_1 + a_2) に書き換える
...
黒板に書かれた数字を、黒板に書かれた数字 + ( a_0 + a_1 + ... + a_{N-1}) に書き換える


上の動作を最後までおこなったとき、それまでに黒板に書かれた数字の中で最も大きい数字を、累積和を使うことで求め、一行で出力してください。

ただし、最初に書かれている 0 は黒板に書かれた数字に含まないこととします。

▼　下記解答欄にコードを記入してみよう

入力される値
・ 1 行目に整数 N が与えられます。

・ 2 行目に負の数を含む N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。


N
a_0 a_1 a_2 ... a_{N-1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
上の動作を最後までおこなったとき、それまでに黒板に書かれた数字の中で最も大きい数字を、累積和を使うことで求め、一行で出力してください。

ただし、最初に書かれている 0 は黒板に書かれた数字に含まないこととします。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 2 ≦ N ≦ 1,000

・ -100 ≦ a_i ≦ 100 (0 ≦ i ≦ N-1)

入力例1
5
1 2 3 4 5

出力例1
35

入力例2
7
8 1 3 -81 8 1 3

出力例2
29
*/