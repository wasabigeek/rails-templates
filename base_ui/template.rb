# install tailwindcss
# tailwindcss@2.x requires PostCSS 8, which doesn't come with Rails at this time. Feel free to change this!
run 'yarn add tailwindcss@1.9.6'
run 'npx tailwindcss init'
insert_into_file("postcss.config.js",
                 "    require('tailwindcss'),\n    require('autoprefixer'),\n",
                 after: "require('postcss-import'),\n")

# add our templates
def source_paths
  [__dir__]
end
directory 'app'
