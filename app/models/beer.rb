class Beer < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :description, presence: true
end
