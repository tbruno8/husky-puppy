class CreateSanzijings < ActiveRecord::Migration[5.1]
  def change
    create_table :sanzijings do |t|
      t.text :line

      t.timestamps
    end
  end
end
