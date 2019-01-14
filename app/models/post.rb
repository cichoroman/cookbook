class Post < ApplicationRecord
  #presence to odpowiednik required jak cos
  has_many :comments
  validates :title, presence: true,
                    length: {minimum: 5}
end
