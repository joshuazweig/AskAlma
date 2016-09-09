class RenameUpvotesToVotes < ActiveRecord::Migration
  def change
  	rename_table :upvotes, :votes
  end
end
