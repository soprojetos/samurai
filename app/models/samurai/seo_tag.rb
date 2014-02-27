module Samurai
  class SeoTag < ActiveRecord::Base
    validates_uniqueness_of :key
    store :properties, :accessors => [:title, :description, :canonical]
  end
end
