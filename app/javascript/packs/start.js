const start = () => {

  const link = document.querySelector("#start-challenge");
  const progress = document.querySelector("#nail-it");

  console.log(progress);

  if (link) {

    console.log(link);
      link.addEventListener('click', (event) => {
        event.preventDefault();
        console.log("hey");
      });
  } else if (progress) {
    progress.scrollIntoView();
  } else {
    return
  }
}
export { start }
