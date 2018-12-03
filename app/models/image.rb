class Image < ApplicationRecord
    has_many :comments
    has_one_attached :photo
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
    validates :photo, file_size: { less_than_or_equal_to: 5.megabytes },
        file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif', 'image/jpeg'] }
end
