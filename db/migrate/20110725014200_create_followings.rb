class CreateFollowings < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.belongs_to :followed_person
      t.belongs_to :follower

      t.timestamps
    end
    add_index :followings, :followed_person_id
    add_index :followings, :follower_id
  end
end
