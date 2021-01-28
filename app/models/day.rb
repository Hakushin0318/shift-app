class Day < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ok
  belongs_to :user
end
