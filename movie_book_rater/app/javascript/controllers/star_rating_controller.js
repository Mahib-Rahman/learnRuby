import { Controller } from "@hotwired/stimulus";
console.log("test js file is loaded 1")

export default class extends Controller {
  static targets = ["starsContainer", "ratingInput"]

  connect() {
    console.log("test js file is loaded 2", this.element)
    this.rating = 0
    this.stars = Array.from(this.starsContainerTarget.children)
  }

  rate(event) {
    this.rating = event.currentTarget.dataset.rating
    this.ratingInputTarget.value = this.rating
    this.updateStars()
  }

  highlight(event) {
    const rating = event.currentTarget.dataset.rating
    this.updateStars(rating)
  }

  reset() {
    this.updateStars()
  }

  updateStars(rating = this.rating) {
    this.stars.forEach(star => {
      if (star.dataset.rating <= rating) {
        star.classList.remove("text-gray-400")
        star.classList.add("text-yellow-400")
      } else {
        star.classList.remove("text-yellow-400")
        star.classList.add("text-gray-400")
      }
    })
  }
}
