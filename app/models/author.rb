class Author < ActiveRecord::Base
has_many :books, dependent: :destroy

include ActiveModel::Validations
	

	validates :name, :dob, :nationality, :biography, :image_url, presence: true

	validates :biography, 
			  length: {minimum: 15},
			  if: "biography.present?"
end	