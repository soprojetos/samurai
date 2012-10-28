module Samurai
  class SeoTag < ActiveRecord::Base
    attr_accessible :key, :properties, :model, :record_id, :title, :description, :canonical
    validates_uniqueness_of :key
    store :properties, :accessors => [:title, :description, :canonical]


  end
end
