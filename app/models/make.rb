class Make < ActiveRecord::Base
  validates :name, :webmotors_id, presence: true
  has_many :models
end
