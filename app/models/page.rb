class Page < ActiveRecord::Base
	default_scope :order => 'title'
	has_many :comments, :dependent => :destroy
end
