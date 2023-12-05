import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="double-clic"
export default class extends Controller {
  static targets = ['dot']

  // clickTime = 0
  // clickedOnce = false


  toWhite(element) {
    element.style.background = "white"
  }

  alert() {
    window.alert("Réessayez, c'était un simple clic et non pas un double-clic")
  }

  oneClick(event) {
    clearTimeout(this.clickTimer);
    this.clickTimer = setTimeout(() => {
      console.log("One Click");
      this.element.children[1].style.background = "#FF7F7F";
      setTimeout(() => {this.alert()}, 1000);
    }, 300);
    // window.alert("Réessayez, c'était un simple clic et non pas un double-clic")
  }

  detectClick(event) {
    // clearTimeout(this.clickTimeout)
    clearTimeout(this.clickTimer);
    console.log('doubleclick');

    const targetElement = this.element.children[1];

    targetElement.style.background = "#ACE1AF";
    setTimeout(() => {this.toWhite(targetElement)}, 2000)
  }
  connect() {
    // console.log(this.element.children[1]);
    let clickTimer = 0;
    this.element.children[1].addEventListener("dblclick", () => {this.detectClick()})
  }
}


    // if (this.clickedOnce) {
    //   const currentTime = new Date().getTime();
    //   const timeDifference = currentTime - this.clickTime;

    //   if (timeDifference < 300) {
    //     this.dotTarget.style.backgroundColor = "red";
    //     setTimeout(() => {
    //       this.dotTarget.style.backgroundColor = "cyan";
    //     }, 1000);
    //   }
    //   this.clickedOnce = false;
    // } else {
    //   this.clickTime = new Date().getTime();
    //   this.clickedOnce = true;
    // }
