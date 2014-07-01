class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.float :height
      t.decimal :age
      t.binary :gender

      t.timestamps
    end
  end
end
