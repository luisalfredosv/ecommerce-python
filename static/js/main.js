"use strict";

function addToCart(slugProduct) {
	let cartProducts = getCart();
	const item = {
		name: slugProduct,
		quantity: 1,
	};
	cartProducts.push(item);
	saveCart(cartProducts);
}

function getCart() {
	const data = localStorage.getItem("cartProducts");
	console.log("Get Cart List");

	if (data) {
		return JSON.parse(data);
	} else {
		return [];
	}
}

function removeItemCart(slugProduct) {
	const cartProducts = getCart();
	let newCart = cartProducts.filter(function (item) {
		return item.name !== slugProduct;
	});

	saveCart(newCart);
	console.log("Remove Item to Cart");
}

function saveCart(items) {
	console.log("Saved Cart");
	localStorage.setItem("cartProducts", JSON.stringify(items));
}
