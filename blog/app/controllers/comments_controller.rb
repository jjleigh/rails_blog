class CommentsController < ApplicationController
	before_filter :ensure_logged_in, :only [:create, :new, :destroy]
	before_filter :load_article
	def new
		@comment = Comment.new
	end

	def create
		@comment = @article.comments.build(comment_params)
		@comment.user_id = current_user.id

		respond_to do |format|
			if @coment.save
				format.html {redirect_to article_path(@article.id)}
				format.js {}
			else
				format.html {render 'articles/show', alert: "There was an error."}
        format.js {}
      end
	end

	def show
		@comment = Comment.find(params[:id])
		
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy

		redirect_to article_path(@article)
	end

	private 
	def comment_params
		params.require(:comment).permit(:text, :title)
	end

	def load_article
		@article = Article.find(params[:article_id])
	end
end
