# app/models/user.rb
class User < ApplicationRecord
  has_many :posts # Post モデルとの関連付け
end

