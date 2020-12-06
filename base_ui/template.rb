# install tailwindcss
# tailwindcss@2.x requires PostCSS 8, which doesn't come with Rails at this time. Feel free to change this!
run 'yarn add tailwindcss@1.9.6'
# run 'npx tailwindcss init'
insert_into_file("postcss.config.js",
                 "    require('tailwindcss'),\n    require('autoprefixer'),\n",
                 after: "require('postcss-import'),\n")

# Stop generating scaffold.css. This might be a bit heavy-handed, so you may want to change this.
application (<<~RUBY)
  config.generators do |g|
    g.stylesheets false
  end
RUBY

def source_paths
  [__dir__]
end
# add our templates
directory 'app'
directory 'lib'
copy_file('tailwind.config.js')
