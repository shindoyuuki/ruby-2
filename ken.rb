puts "あっち向いてホイ勝負！"

def janken
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(終了)"
  $my_hand = gets.to_i
  puts "ポン！"
  puts "--------------------------"
  
  #じゃんけん！！！！！！！！！！！！！！！！
  $computer = rand(3) #0~2をランダムで出してくれる
  jankens = ["グー","チョキ","パー"]
  puts "私の手:#{jankens[$my_hand]}を出しました。"
  puts "相手の手:#{jankens[$computer]}を出しました。"
  puts "--------------------------"
  
  while $my_hand == $computer
    puts "あいこで"
    puts "0(グー) 1(チョキ) 2(パー) 3(終了)"
    my_hand = gets.to_i
    puts "しょ！！"
    puts "私の手:#{jankens[$my_hand]}を出しました。"
    puts "相手の手:#{jankens[$computer]}を出しました。"
    puts "--------------------------"
  end
  
   #3が押された時に、終了する処理を書く
  if $my_hand == 3
    puts "ゲームが終了しました。"
    exit #exitは処理を終了することができる
  end
end

#あっち向いてホイ！！！！！！！！！！！！！！
def attimuitehoi
  if($my_hand == 0 && $computer == 1)||($my_hand == 1 && $computer == 2)||($my_hand == 2 && $computer == 0)
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    my_finger = gets.to_i
    puts "ホイ！"
    computer2 = rand(4)
    attimuite = ["上","下","左","右"]
    puts "私:#{attimuite[my_finger]}を指さしました。"
    puts "相手:#{attimuite[computer2]}を向きました。"
    puts "--------------------------"
  else
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    my_finger = gets.to_i
    puts "ホイ！"
    computer3 = rand(4)
    attimuite = ["上","下","左","右"]
    puts "私:#{attimuite[my_finger]}を向きました。"
    puts "相手:#{attimuite[computer2]}を指さしました。"
    puts "--------------------------"
  end
  
  #同じ方向を向いた時
  if my_finger == computer2
    puts "あなたの勝ちです!"
    exit
  elsif my_finger == computer3
    puts "CPの勝ちです!"
    exit
  end
end 

#この文がないと、そもそも機能しなくなる
#while True（無限ループ）とは　→ while文は「ある条件を満たす間(Trueの間）、指定の処理を繰り返す」というものです。
while true
  game = janken
  next_game = attimuitehoi
end

