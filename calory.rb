class Food
  
  # 空のハッシュを用意
  @menu_calory = {}
  
  def Food.input
    puts "料理名を入力してください："
    @name = gets.chomp.to_s
    puts "カロリーを入力してください"
    @calory = gets.chomp.to_i
    # 用意したハッシュにキー：@nameと値：@caloryを追加する
    @menu_calory[@name] = @calory
  end
  
  def Food.show_all_calory
    puts "-----------------------"
    # each文でハッシュ内のキーと値を羅列表示
    @menu_calory.each do |menu,calory|
      puts "#{menu} :#{calory}kcal"
    end
    puts "-----------------------"
    
    # 新たに空の配列を用意
    @a = []
    #空の配列にハッシュの値だけを取り入れる
    #ブロック引数を１つにするとキーと値は配列に格納される性質を利用
    @menu_calory.each do |calory|
      @a << calory[1]
    end

    sum = 0
    @a.each do |b|
      sum += b
    end
    puts  "合計#{sum}kcal"
    
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
