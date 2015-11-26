class AddNotNullToFields < ActiveRecord::Migration
  def change
    change_column :answers, :age, :integer, :null => false
    change_column :answers, :income, :integer, :null => false
    change_column :answers, :calories, :integer, :null => false
    change_column :answers, :gamble, :boolean, :null => false
    change_column :answers, :aerobic_hours, :integer, :null => false
    change_column :answers, :audio_books, :boolean, :null => false
    change_column :answers, :to_do_list, :boolean, :null => false
    change_column :answers, :non_fiction_books, :boolean, :null => false
    change_column :answers, :service, :boolean, :null => false
    change_column :answers, :happy_birthday_calls, :boolean, :null => false
    change_column :answers, :write_down_goals, :boolean, :null => false
    change_column :answers, :daily_read, :integer, :null => false
    change_column :answers, :speak_mind, :boolean, :null => false
    change_column :answers, :network, :integer, :null => false
    change_column :answers, :goal, :boolean, :null => false
    change_column :answers, :tv_hours, :integer, :null => false
    change_column :answers, :reality_tv, :boolean, :null => false
    change_column :answers, :hours_before_work, :integer, :null => false
    change_column :answers, :teach_success, :boolean, :null => false
    change_column :answers, :opportunity, :boolean, :null => false
    change_column :answers, :detriment, :boolean, :null => false
    change_column :answers, :self_improve, :boolean, :null => false
    change_column :answers, :love_to_read, :boolean, :null => false
  end
end
