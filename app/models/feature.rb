class Feature < ActiveRecord::Base
validates_presence_of :name
has_one :store

end
