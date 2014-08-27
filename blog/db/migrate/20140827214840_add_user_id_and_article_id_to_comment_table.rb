class AddUserIdAndArticleIdToCommentTable < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :interger
  	add_column :comments, :article_id, :interger
  end
end
