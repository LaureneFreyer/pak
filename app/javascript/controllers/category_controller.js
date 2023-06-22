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
    const selectedCategory = event.target.dataset.category
    const petCards = Array.from(document.querySelectorAll(".card-trip"))

    petCards.forEach(card => {
      const category = card.dataset.category

      if (selectedCategory === "all" || category === selectedCategory) {
        card.style.display = "block"
      } else {
        card.style.display = "none"
      }
    })
  }
}
