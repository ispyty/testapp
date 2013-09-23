class Store < ActiveRecord::Base
belongs_to :client

has_many :services
has_many :features

geocoded_by :full_street_address, :latitude  => :lat, :longitude => :lon # ActiveRecord, can also be an IP address
after_validation :geocode          # auto-fetch coordinates


STATUS_CODES = {
    "Pending Add" => 10,
    "Active" => 20,
    "Pending Delete" => 30,
    "Deleted" => 40,
    "Not a Customer" => 50
}


def status_codes
    return STATUS_CODES
end

def full_street_address
 [street, city, state].compact.join(', ')
end

end