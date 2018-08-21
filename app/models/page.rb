class Page < ApplicationRecord
	self.table_name ="pages"
	belongs_to :subject
end
