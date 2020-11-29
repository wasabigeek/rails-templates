run 'yarn add tailwindcss'
run 'npx tailwindcss init'
insert_into_file("postcss.config.js",
                 "    require('tailwindcss'),\n    require('autoprefixer'),\n",
                 after: "require('postcss-import'),\n")
