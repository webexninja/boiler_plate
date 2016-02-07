class Word < ActiveRecord::Base
	validates :title, presence: true, length: {maximum: 15}, :uniqueness=> true
	validates :meaning, presence: true, length: {maximum: 15}
end
