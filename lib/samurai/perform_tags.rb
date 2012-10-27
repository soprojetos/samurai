module Samurai
  class PerformTags

    attr_accessor :static, :models, :record

    def initialize
      Samurai.config_tags.each do |attr, value|
        self.send("#{attr}=", value)
      end
    end


  end
end
