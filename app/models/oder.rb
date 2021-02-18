class Oder < ApplicationRecord
  
  enum billing_amount:    [ :クレジットカード, :銀行振り込み ]

end
