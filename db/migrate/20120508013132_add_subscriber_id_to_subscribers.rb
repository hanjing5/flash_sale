class AddSubscriberIdToSubscribers < ActiveRecord::Migration
  def self.up
    add_column :subscribers, :subscriber_id, :integer
  end

  def self.down
    remove_column :subscribers, :subscriber_id
  end
end
