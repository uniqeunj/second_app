class Item < ApplicationRecord
  # owner에게 속해잇음
  belongs_to :owner
end
