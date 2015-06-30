class Tenant < ActiveRecord::Base
	belongs_to :sponsor
	has_many :tasks
	has_many :notes
	has_and_belongs_to_many :contacts
end
