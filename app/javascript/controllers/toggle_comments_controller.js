import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-comments"
export default class extends Controller {
  static targets = ["toggable"]

  connect() {
  }

  fire(event) {
    this.toggableTarget.classList.toggle('d-none');
    console.log(event.currentTarget)
    if (this.toggableTarget.classList.contains('d-none')) {
      event.currentTarget.innerHTML = "Voir les commentaires"
    }
    else {
      event.currentTarget.innerHTML = "Masquer les commentaires"
    }

  }
}
