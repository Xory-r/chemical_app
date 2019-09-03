class Post < ApplicationRecord
    belongs_to :users
    validates :content, presence: true
end
