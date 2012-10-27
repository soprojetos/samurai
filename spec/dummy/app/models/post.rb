class Post < ActiveRecord::Base
  attr_accessible :content, :excerpt, :title
end
