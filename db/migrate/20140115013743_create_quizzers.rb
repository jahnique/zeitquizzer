class CreateQuizzers < ActiveRecord::Migration
  def change
    create_table :quizzers do |t|
      t.string :name

      t.timestamps
    end
  end
end
