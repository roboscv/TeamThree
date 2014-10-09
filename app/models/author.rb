class Author < ActiveRecord::Base
	validates :name, :dob, :nationality, :biography, :image_url, presence: true

	validates :biography, 
			  length: {greater_than_or_equal_to: 15},
			  if: "length.present?"
end