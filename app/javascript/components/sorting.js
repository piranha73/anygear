const toggleSorting = () => {
  const filterButton = document.querySelector('.button-filter');
  const filter = document.querySelector('.filter');

  filterButton.addEventListener('click', () => {
    console.log(filterButton);
    console.log(filter);
    if(filter.style.display === 'none') {
      filter.style.display = 'block';
      filterButton.innerHTML = 'filter -';
    } else {
      filter.style.display = 'none';
      filterButton.innerHTML = 'filter +';
    }
  })
};

export { toggleSorting };
