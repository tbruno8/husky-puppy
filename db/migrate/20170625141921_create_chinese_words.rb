class CreateChineseWords < ActiveRecord::Migration[5.1]
  def change
    create_table :chinese_words do |t|
      t.string :word

      t.timestamps
    end
  end
end
