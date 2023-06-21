import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

export default class extends Controller {
  static targets = ["headline"];

  connect() {
    this.initializeTyped();
  }

  initializeTyped() {
    new Typed(this.headlineTarget, {
      stringsElement: this.headlineTarget.querySelector(".cd-words-wrapper"),
      loop: true,
      typeSpeed: 100,
      backSpeed: 50,
      backDelay: 2000,
    });
  }
}
