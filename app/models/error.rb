class Error < ActiveRecord::Base
  attr_accessible :error_message, :explanation, :name, :title
end
