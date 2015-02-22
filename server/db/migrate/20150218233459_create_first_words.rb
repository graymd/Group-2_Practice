class CreateFirstWords < ActiveRecord::Migration
  def change
    create_table :first_words do |t|
    t.string :data
    t.string :mood

      t.timestamps null: false
    end
  end
end
