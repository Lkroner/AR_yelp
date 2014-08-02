# require_relative '../../db/config/application.rb'

class Bar < ActiveRecord::Base
  has_and_belongs_to_many :neighborhoods

end

