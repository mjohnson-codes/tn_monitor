class Transfer < ActiveRecord::Base
	has_one :credential
	belongs_to :vendor
	belongs_to :sponsor
	has_many :dts
	has_many :notes
	has_and_belongs_to_many :contacts
end
