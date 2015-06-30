class Vendor < ActiveRecord::Base
	has_many :contacts
	has_many :transfers
	has_many :notes
end
