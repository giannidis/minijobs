class Minijob < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	acts_as_taggable
end
