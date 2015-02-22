class CreateShoutouts < ActiveRecord::Migration
  def change
    create_table :shoutouts do |t|
      t.string :text
      t.string :mood

      t.timestamps null: false
    end
  end
end
