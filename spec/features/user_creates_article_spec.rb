require "rails_helper"

feature "Article Creation" do
  before(:each) do
    sign_upp
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t 'article.new_article'
  end
end
