class Note < ActiveRecord::Base
	belongs_to :issue
	belongs_to :tenant
	belongs_to :vendor
end
