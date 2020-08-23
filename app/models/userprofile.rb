class Userprofile < ApplicationRecord
  belongs_to      :user
  has_one         :insured
end
