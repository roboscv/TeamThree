class Book < ActiveRecord::Base
	belongs_to :author
	has_many :reservations, dependent: :destroy
	
	validates :isbn, :title, :abstract, :pages, :genre, :published_on, :total_in_library, presence: true
	validates :abstract, 
		length: {minimum: 15, :message => "must be at least 15 characters."}
	validates :pages, :total_in_library, 
		numericality: { only_integer:true, greater_than: 0, :message => "must be a positive number" }
	validates :genre,
		inclusion: { in: %w(Fiction Non-Fiction Suspense History Autobiography Horror), :message => "is not a valid genre"}
	#validates :author,
	#	inclusion: {in: %w(Stephen King, Dan Brown, Oprah Winfrey), :message => "is not a valid uthor"}
end
