class AddQuizzerIdToScore < ActiveRecord::Migration
  def change
    add_column :scores, :quizzer_id, :integer
  end
end
