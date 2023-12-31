let products = {
data:[{
    productName: "Regular White T-Shirt",
    category: "Topwear",
    price: "$30",
    Image: "images.jpeg"
    },
    {
    productName: "Regular White T-Shirt",
    category: "Topwear",
    price: "$30",
    Image: "40697d21ada0db4eb11e0e6c427b747b.jpg"
    },
    {      
    productName: "Regular White T-Shirt",
    category: "Topwear",
    price: "$30",
    Image: "images.jpeg"
    },
    {
    productName: "Regular White T-Shirt",
    category: "Topwear",
    price: "$30",
    Image: "images.jpeg"
    },
    {
    productName: "Regular White T-Shirt",
    category: "Topwear",
    price: "$30",
    Image: "images.jpeg"
    },
    {
        productName: "Regular White T-Shirt",
        category: "Topwear",
        price: "$30",
        Image: "images.jpeg"
    }
]

};

for(let i of products.data){
//create card
let card = document.createElement("div");
//card should have category
card.classList.add("card", "iamge-container");
//image div
let imgContainer = document.createElement("div")
imgContainer.classList.add("image-container");
//img tag
let image = document.createElement("img");
image.setAttribute("src",i.image);
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
price.innerText = "$" + i. price;

container.appendChild(container);
document.getElementById("products").appendChild(card);
}