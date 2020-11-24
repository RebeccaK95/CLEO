const check = () => {
  const checked = document.querySelector("#btn-step");
  console.log(checked)

  if (checked){
    checked.addEventListener('mouseover', function() {

      checked.classList.toggle("fa-circle");
      checked.classList.toggle("fa-check-circle");
    });
  }
};


export { check }
