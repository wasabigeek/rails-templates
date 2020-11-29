Attempts to bootstrap a minimal UI framework for your Rails app, for you to customise further.

Most templates I've come across are designed to be used from the ground-up, cover a lot of things that you might want some control over (e.g. maybe I'll hold off Sidekiq until the app does well), and are already quite opinionated (e.g. gems like friendly_id). This is opinionated, but only in one area (views), so you can configure the rest of the app as you like, or even add this on to an existing app (though that might not work so neatly).

# Opinions
- TailwindCSS: simplifies styling with CSS, while still providing a lot of flexibility to come up with your own designs
- Uses [webpacker](https://github.com/rails/webpacker): gives you access to the Tailwind directives. I personally also remove `sprockets` so there's only one-way of doing things (even if it's weird to include images in JS), but that's a choice I've not enforced here
- Plain CSS only: it's not too hard to add on SASS later :D
- Uses views only: stuff like stimulus should be easy to add on, but I didn't want to include this as I personally prefer to use react-rails

Assumptions:
- Rails 6

# Usage
- clone this repo
- in your Rails project, run `rails app:template LOCATION=/path/to/base_ui/template.rb`
