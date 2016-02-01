module Samurai::Tags

  def seo_title(content)
    content_tag(:title, content)
  end

  def seo_meta(name, content)
    tag(:meta , :name => name, :content => content)
  end

  def seo_canonical(permalink)
    tag(:link, :rel => :canonical, :href => permalink)
  end

  def hold_tag(tag,content)
    tag = case tag
      when :description then seo_meta(:description, content)
      when :canonical   then seo_canonical(content)
      when :title       then seo_title(content)
    end
  end



  def seo_meta_static(namespace, *collection)
    record = Samurai::SeoTag.where(:key => namespace)
    content = "\t"

    unless record.empty?
        collection.each do |tag|
          content << "#{hold_tag(tag, record.first.properties[tag])}\n\t"
        end

    end

    content.html_safe
  end


  def seo_meta_model(record_id, namespace, *collection)
    tag_record = Samurai::SeoTag.where(:namespace => namepace, :record_id => record_id)
    content = "\t"

    if tag_record.empty?
      model_record = tag_record.model.classify.safe_constantize
      record = model_record.find(record_id)
      config = get_config(tag_record.model)

      collection.each do |tag|
        tag = case tag
          when :description then content << seo_meta(:description, content)
          when :canonical   then seo_canonical(content)
          when :title       then seo_title(content)
        end
      end

    end


  end

  def parse_attribute(obj, config)

  end


  def get_config(model, namespace)
    Samurai.config_tags["models"][mode][namespace]
  end




  def attribute_and_size(config, option=nil)
    object = {}
    config.split(',').each do |conf|
      object[conf[/@([a-z_]{1,})/, 1]] = conf[/\((\d*)\)/,1].to_i
    end
    option ? object[option.to_s] : object
  end

  def static?(key)
    Samurai.config_tags["static"].include?(key.to_s)
  end


end
