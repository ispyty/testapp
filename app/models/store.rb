class Store < ActiveRecord::Base
has_many :services
has_many :features


STATUS_CODES = {
    "Pending Add" => 10,
    "Active" => 20,
    "Pending Delete" => 30,
    "Deleted" => 40,
    "Not a Customer" => 50
}

belongs_to :client

def status_codes
    return STATUS_CODES
end

end