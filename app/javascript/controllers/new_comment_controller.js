import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-comment"
export default class extends Controller {
  static targets = ["commentList"]
  connect() {
  }

  addComment(event) {
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
      console.log(data);
      this.commentListTarget.insertAdjacentHTML('beforeend', data)
    })
  }
}
