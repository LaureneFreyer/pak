import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const selectImage = (myCard) => {
      const cards = document.querySelectorAll('.card-banner');
      for (let card of cards) {
        card.classList.remove('selected');
        card.classList.add('blur');
      }
      myCard.classList.add('selected');
      myCard.classList.remove('blur');
    };

    document.addEventListener('click', (e) => {
      const targetElement = e.target;
      if (targetElement.tagName.toLowerCase() === 'img' && targetElement.parentNode.classList.contains('card-banner')) {
        selectImage(targetElement.parentNode);
      } else {
        const cards = document.querySelectorAll('.card-banner');
        for (let card of cards) {
          card.classList.remove('selected');
          card.classList.remove('blur');
        }
      }
    });
  }
}
