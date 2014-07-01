class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.boolean :read
      t.integer :previous_message_id
      t.integer :next_message_id
      t.references :user, index: true
      t.integer :from_user_id

      t.timestamps
    end
  end
end
