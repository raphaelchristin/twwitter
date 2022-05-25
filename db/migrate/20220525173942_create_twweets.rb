class CreateTwweets < ActiveRecord::Migration[7.0]
  def change
    create_table :twweets do |t|
      t.text :twweet

      t.timestamps
    end
  end
end
