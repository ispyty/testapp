class Client < ActiveRecord::Base

STATUS_CODES = {
  10 => "PEND - ADD",
  18 => "ACTIVE - FREE TRIAL",
  20 => "ACTIVE",
  30 => "PEND - DEL",
  38 => "PEND - DEL FREE TRIAL",
  40 => "PAUSED",
  90 => "DELETED",
  98 => "DELETED - FREE TRIAL",
  99 => "NON CUSTOMER"
}.freeze

has_many :stores, dependent: :destroy

def status
  return STATUS_CODES[self.status_code]
end

end
