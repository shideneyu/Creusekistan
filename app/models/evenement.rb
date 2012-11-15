class Evenement < ActiveRecord::Base
  attr_accessible :content, :date, :place, :title
end
