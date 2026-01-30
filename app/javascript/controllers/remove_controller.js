import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Remove controller connected");
  }

  remove() {
    this.element.remove();
  }
}