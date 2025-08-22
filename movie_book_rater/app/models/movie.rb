class Movie < ApplicationRecord
    has_many :reviews, as: :reviewable, dependent: :destroy
end