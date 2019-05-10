class Food
  
  def Food.input
    puts "料理名を入力してください："
    name = gets.chomp.to_s
    File.open('menu.txt',"a") do |text|
      text.puts("#{name}")
    end
    
    puts "カロリーを入力してください"
    calory = gets.chomp.to_i
    File.open('calory.txt',"a") do |text|
      text.puts("#{calory}")
    end
  end
  
  def Food.show_all_calory
    puts "-----------------------"
    File.open('menu.txt') do |file|
      file.each_line do |name|
        puts name
      end
    end
    puts "-----------------------"
      
    cal = []
    
    file = File.open('calory.txt')
      file.each_line do |name|
        cal << name.to_i
      end
    file.close
    
    sum = 0
    cal.each do |n|
      sum += n
    end
    
    puts "カロリー合計　　：#{sum}kcal"
    
    File.open('menu.txt', "w") do |file| 
      file.print("")
    end
    
    File.open('calory.txt', "w") do |file| 
      file.print("")
    end
    
  end
  
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i
  
  if input == 0
    Food.input
  elsif input == 1
    Food.show_all_calory
    exit
  end
end
