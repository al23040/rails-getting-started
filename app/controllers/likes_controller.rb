class LikesController < ApplicationController
	def create
		article = Article.find(params[:article_id])
		comment = article.comments.find(params[:comment_id])
		comment.likes.create
		redirect_to article_path(article)
	end
end
