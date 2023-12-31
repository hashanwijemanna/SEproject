let products = {
    data: [
      {
        productName: "Industrial Coofix 220V Portable High Power Electric Drill",
        category: "Home_01",
        price: "17.65",
        Description:"4tegtjyjtju6ry4e5t5u7irt534t34tg5uy5yt4t45y5y",
        image: "../Images/1.jpg",
      },
      {
        productName: "Monja 6 Pcs/Set Acrylic Liquid Powder Nail Art Kit Nail Carving Painting Brush Storage Cup Nail Extension Builder Manicure Set",
        category: "Bea",
        price: "49",
        image: "../Images/13.jpg",
      },
      {
        productName: "Moose Men's Chino Pant 8533",
        category: "Fash",
        price: "7.11",
        image: "../Images/4.jpg",
      },
      {
        productName: "HadaLabo Gokujyun Hydrating Cream 50g",
        category: "Bea",
        price: "7.87",
        image: "../Images/14.jpg",
      },
      {
        productName: "Bigen Speedy Hair Color, Natural Black 881 (40g + 40g)",
        category: "Bea",
        price: "10.32",
        image: "../Images/15.jpg",
      },
      {
        productName: "IELGY men's breathable comfortable non-slip casual shoes",
        category: "Fash",
        price: "18.61",
        image: "../Images/5.jpg",
      },
      {
        productName: "72x60x7 Hayleys Spring Mattress - 5 Years Warranty",
        category: "Home_01",
        price: "135.30",
        image: "../Images/2.jpg",
      },
      {
        productName: "Google Pixel 6 8GB Ram 128GB Rom 5G Android Smart Phone",
        category: "Tech_02",
        price: "293.86",
        image: "../Images/10.jpg",
      },
      {
        productName: "Women Crossbody Bags New Canvas Shoulder Bag Female Small Bag Fashion Students Simple Single Shoulder Fashion Phone Bags",
        category: "Fash",
        price: "1.95",
        image: "../Images/6.jpg",
      },
      {
        productName: "Amilex Electric Oven - 30L Capacity, 3KG",
        category: "Tech_02",
        price: "49",
        image: "../Images/11.jpg",
      },
      {
        productName: "Lenovo ThinkPad Yoga 260 , Core i5 6th Gen 8GB Ram , 256GB SSD 13inch touchscreen with pen , Ultrabook",
        category: "Tech_02",
        price: "252.09",
        image: "../Images/12.jpg",
      },
      {
        productName: "Munchee Lemon Puff 200g",
        category: "Gro",
        price: "0.66",
        image: "../Images/7.jpg",
      },
      {
        productName: "Turmeric Latte mix",
        category: "Gro",
        price: "4.16",
        image: "../Images/8.jpg",
      },
      {
        productName: "Universal Gritstone Nonstick Cookware Set",
        category: "Home_01",
        price: "86.19",
        image: "../Images/3.jpg",
      },
      {
        productName: "Oma Ceylon Organic vanilla bean pods sticks 10g",
        category: "Gro",
        price: "1.38",
        image: "../Images/9.jpg",
      },
    ],
  };
  
  for (let i of products.data) {
    //Create Card
    let card = document.createElement("div");
    //Card should have category and should stay hidden initially
    card.classList.add("card", i.category, "hide");
    //image div
    let imgContainer = document.createElement("div");
    imgContainer.classList.add("image-container");
    //img tag
    let image = document.createElement("img");
    image.setAttribute("src", i.image);
    imgContainer.appendChild(image);
    card.appendChild(imgContainer);
    //container
    let container = document.createElement("div");
    container.classList.add("container");
    //product name
    let name = document.createElement("h5");
    name.classList.add("product-name");
    name.innerText = i.productName.toUpperCase();
    container.appendChild(name);
    //price
    let price = document.createElement("h6");
    price.innerText = "$" + i.price;
    container.appendChild(price);
  
    card.appendChild(container);
    document.getElementById("products").appendChild(card);
  }
  
  //parameter passed from button (Parameter same as category)
  function filterProduct(value) {
    //Button class code
    let buttons = document.querySelectorAll(".button-value");
    buttons.forEach((button) => {
      //check if value equals innerText
      if (value.toUpperCase() == button.innerText.toUpperCase()) {
        button.classList.add("active");
      } else {
        button.classList.remove("active");
      }
    });
  
    //select all cards
    let elements = document.querySelectorAll(".card");
    //loop through all cards
    elements.forEach((element) => {
      //display all cards on 'all' button click
      if (value == "all") {
        element.classList.remove("hide");
      } else {
        //Check if element contains category class
        if (element.classList.contains(value)) {
          //display element based on category
          element.classList.remove("hide");
        } else {
          //hide other elements
          element.classList.add("hide");
        }
      }
    });
  }
  
  //Search button click
  document.getElementById("search").addEventListener("click", () => {
    //initializations
    let searchInput = document.getElementById("search-input").value;
    let elements = document.querySelectorAll(".product-name");
    let cards = document.querySelectorAll(".card");
  
    //loop through all elements
    elements.forEach((element, index) => {
      //check if text includes the search value
      if (element.innerText.includes(searchInput.toUpperCase())) {
        //display matching card
        cards[index].classList.remove("hide");
      } else {
        //hide others
        cards[index].classList.add("hide");
      }
    });
  });
  
  //Initially display all products
  window.onload = () => {
    filterProduct("all");
  };