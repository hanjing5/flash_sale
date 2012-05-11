class AddColumnsToSubscribers < ActiveRecord::Migration
  def self.up
    add_column :subscribers, :shoes, :boolean
    add_column :subscribers, :watches, :boolean
    add_column :subscribers, :casual, :boolean
    add_column :subscribers, :formal_ties, :boolean
    add_column :subscribers, :denim, :boolean
    add_column :subscribers, :sunglasses, :boolean
  end

  def self.down
    remove_column :subscribers, :shoes
    remove_column :subscribers, :watches
    remove_column :subscribers, :casual
    remove_column :subscribers, :formal_ties
    remove_column :subscribers, :denim
    remove_column :subscribers, :sunglasses
  end
end
