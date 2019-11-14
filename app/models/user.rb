class User < ApplicationRecord
  # attr_accessor :agent_attributes
  has_one :agent, dependent: :destroy

  accepts_nested_attributes_for :agent
end
