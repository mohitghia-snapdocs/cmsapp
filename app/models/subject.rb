class Subject < ApplicationRecord
    has_many :pages
    validates :name, presence: true, uniqueness: true
    validates :visible, presence: true
    validates :position, presence: true, uniqueness: true
end


