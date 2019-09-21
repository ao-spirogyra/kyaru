#
# コンビニバイトクラスを定義
#
class Kyaru::ConvenienceStore < AbstractWork
  @name = "コンビニバイト"
  @hourly_wage = 1000
  @working_hours = 5
  @stress_per_hours =2.0

  def apply
    message
  end

  def message
    @bot.message(with_text: 'コンビニバイトしろ') do |event|
      event.respond 'コンビニバイトします...'
    end
  end

end

#test attr_accessorとinherited

puts