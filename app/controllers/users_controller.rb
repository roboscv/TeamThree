class UsersController < ApplicationController
 has_many :reservations, dependent: :destroy
 has_many :books, :through => :reservations
end