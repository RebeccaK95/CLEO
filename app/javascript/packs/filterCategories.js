
const filterCategories = () => {
  const challenges = document.querySelectorAll(".challenge-card");
  const categories = document.querySelectorAll(".category-card");
  const categoriesContainer = document.querySelector(".category-cards");

  categoriesContainer.addEventListener('click', (e) => {

    challenges.forEach(challenge => {
      if (e.target.dataset.category === challenge.dataset.category) {
      challenge.style.display = "";
      } else {
      challenge.style.display = "none";
      }
    })
  })
}

export { filterCategories };
