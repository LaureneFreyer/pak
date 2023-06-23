import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {

  connect() {
    console.log('hello')
    flatpickr(this.element, { "locale": "fr", altInput: true, altFormat: 'j F Y', minDate: 'today' })
  }
}
