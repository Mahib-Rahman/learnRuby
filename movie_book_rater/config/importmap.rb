# Pin npm packages by running ./bin/importmap

# pin "application", to: "application.js"
# pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" 
# pin "@hotwired/turbo", to: "@hotwired--turbo.js" 
# pin "@rails/actioncable/src", to: "@rails--actioncable--src.js"


pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
