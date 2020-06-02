class NewsController < ApplicationController
  def all
    articles = New.all

    render json: articles
  end

  def get
    article = New.find_by_slug(params["slug"])

    render json: article
  end

  def create
    newArticle = New.create(
      title: params["title"],
      slug: params["title"].to_s.parameterize,
      content: params["content"]
    )

    json_response(newArticle, 201)
  end
end
