class Comment < ActiveRecord::Base
  validates_length_of :body, maximum: 4000
  belongs_to :article
end
