import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]
  //const bookedDates = [""];
  connect() {
    //console.log(this.bookedDates);
    flatpickr(this.startDateTarget, {
      altInput: true,
      plugins: [new rangePlugin({ input: "#end_date"})],
      minDate: "today",
      locale: French,
      altFormat: "J F Y",
      // "disable": [
      //   function(date) {
      //       // return true to disable date
      //     if (bookedDates.includes(date)) {
      //       return true;
      //     }
      //   }
      // ],
    })
    flatpickr(this.endDateTarget, {
    })
  }
  }


  // addToBookedDates(startDate, endDate) {
  //   const range = [];
  //   const currentDate = new Date(startDate);
  //   while (currentDate <= endDate) {
  //     range.push(new Date(currentDate));
  //     currentDate.setDate(currentDate.getDate() + 1);
  //   }
  //   this.bookedDates.push(...range);
  //   console.log(this.bookedDates);
  // }
