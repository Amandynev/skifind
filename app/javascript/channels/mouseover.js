
const mouseover =() => {

  // mouseover.addEventListener('mouseover', (event) => {
  //   console.log(event.mouseover.value);
  // });
  const mouseover = document.querySelectorAll(".mouseover").forEach((card) => {
  const mouseoverText ="More infos"
    card.addEventListener("mouseover", (event) => {
      console.log(event);
  });
});

  }

export { mouseover };
