import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-fake"
export default class extends Controller {
  static targets = ["finishButton", "fakeLink"]

  connect() {
    console.log("hello from show fake");
    const isDisabled = (element) => element.hasAttribute("disabled")
    if (this.finishButtonTargets.every(isDisabled)) {
      this.fakeLinkTarget.classList.remove('d-none')
    }
  }


  check(event) {
    event.currentTarget.setAttribute('disabled','')

    const isDisabled = (element) => element.hasAttribute("disabled")
    this.finishButtonTargets.forEach(button => {
      console.log(button);
      console.log(button.disabled)
    });

    console.log(this.finishButtonTargets.every(isDisabled))
    if (this.finishButtonTargets.every(isDisabled)) {
      this.fakeLinkTarget.classList.remove('d-none')
    }
  }
}
