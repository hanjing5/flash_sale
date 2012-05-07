class CreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.string :email
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :subscribers
  end
end
