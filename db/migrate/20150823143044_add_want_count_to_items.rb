class AddWantCountToItems < ActiveRecord::Migration
  def change
    add_column :items, :want_count, :integer, default: 0
  end
end
