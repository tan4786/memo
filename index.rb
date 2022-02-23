require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s

if memo_type.to_i == 1
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.to_s
   puts "メモしたい内容を記入してください"
   puts "完了したらctrl+Dをおします"
   
   CSV.open("#{file_name}.csv",'w') do |csv|
     memo_input = readlines
     csv << memo_input
   end
   
else memo_type.to_i == 2
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.to_s
   puts "編集したい内容を記入してください"
   puts "完了したらctrl+Dをおします"
   
   CSV.open("#{file_name}.csv",'a') do |csv|
     memo_input = readlines
     csv << memo_input
   end
   end


