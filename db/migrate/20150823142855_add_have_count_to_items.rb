class AddHaveCountToItems < ActiveRecord::Migration
  def change
    add_column :items, :have_count, :integer, default: 0
  end
end
