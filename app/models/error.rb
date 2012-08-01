class Error < ActiveRecord::Base
  attr_accessible :error_message, :explanation, :name, :title
  
  validates :title, presence: true
  validates :name, presence: true
  validates :error_message, presence: true
  validates :explanation, presence: true
  
end
