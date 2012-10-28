require "spec_helper"

describe Samurai do
  it {
      p Samurai.config_tags
      Samurai.config_tags.should be_kind_of(Hash)
    }


end
