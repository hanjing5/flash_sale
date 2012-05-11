class AddColumnsToSubscribers < ActiveRecord::Migration
  def self.up
    add_column :subscribers, :watches, :boolean
    add_column :subscribers, :ties, :boolean
    add_column :subscribers, :dress_shirts, :boolean
    add_column :subscribers, :shoes, :boolean
  end

  def self.down
    remove_column :subscribers, :shoes
    remove_column :subscribers, :dress_shirts
    remove_column :subscribers, :ties
    remove_column :subscribers, :watches
  end
end
