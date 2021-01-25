const productSpecs = () => {
  const specsHeader = document.querySelector('.specs')
  const specsText = document.querySelector('.products-specs')

  specsText.style.display = "none";

  specsHeader.addEventListener('click', () => {
    if (specsText.style.display === "none") {
      specsText.style.display = "block";
    } else {
      specsText.style.display = "none";
    }
  })

};

const productDetails = () => {
  const productsHeader = document.querySelector('.details')
  const productsText = document.querySelector('.products-details')

  productsText.style.display = "none";

  productsHeader.addEventListener('click', () => {
    if (productsText.style.display === "none") {
      productsText.style.display = "block";
    } else {
      productsText.style.display = "none";
    }
  })

};

const productPolicy = () => {
  const policyHeader = document.querySelector('.policy')
  const policyText = document.querySelector('.products-policy')

  policyText.style.display = "none";

  policyHeader.addEventListener('click', () => {
    if (policyText.style.display === "none") {
      policyText.style.display = "block";
    } else {
      policyText.style.display = "none";
    }
  })

};



export { productSpecs };
export { productDetails };
export { productPolicy };
