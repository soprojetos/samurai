module Samurai
  class PerformTags

    attr_accessor :static, :models, :record

    def initialize
      Samurai.config_tags.each do |attr, value|
        self.send("#{attr}=", value)
      end

      @record = SeoTag.new
    end


    def record=(key)
      @record = SeoTag.where(:key => key).first_or_initialize
    end

  end
end
