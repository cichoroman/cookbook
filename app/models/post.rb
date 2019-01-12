class Post < ApplicationRecord
  #presence to odpowiednik required jak cos
  validates :title, presence: true,
                    length: {minimum: 5}
end
