
const filterCategoriesTips = () => {
  const tips = document.querySelectorAll(".tip-dashboard");
  const categories = document.querySelectorAll(".category-card");
  const categoriesContainer = document.querySelector(".category-cards-tips");

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

