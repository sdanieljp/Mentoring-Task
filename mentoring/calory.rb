class Food
  @array = []

  def Food.input
    puts "料理名を入力してください："
    hash = {}
    hash[:name] = gets.chomp.to_s
    puts "カロリーを入力してください"
    hash[:calory] = gets.chomp.to_i
    @array << hash
  end
  
  def Food.show_all_calory
    puts "-----------------------"
    @array.each do |menu|
      puts "#{menu[:name]}: #{menu[:calory]}kcal"
    end
    puts "-----------------------"
    
    sum = 0
    @array.each do |calory|
      sum += calory[:calory]
    end
    puts "合計#{sum}kcal"
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
end