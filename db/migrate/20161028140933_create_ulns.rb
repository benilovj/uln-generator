class CreateUlns < ActiveRecord::Migration[5.0]
  def change
    create_table :ulns do |t|
      t.string :number, null: false
      t.timestamps
    end
  end
end
