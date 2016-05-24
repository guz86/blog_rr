FactoryGirl.define do
  factory :article do
    title "Article title"
    text "Article text"

    # создаем фабрику для создание статьи с несколькими комментами
    factory :article_with_comments do
      # создаем список из 3х комментариев
      after :create do |article, evaluator|
        create_list :comment, 3, article: article 
      end
    end
  end
end