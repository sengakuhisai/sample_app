class Message < ApplicationRecord
  belongs_to :sentmsg,class_name: "User",optional: true
  belongs_to :gotmsg,class_name: "User",optional: true
  default_scope -> {order(created_at: :desc)}
  validates :from_id,presence: true
  validates :to_id,presence: true
  validates :content,presence: true,length: {maximum:500}
end
