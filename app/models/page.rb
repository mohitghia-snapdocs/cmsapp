class Page < ApplicationRecord
    belongs_to :subject
    validates :name, presence: true, uniqueness: true
    validates :visible, presence: true
    validates :position, presence: true, uniqueness: true
end

