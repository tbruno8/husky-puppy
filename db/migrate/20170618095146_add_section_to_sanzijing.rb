class AddSectionToSanzijing < ActiveRecord::Migration[5.1]
  def change
    add_column :sanzijings, :section, :string
  end
end
