class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :email
      t.string :body
      t.integer :eep_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
