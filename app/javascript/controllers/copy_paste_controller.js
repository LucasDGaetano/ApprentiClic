import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy-paste"
export default class extends Controller {
  static targets = ["copyArea", "pasteArea"]
  connect() {
    console.log("hello from cc controller")
  }

  copy() {
    console.log("copied")
    this.copyAreaTarget.style="background-color: #84A59D;"
  }

  paste() {
    console.log("pasted")
    this.pasteAreaTarget.style="background-color: #84A59D;"
  }

}
