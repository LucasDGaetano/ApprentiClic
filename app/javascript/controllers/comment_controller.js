import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comment"
export default class extends Controller {
  static targets = ["toggable"]

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

  showAnswer(event) {
    this.toggableTarget.classList.toggle('d-none');
  }
}
