class Reservation < ApplicationRecord
   validates :date_from, {presence: true}
   validates :date_to, {presence: true}
end
