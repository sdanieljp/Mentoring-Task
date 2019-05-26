#クラスを定義する方法で書き直す
class Janken

  def Janken.select_hand
    puts "[0]グー[1]チョキ[2]パー"

    hand = ["グー","チョキ","パー"]
    @player_input = gets.chomp.to_i
    @program_input = rand(3)

    puts "player_hand:#{hand[@player_input]}　program_hand:#{hand[@program_input]}"
  end
  
  def Janken.judge
    if @player_input == @program_input
      puts "あいこで・・・"
      return true
    elsif (@player_input == 0 && @program_input ==1) || (@player_input == 1 && @program_input ==2) || (@player_input == 2 && @program_input ==0)
      puts "You win!"
      return false
    else
      puts "You lose.."
      return false
    end
  end
    
end


puts "じゃんけん・・・"
while true do
  Janken.select_hand
  result = Janken.judge
  
  if result == false
    exit
  end
end