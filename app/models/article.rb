class Article < ApplicationRecord
  validates_presence_of :title, :headline, :featured_image

  has_and_belongs_to_many :users
end
