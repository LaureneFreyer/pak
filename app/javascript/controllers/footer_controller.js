import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.adjustFooterPosition();
    window.addEventListener('resize', this.adjustFooterPosition.bind(this));
    console.log('Hello, Stimulus!', this.element);
  }

  disconnect() {
    window.removeEventListener('resize', this.adjustFooterPosition.bind(this));
  }

  adjustFooterPosition() {
    const contentHeight = document.querySelector('.content').offsetHeight;
    const windowHeight = window.innerHeight;
    const footer = this.element;

    if (contentHeight < windowHeight) {
      footer.style.position = 'fixed';
      footer.style.bottom = '0';
    } else {
      footer.style.position = 'relative';
    }
  }
}
