import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const datepicker = document.querySelector(".datepicker")

if (datepicker) {
 const unavailabilities = JSON.parse(datepicker.dataset.unavailableOn)
  flatpickr(".datepicker", {
    altInput: true,
    disable: unavailabilities
  })
}
