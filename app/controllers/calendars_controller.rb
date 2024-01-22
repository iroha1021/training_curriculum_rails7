class CalendarsController < ApplicationController

  # １週間のカレンダーと予定が表示されるページ
  def index
<<<<<<< HEAD
    get_week
=======

    get_Week

>>>>>>> b4b1371e3b1566b2c59099fccec1bb487409ced0
    @plan = Plan.new
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params 
    params.require(:plan).permit(:date, :plan)
  end

<<<<<<< HEAD
  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
=======

  def get_Week
>>>>>>> b4b1371e3b1566b2c59099fccec1bb487409ced0




      wday_num = Date.today.wday + x # wdayメソッドを用いて取得した数値
      if wday_num >= 7 #「wday_numが7以上の場合」という条件式
        wday_num = wday_num -7
      end
     

<<<<<<< HEAD
      days = { month:(@todays_date + x).month, data:(@todays_date + x).day, plan: today_plans, wday:wdays[wday_num]}
      @week_days.push(days)
    end
  end
end  
=======
      days = { :month => (@todays_date + x).month, :date => (@todays_date + x).day, :plans => today_plans, :wday => wdays[wday_num]}
>>>>>>> b4b1371e3b1566b2c59099fccec1bb487409ced0
