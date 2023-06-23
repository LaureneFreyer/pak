// category_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["categoryButton"]

  connect() {
    this.showAllPets()
    console.log("Hello, la categorie marche!", this.element)
  }

  showAllPets() {
    const petCards = Array.from(document.querySelectorAll(".card-trip"))
    petCards.forEach(card => {
      card.style.display = "block"
    })
  }

  filterByCategory(event) {
    const selectedCategory = event.target.dataset.category;
    const petCards = Array.from(document.querySelectorAll(".card-trip"));

    const mainSpecies = ['Chien', 'Chat', 'Oiseau'];

    console.log(`Selected Category: ${selectedCategory}`);

    petCards.forEach(card => {
      if (card.dataset.category) {
        const species = card.dataset.category;
        console.log(`Pet Species: ${species}`);

        if (selectedCategory === "all") {
          card.style.display = "block";
        } else if (selectedCategory === "Autres" && mainSpecies.includes(species)) {
          card.style.display = "none";
        } else if (selectedCategory === "Autres" && !mainSpecies.includes(species)) {
          card.style.display = "block";
        } else if (species === selectedCategory) {
          card.style.display = "block";
        } else {
          card.style.display = "none";
        }
      } else {
        console.error(`No category data for card: ${card}`);
      }
    });
  }
}
