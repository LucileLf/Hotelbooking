import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    console.log("flatpickr controller connected")
    flatpickr(this.startDateTarget, {
      minDate: "today",
    })
    flatpickr(this.endDateTarget, {})
  }
}
