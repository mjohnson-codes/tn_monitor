class Task < ActiveRecord::Base
	belongs_to :tenant
	has_many :components
	has_many :transfers
	has_many :log_records
end
