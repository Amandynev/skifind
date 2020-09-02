const updateQueryPlaceholder = () => {

  console.log('updateQueryPlaceholder');

  const queryInput = document.querySelector('#query');
  console.log(queryInput);

  if (window.innerWidth <= 520) {
    console.log('small')
    queryInput.placeholder = "Station..."
  }

  console.log(window.innerWidth);
}

export { updateQueryPlaceholder }
