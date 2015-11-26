class RemoveNotNullOnBoolean < ActiveRecord::Migration
  def change
    change_column :answers, :gamble, :boolean
    change_column :answers, :audio_books, :boolean
    change_column :answers, :to_do_list, :boolean
    change_column :answers, :non_fiction_books, :boolean
    change_column :answers, :service, :boolean
    change_column :answers, :happy_birthday_calls, :boolean
    change_column :answers, :write_down_goals, :boolean
    change_column :answers, :speak_mind, :boolean
    change_column :answers, :goal, :boolean
    change_column :answers, :reality_tv, :boolean
    change_column :answers, :teach_success, :boolean
    change_column :answers, :opportunity, :boolean
    change_column :answers, :detriment, :boolean
    change_column :answers, :self_improve, :boolean
    change_column :answers, :love_to_read, :boolean
  end
end
