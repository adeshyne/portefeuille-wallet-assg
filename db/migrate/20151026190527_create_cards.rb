class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :number
      t.string :card_type
      t.string :expMonth
      t.string :expYear
      t.string :code

      t.timestamps null: false
    end
  end
end
