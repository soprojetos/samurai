require "spec_helper"


describe Samurai do
  it {
      Samurai.config_tags.should be_kind_of(Hash)
    }


end
