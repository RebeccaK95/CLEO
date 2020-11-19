
const filterCategoriesTips = () => {
  const tips = document.querySelectorAll(".tip-card");
  const categories = document.querySelectorAll(".category-card");
  const categoriesContainer = document.querySelector(".category-cards");

  if (categoriesContainer){
    categoriesContainer.addEventListener('click', (e) => {

      tips.forEach(tip => {
        if (e.target.dataset.category === tip.dataset.category) {
        tip.style.display = "";
        } else {
        tip.style.display = "none";
        }
      })
    })
  };
}

export { filterCategoriesTips };

