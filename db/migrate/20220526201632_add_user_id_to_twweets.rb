class AddUserIdToTwweets < ActiveRecord::Migration[7.0]
  def change
    add_column :twweets, :user_id, :integer
  end
end
