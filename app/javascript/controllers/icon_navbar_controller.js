import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["text", "icon"]

  mouseover() {
    this.textTarget.classList.toggle("d-none");
    this.iconTarget.classList.toggle("d-none");
  }
}
