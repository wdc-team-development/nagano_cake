class Item < ApplicationRecord

  attachment :image
  enum is_active: { "販売停止": false, "販売中": true }
end
