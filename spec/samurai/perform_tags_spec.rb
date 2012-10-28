require "spec_helper"

describe Samurai::PerformTags do
  let(:tags) { Samurai::PerformTags.new }

  before(:each) do
    Samurai.stub :config_tags => YAML.load_file(File.expand_path("../../fixtures/config.yml", __FILE__))
  end

  subject {tags}

  it { subject.static.should be_kind_of(Array) }
  it { subject.models.should be_kind_of(Hash) }

end
