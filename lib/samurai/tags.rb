module Samurai::Tags

  def seo_title(content)
    content_tag(:title, content)
  end

  def seo_meta(name=:description, content)
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



  def seo_meta_group(namespace, *collection)
    record = Samurai::SeoTag.where(:key => namespace)
    content = "\t"

    unless record.empty?
      collection.each do |tag|
        content << "#{hold_tag(tag, record.first.properties[tag])}\n\t"
      end
    end

    content.html_safe
  end

end
