import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="click-on-button"
export default class extends Controller {
   static targets = ["clickableElement"]

  connect() {
    console.log("Hello")
  }

  advice() {
    this.clickableElementTarget.classList.remove("d-none")
  }

}
