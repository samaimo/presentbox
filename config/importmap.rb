# Pin npm packages by running ./bin/importmap

pin 'application'
pin '@hotwired/turbo-rails', to: 'turbo.min.js'
pin '@hotwired/stimulus', to: 'stimulus.min.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'preview', to: 'preview.js'
pin 'count_age', to: 'count_age.js'
pin 'present_preview', to: 'present_preview.js'
pin 'script', to: 'script.js'
