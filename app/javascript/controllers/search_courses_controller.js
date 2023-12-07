import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-courses"
export default class extends Controller {
  static targets = ["form", "input", "category", "difficulty", "list"]

  connect() {
  }

  update(event) {
    event.preventDefault();
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}&category=${this.categoryTarget.value}&difficulty=${this.difficultyTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }
}
