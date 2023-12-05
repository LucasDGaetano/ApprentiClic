import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  connect() {
  }

  addAnswer(event) {
    event.preventDefault();
    const url = event.currentTarget.action
    fetch(url, {
      method: "POST",
      headers: {
        accept: "text/plain"
      },
      body: new FormData(event.currentTarget)
    })
    .then(response => response.text())
    .then((data) => {
      this.element.outerHTML = data
    })

  }
}
