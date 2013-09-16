class Client < ActiveRecord::Base

STATUS_CODES = {
    "Pending Add" => 10,
    "Active" => 20,
    "Pending Delete" => 30,
    "Deleted" => 40,
    "Not a Customer" => 50
}

has_many :stores

def status_codes
  return STATUS_CODES
end

def status_code
	return STATUS_CODES[self.status]
end

end
