class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.belongs_to :language

      t.timestamps
    end
    add_index :people, :language_id
  end
end
