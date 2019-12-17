class Blog < ApplicationRecord
	validates :title, :content, presence: true
	belongs_to :category
end
