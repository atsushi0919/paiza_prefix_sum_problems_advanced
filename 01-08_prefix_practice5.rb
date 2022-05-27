INPUT1 = <<~"EOS"
  5
  1 2 3 4 5
EOS

OUTPUT1 = <<~"EOS"
  1
  2
  3
EOS

INPUT2 = <<~"EOS"
  9
  1 9 2 8 3 7 4 6 5
EOS

OUTPUT2 = <<~"EOS"
  1
  8
  7
  7
  6
  6
  5
EOS

def solve(input_str)
  n, *a = input_str.split.map(&:to_i)

  l, r = [0], [0]
  0.upto(n - 1) do |i|
    l << [l[-1], a[i]].max
    r << [r[-1], a[-i - 1]].max
  end

  1.upto(n - 2).map do |i|
    [l[i], r[n - i - 1]].min
  end
end

puts solve(STDIN.read)

=begin
#include <stdio.h>
int main(void){
    int N;
    scanf("%d\n",&N);
    int a[N];
    for(int i=0;i<N;i++)scanf("%d",&a[i]);
    scanf("\n");
    
    int left[N];
    left[0]=a[0];
    for(int i=0;i<N-1;i++){
        left[i]>=a[i+1] ? left[i+1]=left[i]:(left[i+1]=a[i+1]);
    }
    int right[N];
    right[0]=a[N-1];
    for(int i=0;i<N-1;i++){
        right[i]>=a[N-2-i]?right[i+1]=right[i]:(right[i+1]=a[N-2-i]);
    }
    
    for(int K=1;K<N-1;K++){
        if(left[K-1]<=right[N-K-2]){
            printf("%d\n",left[K-1]);
        }else{
            printf("%d\n",right[N-K-2]);
        }
    }
  
    return 0;
}


【累積和の練習問題】練習問題 その 5 (paizaランク C 相当)
問題にチャレンジして、ユーザー同士で解答を教え合ったり、コードを公開してみよう！

シェア用URL:
https://paiza.jp/works/mondai/prefix_sum_problems_advanced/prefix_sum_problems_advanced__prefix_practice_step5
問題文のURLをコピーする
 下記の問題をプログラミングしてみよう！

1 行目に整数 N が与えられます。
2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} からなる数列 a が与えられます。

ある整数 K (1 ≦ K ≦ N-2) を考えたとき、a_0, a_1, ..., a_(K-1) のうち最大の値を max1 、
a_(K+1), a_(K+2), ..., a_{N-1} のうち最大の値を max2 とします。

K = 1 の場合から K = N-2 の場合までの各 K について、max1 と max2 のうち小さいほうの値をそれぞれ求め、
改行区切りで出力してください。

( ヒント )
和ではなく max の場合はどうなるか、累積和の考え方を用いて解いてみましょう。
N 個の要素から 1 つの要素を除外して考えたい場合、左右からの累積結果を用いるとよいです。

▼　下記解答欄にコードを記入してみよう

入力される値
・ 1 行目に整数 N が与えられます。
・ 2 行目に N 個の整数 a_0, a_1, a_2, ..., a_{N-1} が与えられます。

N
a_0 a_1 a_2 ... a_{N-1}

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
合計で K-2 行出力してください。

K-2 行のうち i (1 ≦ i ≦ N-2) 行目では、 K = i の場合について、max1 と max2 のうち小さいほうの値をそれぞれ求め、
改行区切りで出力してください。

末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・ 3 ≦ N ≦ 100
・ 0 ≦ a_i ≦ 100 (0 ≦ i ≦ N-1)

入力例1
5
1 2 3 4 5

出力例1
1
2
3

入力例2
9
1 9 2 8 3 7 4 6 5

出力例2
1
8
7
7
6
6
5
=end
