class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :age
      t.integer :income
      t.integer :calories
      t.boolean :gamble
      t.integer :aerobic_hours
      t.boolean :audio_books
      t.boolean :to_do_list
      t.boolean :non_fiction_books
      t.boolean :service
      t.boolean :happy_birthday_calls
      t.boolean :write_down_goals
      t.integer :daily_read
      t.boolean :speak_mind
      t.integer :network
      t.boolean :goal
      t.integer :tv_hours
      t.boolean :reality_tv
      t.integer :hours_before_work
      t.boolean :teach_success
      t.boolean :opportunity
      t.boolean :detriment
      t.boolean :self_improve
      t.boolean :love_to_read
      t.timestamps null: false
    end
  end
end
