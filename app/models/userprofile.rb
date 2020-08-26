class Userprofile < ApplicationRecord
  belongs_to      :user,  optional: true
end
