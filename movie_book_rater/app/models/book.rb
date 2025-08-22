class Book < ApplicationRecord
    has_many :reviews, as: :reviewable, dependent: :destroy
end