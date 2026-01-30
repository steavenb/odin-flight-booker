import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["passengerForm", "passengerList", "passenger"]
  connect() {
    console.log("Hello controller connected");
  }
  addPassenger() {
    const currentPassengers = this.passengerListTarget.getElementsByTagName('h4').length;
    console.log(currentPassengers);
    const newPassengerForm = document.importNode(this.passengerFormTarget.content, true);
    console.log(newPassengerForm);
    const h4 = newPassengerForm.querySelectorAll('h4')[0];
    h4.textContent = `Passenger ${currentPassengers + 1}`;
    const name = newPassengerForm.querySelectorAll('input')[0];
    name.value = '';
    name.id = `booking_passengers_attributes_${currentPassengers}_name`;
    name.name = `booking[passengers_attributes][${currentPassengers}][name]`;
    const email = newPassengerForm.querySelectorAll('input')[1];
    email.value = '';
    email.id = `booking_passengers_attributes_${currentPassengers}_email`;
    email.name = `booking[passengers_attributes][${currentPassengers}][email]`;
    this.passengerListTarget.appendChild(newPassengerForm);
  }

  removePassenger(event) {
   const passenger = event.target.parentNode;
   if (this.passengerTargets.length === 1) {
    alert("You must have at least one passenger");
    return;
   }
   passenger.remove();
  }
}
