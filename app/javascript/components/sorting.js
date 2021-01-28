const toggleSorting = () => {
  const filterButton = document.querySelector('.button-filter');
  const filter = document.querySelector('.filter');

  if(filterButton) {
    filterButton.addEventListener('click', () => {
      if(filter.style.display === 'none') {
        filter.style.display = 'block';
        filterButton.innerHTML = 'filter -';
      } else {
        filter.style.display = 'none';
        filterButton.innerHTML = 'filter +';
      }
    });
  }
}

export { toggleSorting };
