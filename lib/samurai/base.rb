module Samurai
  extend self

  @@config_tags = nil

  def tags_file
    Rails.root.join("config/tags.yml")
  end

  def configured?
    File.exists?(tags_file)
  end

  def config_tags
    @@config_tags ||= YAML.load_file(tags_file)
  end

end
