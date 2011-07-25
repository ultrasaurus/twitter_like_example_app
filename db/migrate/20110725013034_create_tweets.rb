class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
      t.belongs_to :person
      t.belongs_to :language

      t.timestamps
    end
    add_index :tweets, :person_id
    add_index :tweets, :language_id
  end
end
