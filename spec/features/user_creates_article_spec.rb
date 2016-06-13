require "rails_helper"

feature "Article Creation" do
  before(:each) do
    sign_upp
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t 'article.new_article'
  end

  scenario "allows user to create new article page" do
    visit new_article_path

    fill_in :article_title, :with => 'new title'
    fill_in :article_text, :with => 'something'

    click_button 'Save Article'

    expect(page).to have_content I18n.t 'article.article_theme'
  end

end
