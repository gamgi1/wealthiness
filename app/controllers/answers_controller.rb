class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answer_path(@answer.id)
    else
      render :new
    end
  end

  def show
    @@richness_percent = 0;
    @@poorness_percent = 0;
    @answer = Answer.find_by(id: params[:id] )
    @answer.calories <= 300 ? @@richness_percent += 4.4 : @@poorness_percent += 5.3
    @answer.gamble == true ? @@poorness_percent += 2.9 : @@richness_percent += 4.8
    @answer.aerobic_hours < 4 ? @@poorness_percent += 4.2 : @@richness_percent += 4.8
    @answer.audio_books == true ? @@richness_percent += 3.9 : @@poorness_percent += 5.2
    @answer.to_do_list == true ? @@richness_percent += 5.1 : @@poorness_percent += 4.5
    @answer.non_fiction_books == true ? @@richness_percent += 3.9 : @@poorness_percent += 5.3
    @answer.service == true ? @@richness_percent += 4.4 : @@poorness_percent += 5.3
    @answer.happy_birthday_calls == true ? @@richness_percent += 5.0 : @@poorness_percent += 4.9
    @answer.write_down_goals == true ? @@richness_percent += 4.2 : @@poorness_percent += 4.6
    @answer.daily_read >= 30 ? @@richness_percent += 5.5 : @@poorness_percent += 5.4
    @answer.speak_mind == true ? @@poorness_percent += 3.8 : @@richness_percent += 5.9
    @answer.network >= 5 ? @@richness_percent += 4.9 : @@poorness_percent += 4.6
    @answer.goal == true ? @@richness_percent += 5.0 : @@poorness_percent += 4.9
    @answer.tv_hours < 1.0 ? @@richness_percent += 4.2 : @@poorness_percent += 4.2
    @answer.reality_tv == true ? @@poorness_percent += 4.3 : @@richness_percent += 5.9
    @answer.hours_before_work >= 3.0 ? @@richness_percent += 2.8 : @@poorness_percent += 5.3
    @answer.teach_success == true ? @@richness_percent += 4.6 : @@poorness_percent += 5.5
    @answer.opportunity == true ? @@richness_percent += 5.3 : @@poorness_percent += 5.3
    @answer.detriment == true ? @@richness_percent += 4.8 : @@poorness_percent += 5
    @answer.self_improve == true ? @@richness_percent += 5.4 : @@poorness_percent += 5.2
    @answer.love_to_read == true ? @@richness_percent += 5.4 : @@poorness_percent += 4.1
    @richness_percent = @@richness_percent
    @poorness_percent = @@poorness_percent
    @answer.destroy
  end
  private
  def answer_params
    params.require(:answer).permit(:age, :income, :calories, :gamble, :aerobic_hours, :audio_books, :to_do_list, :non_fiction_books, :service, :happy_birthday_calls, :write_down_goals, :daily_read, :speak_mind, :network, :goal, :tv_hours, :reality_tv, :hours_before_work, :teach_success, :opportunity, :detriment, :self_improve, :love_to_read)
  end
end
