// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

const yourElement = document.getElementById("pastearea");

yourElement.addEventListener('paste', function(event) {
    console.log("The data that was just pasted was "+event.clipboardData.getData('text/plain'));
});
