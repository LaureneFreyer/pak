import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { fr } from "flatpickr/dist/l10n/fr.js"

export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    flatpickr(this.startDateTarget, { "locale": "fr", altInput: true, altFormat: 'j F Y', minDate: 'today',
      plugins: [new rangePlugin({ input: "#end_date"})]})
    flatpickr(this.endDateTarget, { altInput: true, altFormat: 'j F Y'})
  }
}
