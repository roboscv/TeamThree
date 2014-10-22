class Author < ActiveRecord::Base
has_many :books, dependent: :destroy
	AUTHORS = ['Tolkien', 'Rand', 'Card', 'Orwell', 'Martin', 'King', 'Winfrey']
include ActiveModel::Validations
	

	validates :name, :dob, :nationality, :biography, :image_url, presence: true

	validates :biography, 
			  length: {minimum: 15},
			  if: "biography.present?"
end	