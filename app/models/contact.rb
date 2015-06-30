class Contact < ActiveRecord::Base
	belongs_to :vendor
	belongs_to :sponsor
	has_many :notes
	has_and_belongs_to_many :tenants
	has_and_belongs_to_many :transfers
end
