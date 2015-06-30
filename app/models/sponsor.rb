class Sponsor < ActiveRecord::Base
	has_many :tenants
	has_many :contacts
	has_many :transfers
end
