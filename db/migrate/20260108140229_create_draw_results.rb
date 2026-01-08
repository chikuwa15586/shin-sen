class CreateDrawResults < ActiveRecord::Migration[8.1]
  def change
    create_table :draw_results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fortune, null: false, foreign_key: true
      t.date :drawn_on

      t.timestamps
    end
  end
end
