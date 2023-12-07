import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="copy-paste"
export default class extends Controller {
  static targets = ["copyArea", "pasteArea", "congrats"]
  static values = {
    isCopied: Boolean,
    isPasted: Boolean
  }
  connect() {
    this.isCopiedValue = false;
    this.isPastedValue = false;
  }

  copy() {
    console.log("copied")
    this.isCopiedValue = true;
    this.copyAreaTarget.style="background-color: #ACE1AF;"
    this.checkbooleans();
  }

  paste() {
    console.log("pasted")
    this.isPastedValue = true;
    this.pasteAreaTarget.style="background-color: #ACE1AF;"
    this.checkbooleans();
  }

  checkbooleans() {
    if (this.isCopiedValue && this.isPastedValue) {
      console.log("Display text de felicitation !");
      this.congratsTarget.classList.remove('d-none');
    }
  }

}
