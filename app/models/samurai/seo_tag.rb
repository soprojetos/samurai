module Samurai
  class SeoTag < ActiveRecord::Base
    attr_accessible :key, :properties

    store :properties, :accessors => [:title, :description, :canonical]


  end
end
