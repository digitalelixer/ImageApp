class Image < ApplicationRecord
    has_many :comments
    has_one_attached :photo
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
end
