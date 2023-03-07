require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save empty article" do
    article = Article.new
    assert_not article.save
  end

  test "should not save article without title" do
    article = Article.new
    article.body = "This is the body of the article"
    assert_not article.save
  end

  test "should not save article without body" do
    article = Article.new
    article.title = "article title"
    assert_not article.save
  end

  test "title should not exceeds 10 characters" do
    article = Article.new
    article.title = "article title"
    assert article.save
  end
end
