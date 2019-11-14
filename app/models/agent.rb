class Agent < ApplicationRecord
  belongs_to :user, optional: true
end
