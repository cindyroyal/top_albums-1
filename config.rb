###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
data['clockwerks']['topalbums']['album'].each do |a|
  proxy "/clockwerks/#{a['@attr']['rank']}.html", 'detail.html', locals: { username: 'clockwerks', album: a }, ignore: true
end
data['twelvelabs']['topalbums']['album'].each do |a|
  proxy "/twelvelabs/#{a['@attr']['rank']}.html", 'detail.html', locals: { username: 'twelvelabs', album: a }, ignore: true
end

activate :google_drive, load_sheets: {
    top_album_users: '1syKiIrHwLuMlgWntgRpXRWmSxm3L3C76bb_-Ob-Gbzk'
}


###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
