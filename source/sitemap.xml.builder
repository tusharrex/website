class SitemapBuilder

  attr_accessor :page, :sitemap, :xml

  def initialize(sitemap, xml)
    @sitemap = sitemap
    @xml = xml
  end

  def call
    xml.instruct!
    xml.urlset 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
      populate_page_tags
    end
  end

  private

  def populate_page_tags
    resources.each do |page|
      next if page.url =~ disabled_paths
      self.page = page
      xml.url do
        xml.loc "http://www.codequest.com#{page.url}"
        xml.lastmod last_mod
        xml.changefreq change_freq
        xml.priority priority
      end
    end
  end

  def resources
    sitemap.resources.select do |page|
      page.destination_path =~ /\.html/ && page.data.noindex != true
    end
  end

  def disabled_paths
    /(^\/svg)|(\/blog\/template\/$)/
  end

  def is_blog_post?
    page.path.start_with?('blog/')
  end

  def last_mod
    if is_blog_post?
      File.mtime(page.source_file).to_time
    else
      Date.today.to_time.iso8601
    end
  end

  def change_freq
    return page.data.changefreq if page.data.changefreq
    is_blog_post? ? 'weekly' : 'daily'
  end

  def priority
    return page.data.priority if page.data.priority
    is_blog_post? ? '0.5' : '1.0'
  end
end

SitemapBuilder.new(sitemap, xml).call
