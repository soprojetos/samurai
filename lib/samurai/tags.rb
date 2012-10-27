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

end
