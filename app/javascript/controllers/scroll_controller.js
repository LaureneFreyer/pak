import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.scrollFunction = this.scroll.bind(this)
    window.addEventListener("scroll", this.scrollFunction)
  }

  disconnect() {
    window.removeEventListener("scroll", this.scrollFunction)
  }

  scroll() {
    const logoImage = this.element.querySelector('.navbar-brand img');
    const navbar = this.element;

    if (window.scrollY > 20) {
      logoImage.classList.add('small-logo');
      navbar.style.position = "sticky";
      navbar.style.top = "0";
      navbar.style.width = "100%";
    } else {
      logoImage.classList.remove('small-logo');
      navbar.style.position = "relative";
    }
  }
}
