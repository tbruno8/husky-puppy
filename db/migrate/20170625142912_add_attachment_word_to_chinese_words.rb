class AddAttachmentWordToChineseWords < ActiveRecord::Migration[5.1]
  def self.up
    change_table :chinese_words do |t|
      t.attachment :word
    end
  end

  def self.down
    remove_attachment :chinese_words, :word
  end
end
