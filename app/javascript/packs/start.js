const start = () => {

  const link = document.querySelector("#start-challenge")
  const progress = document.querySelector(".challenge-progression")

  if (link) {

    console.log(link)
      link.addEventListener('click', (event) => {
        event.preventDefault();
        console.log("hey");
      });
  }
  else {
    progress.scrollIntoView();
  }
}
export { start }
