#
# 仕事の概念の定義
#
class AbstractWork
  def initialize
    baby = Kyaru::Baby.instance
    @bot = baby.bot
    @db = baby.db
    @money = baby.money
    @stress = baby.stress
  end
    #デフォルト値
    #名前
    @name = "abstract"
    #時給
    @hourly_wage = 1000
    #勤務時間
    @working_hours = 5.0
    #ストレス/h
    @stress_per_our = 1.0
    #クラス外からインスタンス変数に触れるようにする
    class << self
      attr_accessor :name, :hourly_wage, :working_hours, :stress_per_hour

      #各バイトクラスが定義された際に自動で　　を実行
      def inherited(subclass)
        subclass.name = @name
        subclass.hourly_wage = @hourly_wage
        subclass.working_hours = @working_hours
        subclass.stress_per_hour = @stress_per_hour
      end
    end
  end