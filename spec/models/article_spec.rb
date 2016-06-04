require "spec_helper"
require 'support/factory_girl'

describe Article do

    describe "validations" do
      it { should validate_presence_of :title }
      it { should validate_length_of(:title).is_at_most(140) }
      it { should validate_presence_of :text }
      it { should validate_length_of(:text).is_at_most(4000) }
    end

    describe "associations" do
      it { should have_many :comments }
    end

    describe "#subject" do
      it "return the article title" do 
      # создаем объекта article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
      end
    end

    describe "#last_comment" do
      it "returns the last comment" do
        # создам статью, с комментариями
        article = create(:article_with_comments)

        # проверка
        expect(article.last_comment.body).to eq "comment body 3"
      end
    end
end 

