class Article < ApplicationRecord
  validates_presence_of :title, :headline, :featured_image
end
