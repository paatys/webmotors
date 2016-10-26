class Model < ActiveRecord::Base
  validates :make_id, :name, presence: true
  belongs_to :make
end
