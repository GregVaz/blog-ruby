class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  
  #this means that the title value must contain at least one non-whitespace character
  validates :title, presence: true
  #it declares that the body value must be at least 10 characters long
  validates :body, presence: true, length: { minimum: 10 }
end
