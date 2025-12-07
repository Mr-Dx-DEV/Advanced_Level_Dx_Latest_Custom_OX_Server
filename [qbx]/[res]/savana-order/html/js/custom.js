let moneyType = 'en-US';
let locale = 'en-US';

let categories = [];
let menus = [];
let products = [];
let basket = {};
let configProducts = [];
let selectedPlayer = null;
let selectedMethod = 'cash';

function ShowNotify(type, message) {
	var audio = new Audio('notify.mp3');
	audio.volume = 0.5;
	audio.play();
	if (type == 'success') {
		var randomId = Math.floor(Math.random() * 1000000);
		var notifyHTML = `
        <div id="${randomId}" class="relative flex items-center gap-1 w-[450px] border-2 border-white border-opacity-[8%] bg-[#252826] bg-opacity-[83%] rounded-xl p-3 px-5">
            <div class="flex border-r border-white border-opacity-[12%] pr-3 items-center gap-3 inter text-[#56FF85] font-bold text-[18.45px]">
                <svg class="w-12 h-12" viewBox="0 0 33 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16.5C0 12.1239 1.73839 7.92709 4.83274 4.83274C7.92709 1.73839 12.1239 0 16.5 0C20.8761 0 25.0729 1.73839 28.1673 4.83274C31.2616 7.92709 33 12.1239 33 16.5C33 20.8761 31.2616 25.0729 28.1673 28.1673C25.0729 31.2616 20.8761 33 16.5 33C12.1239 33 7.92709 31.2616 4.83274 28.1673C1.73839 25.0729 0 20.8761 0 16.5ZM15.5584 23.562L25.058 11.6864L23.342 10.3136L15.2416 20.4358L9.504 15.6552L8.096 17.3448L15.5584 23.562Z" fill="#42FF77"/>
                </svg>
            </div>
            <div class="flex flex-col gap-0.5 pl-3">
                <div class="flex items-center gap-3 poppins text-[#56FF85] font-medium text-xl">
                    Successfuly
                </div>
                <div class="poppins leading-[99%] text-[15.81px] text-white font-light leading-[140%]">
                    ${message}
                </div>
            </div>
        </div>
        `;

		$('#notify').append(notifyHTML);
		$(`#${randomId}`).hide();
		$(`#${randomId}`).fadeIn('slow');

		setTimeout(() => {
			$(`#${randomId}`).fadeOut('slow', function () {
				$(`#${randomId}`).remove();
			});
		}, 2500);
	} else {
		var randomId = Math.floor(Math.random() * 1000000);
		var notifyHTML = `
        <div id="${randomId}" class="relative flex items-center gap-1 w-[450px] border-2 border-white border-opacity-[8%] bg-[#252826] bg-opacity-[83%] rounded-xl p-3 px-5">
            <div class="flex border-r border-white border-opacity-[12%] pr-3 items-center gap-3 inter text-[#56FF85] font-bold text-[18.45px]">
                <svg class="w-12 h-12" viewBox="0 0 33 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M16.5 24.625C16.9604 24.625 17.3466 24.469 17.6586 24.157C17.9706 23.845 18.1261 23.4593 18.125 23C18.1239 22.5407 17.9679 22.155 17.657 21.843C17.3461 21.531 16.9604 21.375 16.5 21.375C16.0396 21.375 15.6539 21.531 15.343 21.843C15.0321 22.155 14.8761 22.5407 14.875 23C14.8739 23.4593 15.0299 23.8455 15.343 24.1586C15.6561 24.4717 16.0418 24.6272 16.5 24.625ZM14.875 18.125H18.125V8.375H14.875V18.125ZM16.5 32.75C14.2521 32.75 12.1396 32.3232 10.1625 31.4695C8.18542 30.6158 6.46563 29.4583 5.00313 27.9969C3.54063 26.5355 2.38309 24.8157 1.5305 22.8375C0.677919 20.8593 0.251085 18.7468 0.250002 16.5C0.248919 14.2532 0.675752 12.1407 1.5305 10.1625C2.38525 8.18433 3.54279 6.46454 5.00313 5.00313C6.46346 3.54171 8.18325 2.38417 10.1625 1.5305C12.1418 0.676834 14.2543 0.25 16.5 0.25C18.7458 0.25 20.8583 0.676834 22.8375 1.5305C24.8168 2.38417 26.5365 3.54171 27.9969 5.00313C29.4572 6.46454 30.6153 8.18433 31.4711 10.1625C32.327 12.1407 32.7533 14.2532 32.75 16.5C32.7468 18.7468 32.3199 20.8593 31.4695 22.8375C30.6191 24.8157 29.4615 26.5355 27.9969 27.9969C26.5322 29.4583 24.8124 30.6164 22.8375 31.4711C20.8626 32.3259 18.7501 32.7522 16.5 32.75Z" fill="#FF6363"/>
                </svg>
            </div>
            <div class="flex flex-col gap-0.5 pl-3">
                <div class="flex items-center gap-3 poppins text-[#FF6363] font-medium text-xl">
                    Error
                </div>
                <div class="poppins leading-[99%] text-[15.81px] text-white font-light leading-[140%]">
                    ${message}
                </div>
            </div>
        </div>
        `;

		$('#notify').append(notifyHTML);
		$(`#${randomId}`).hide();
		$(`#${randomId}`).fadeIn('slow');

		setTimeout(() => {
			$(`#${randomId}`).fadeOut('slow', function () {
				$(`#${randomId}`).remove();
			});
		}, 2500);
	}
}

function renderCategories() {
	$('#restaruantCategories').html('');
	$('#productList').html('');
	$('#basket').html('');
	$('#horizontalScroll').html('');

	$('#menus').addClass('hidden');
	$('#productListHeight').addClass('h-[34rem]');
	$('#productListHeight').removeClass('h-[21rem]');

	categories.forEach(function (category) {
		$('#restaruantCategories').append(`
            <div data-category="${category.id}" class="categoryItem cursor-pointer hover:text-opacity-100 hover:text-black hover:bg-opacity-100 transition-all w-full flex items-center text-white text-opacity-[31%] justify-center py-2 bg-white rounded bg-opacity-[6%]">
                ${category.title}
            </div>
        `);
	});

	$('.categoryItem')
		.off('click')
		.on('click', function () {
			var category = $(this).data('category');

			renderProducts(category);
			renderBasket();

			$('.categoryItem').removeClass('bg-opacity-100 text-opacity-100 text-black');
			$('.categoryItem').addClass('text-white text-opacity-[31%] bg-opacity-[6%]');
			$(this).addClass('bg-opacity-100 text-opacity-100 text-black');
			$(this).removeClass('text-white text-opacity-[31%] bg-opacity-[6%]');
		});
}

function renderBasket() {
	$('#basket').html('');

	basket = Object.assign({}, basket);

	Object.keys(basket).forEach(function (key) {
		var product = basket[key];

		var categoryName = categories.find(function (cat) {
			return cat.id == product.category;
		});

		$('#basket').append(`
            <div class="bg-white rounded-lg overflow-hidden flex flex-col bg-opacity-[3%] min-h-[5.3rem]">
                <div class="flex items-center justify-between p-2">
                    <div class="flex items-center gap-2">
                        <img class="w-10 h-10 rounded object-contain" src="${product.image}" alt="">
                        <div class="flex flex-col gap-1">
                            <div class=" leading-[90%] font-medium">${product.title}</div>
                            <div class="text-sm leading-[90%] text-white text-opacity-70">${categoryName.title}</div>
                        </div>
                    </div>
                    <div class="text-[#3DFF67] text-sm bg-[#3DFF67] bg-opacity-[26%] rounded-lg px-2 py-0.5">
                        $${new Intl.NumberFormat(moneyType).format(product.price * product.count)}
                    </div>
                </div>
                <div class="flex items-center bg-white bg-opacity-[2%] justify-between">
                    <div class="flex items-center">
                        <div data-product="${
							product.items ? product.key : product.item
						}" class="decraseBasket cursor-pointer opacity-30 hover:opacity-100 transition-all bg-white bg-opacity-[25%] rounded rounded-l-none p-2">
                            <svg class="w-3 h-3" viewBox="0 0 8 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7.5 1.49902H4.5L3.5 1.50002L0.5 1.49902V0.499023H3.5L4.5 0.500023L7.5 0.499023V1.49902Z" fill="white" fill-opacity="0.94"/>
                            </svg>
                        </div>
                        <div class="px-4 text-sm">x${product.count}</div>
                        <div data-product="${
							product.items ? product.key : product.item
						}" class="increaseBasket cursor-pointer opacity-30 hover:opacity-100 transition-all bg-white bg-opacity-[25%] rounded p-2">
                            <svg class="w-3 h-3" viewBox="0 0 8 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7.5 4.49902H4.5V7.49902H3.5V4.49902H0.5V3.49902H3.5V0.499023H4.5V3.49902H7.5V4.49902Z" fill="white" fill-opacity="0.94"/>
                            </svg>
                        </div>
                    </div>
                    <div data-product="${product.items ? product.key : product.item}" class="deleteBasket cursor-pointer bg-[#FF5B5B] rounded rounded-r-none p-2">
                        <svg class="w-3 h-3" viewBox="0 0 6 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0.500041 6.91667C0.500041 7.375 0.875041 7.75 1.33337 7.75H4.66671C5.12504 7.75 5.50004 7.375 5.50004 6.91667V1.91667H0.500041V6.91667ZM5.91671 0.666667H4.45837L4.04171 0.25H1.95837L1.54171 0.666667H0.083374V1.5H5.91671V0.666667Z" fill="white"/>
                        </svg>
                    </div>
                </div>
            </div>    
        `);
	});

	$('.decraseBasket')
		.off('click')
		.on('click', function () {
			var product = $(this).data('product');

			if (basket[product].count > 1) {
				basket[product].count -= 1;
			} else {
				delete basket[product];
			}

			renderBasket();
		});

	$('.deleteBasket')
		.off('click')
		.on('click', function () {
			var product = $(this).data('product');

			delete basket[product];

			renderBasket();
		});

	$('.increaseBasket')
		.off('click')
		.on('click', function () {
			var product = $(this).data('product');

			basket[product].count += 1;

			renderBasket();
		});

	var total = Object.keys(basket).reduce(function (total, key) {
		return total + basket[key].price * basket[key].count;
	}, 0);

	$('#basketTotal').html(`$${new Intl.NumberFormat(moneyType).format(total)}`);
}

function renderProducts(category) {
	var productsFiltered = products.filter(function (product) {
		return product.category == category;
	});

	var menuProducts = menus.filter(function (menu) {
		return menu.category == category;
	});

	$('#productList').html('');

	productsFiltered.forEach(function (product) {
		var categoryName = categories.find(function (cat) {
			return cat.id == product.category;
		});
		$('#productList').append(`
            <div data-product="${product.item}" class="productItem w-[13.8rem] h-[14rem] cursor-pointer group overflow-hidden relative rounded-xl pb-16 flex flex-col p-3 bg-white bg-opacity-[3%]">
                <img class="rounded-lg h-24 w-full object-contain" src="${product.image}" alt="">
                <div class="flex flex-col mt-3">
                    <div class="font-medium text-lg  leading-[90%]">
                        ${product.title}
                    </div> 
                    <div class="text-white text-opacity-50 mt-0.5">${categoryName.title}</div>
                </div>
                <div class="flex absolute w-full right-3 bottom-11 items-center justify-end">
                    <div class="font-medium rounded px-2 pt-0.52 flex items-center justify-center text-[#62FF84] bg-[#62FF84] bg-opacity-[25%]">
                        $${new Intl.NumberFormat(moneyType).format(product.price)}
                    </div>
                </div>
                <div class="absolute group-hover:bg-opacity-20 transition-all bottom-0 flex items-center justify-center py-1 left-0 w-full bg-white bg-opacity-10">
                    Add to cart
                    <img class="absolute left-0 bottom-0 h-full" src="img/addToCart.png" alt="">
                </div>
            </div>    
        `);
	});

	$('.productItem')
		.off('click')
		.on('click', function () {
			var product = $(this).data('product');

			var productData = products.find(function (prod) {
				return prod.item == product;
			});

			if (!basket[productData.item]) {
				basket[productData.item] = {
					title: productData.title,
					price: productData.price,
					image: productData.image,
					item: productData.item,
					category: productData.category,
					count: 1,
				};
			} else {
				basket[productData.item].count += 1;
			}

			renderBasket();
		});

	if (menuProducts.length > 0) {
		$('#menus').removeClass('hidden');
		$('#productListHeight').removeClass('h-[34rem]');
		$('#productListHeight').addClass('h-[21rem]');
		$('#horizontalScroll').html('');
		menuProducts.forEach(function (menu) {
			var menuItems = menu.items;

			var contentHtml = '';

			menuItems.forEach(function (item) {
				var productData = products.find(function (prod) {
					return prod.item == item.item;
				});
				contentHtml += `<div>x${item.count} ${productData.title}</div>`;
			});

			$('#horizontalScroll').append(`
                <div data-id="${menu.key}" class="menuItem group cursor-pointer minWidthMenuItem rounded-lg overflow-hidden relative h-36 bg-yellow-500 rounded-xl w-[20rem]">
                    <img class="w-full h-full object-contain absolute rounded-xl" src="${menu.image}" alt="">
                    <div class="absolute w-full h-full menuItemVignette opacity-60 group-hover:opacity-100 transition-all"></div>
                    <div class="absolute w-full h-full flex justify-between">
                        <div class="flex flex-col justify-between p-3">
                            <div class="text-sm menuTitleBgBlur px-2 py-0.5 rounded-[6px] font-medium">${menu.title}</div>
                            <div class="flex">
                                <div class="text-sm bg-[#3DFF67] text-black px-2 py-0.5 rounded-[6px] font-medium">$${new Intl.NumberFormat(moneyType).format(menu.price)}</div>
                            </div>
                        </div>
                        <div class="flex flex-col text-right p-3">
                            <div class="text-sm text-white text-opacity-50">Menu Content;</div>
                            ${contentHtml}
                        </div>
                    </div>
                </div>
            `);
		});

		$('.menuItem')
			.off('click')
			.on('click', function () {
				var id = $(this).data('id');

				var menu = menus.find(function (menu) {
					return menu.key == id;
				});

				var menuItems = menu.items;

				if (menu) {
					if (!basket[menu.key]) {
						basket[menu.key] = {
							title: menu.title,
							price: menu.price,
							items: menuItems,
							category: menu.category,
							key: menu.key,
							image: menu.image,
							count: 1,
						};
					} else {
						basket[menu.key].count++;
					}
				}

				renderBasket();
			});
	} else {
		$('#horizontalScroll').html('');
		$('#menus').addClass('hidden');
		$('#productListHeight').addClass('h-[34rem]');
		$('#productListHeight').removeClass('h-[21rem]');
	}

	$('#searchInput')
		.off('input')
		.on('input', function () {
			var search = $(this).val();

			var filteredProducts = productsFiltered.filter(function (product) {
				return product.title.toLowerCase().includes(search.toLowerCase());
			});

			$('#productList').html('');

			filteredProducts.forEach(function (product) {
				var categoryName = categories.find(function (cat) {
					return cat.id == product.category;
				});
				$('#productList').append(`
                <div data-product="${product.item}" class="productItem w-[13.8rem] h-[14rem] cursor-pointer group overflow-hidden relative rounded-xl pb-16 flex flex-col p-3 bg-white bg-opacity-[3%]">
                    <img class="rounded-lg h-24 w-full object-contain" src="${product.image}" alt="">
                    <div class="flex flex-col mt-3">
                        <div class="font-medium text-lg  leading-[90%]">
                            ${product.title}
                        </div> 
                        <div class="text-white text-opacity-50 mt-0.5">${categoryName.title}</div>
                    </div>
                    <div class="flex absolute w-full right-3 bottom-11 items-center justify-end">
                        <div class="font-medium rounded px-2 pt-0.52 flex items-center justify-center text-[#62FF84] bg-[#62FF84] bg-opacity-[25%]">
                            $${new Intl.NumberFormat(moneyType).format(product.price)}
                        </div>
                    </div>
                    <div class="absolute group-hover:bg-opacity-20 transition-all bottom-0 flex items-center justify-center py-1 left-0 w-full bg-white bg-opacity-10">
                        Add to cart
                        <img class="absolute left-0 bottom-0 h-full" src="img/addToCart.png" alt="">
                    </div>
                </div>
            `);
			});

			$('.productItem')
				.off('click')
				.on('click', function () {
					var product = $(this).data('product');

					var productData = products.find(function (prod) {
						return prod.item == product;
					});

					if (!basket[productData.item]) {
						basket[productData.item] = {
							title: productData.title,
							price: productData.price,
							image: productData.image,
							item: productData.item,
							category: productData.category,
							count: 1,
						};
					} else {
						basket[productData.item].count += 1;
					}

					renderBasket();
				});
		});
}

function renderTransactions(transactions) {
	$('#transactions').html('');

	transactions = JSON.parse(transactions);

	transactions.sort(function (a, b) {
		return new Date(b.time) - new Date(a.time);
	});

	transactions.forEach(function (transaction) {
		if (transaction.type == 'deposit') {
			$('#transactions').append(`
                <div class="flex items-center justify-between bg-opacity-[3%] p-2 rounded-lg bg-white">
                    <div class="flex items-center gap-2">
                        <div class="w-8 h-8 bg-[#62FF84] bg-opacity-[16%] rounded flex items-center justify-center">
                            <svg class="w-5 h-5" viewBox="0 0 11 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.2407 11.3998V13.6822C10.2407 13.7993 10.1942 13.9116 10.1114 13.9944C10.0286 14.0772 9.91624 14.1237 9.79912 14.1237C9.68201 14.1237 9.56969 14.0772 9.48688 13.9944C9.40407 13.9116 9.35755 13.7993 9.35755 13.6822V11.3998C9.35549 10.833 9.23682 10.2727 9.00892 9.75372C8.78102 9.23477 8.44876 8.76826 8.03282 8.38324V11.604C8.03274 11.699 8.002 11.7915 7.94518 11.8676C7.88836 11.9438 7.80848 11.9996 7.71742 12.0268C7.62635 12.0539 7.52895 12.051 7.4397 12.0184C7.35044 11.9858 7.27408 11.9252 7.22198 11.8457L6.63247 10.9455C6.62806 10.9389 6.62364 10.9317 6.61978 10.9245C6.53319 10.7716 6.3894 10.6594 6.22005 10.6125C6.0507 10.5656 5.86966 10.5879 5.71675 10.6745C5.56385 10.7611 5.4516 10.9048 5.40471 11.0742C5.35782 11.2435 5.38012 11.4246 5.46671 11.5775L6.68822 13.4426C6.75234 13.5406 6.7749 13.6601 6.75094 13.7747C6.72697 13.8894 6.65845 13.9898 6.56044 14.0539C6.46243 14.118 6.34296 14.1406 6.22832 14.1166C6.11368 14.0927 6.01325 14.0241 5.94913 13.9261L4.72045 12.0494L4.7072 12.0284C4.68622 11.992 4.66691 11.955 4.64924 11.9181H0.526026C0.408913 11.9181 0.296596 11.8715 0.213785 11.7887C0.130973 11.7059 0.0844498 11.5936 0.0844498 11.4765V5.73378C0.0844498 5.49956 0.177496 5.27492 0.343119 5.1093C0.508742 4.94368 0.733375 4.85063 0.967602 4.85063H3.61706V7.50009C3.61706 7.6172 3.66358 7.72952 3.74639 7.81233C3.8292 7.89514 3.94152 7.94166 4.05863 7.94166C4.17575 7.94166 4.28806 7.89514 4.37088 7.81233C4.45369 7.72952 4.50021 7.6172 4.50021 7.50009V4.85063H7.14967C7.38389 4.85063 7.60853 4.94368 7.77415 5.1093C7.93977 5.27492 8.03282 5.49956 8.03282 5.73378V7.25832C8.71058 7.71633 9.26607 8.33311 9.6509 9.05494C10.0357 9.77677 10.2382 10.5818 10.2407 11.3998ZM4.50021 2.38388L5.51252 3.39674C5.59538 3.4796 5.70776 3.52615 5.82494 3.52615C5.94212 3.52615 6.0545 3.4796 6.13735 3.39674C6.22021 3.31388 6.26676 3.2015 6.26676 3.08433C6.26676 2.96715 6.22021 2.85477 6.13735 2.77191L4.37105 1.00561C4.33004 0.964551 4.28134 0.931981 4.22773 0.909759C4.17413 0.887537 4.11666 0.876099 4.05863 0.876099C4.0006 0.876099 3.94314 0.887537 3.88954 0.909759C3.83593 0.931981 3.78723 0.964551 3.74622 1.00561L1.97991 2.77191C1.89706 2.85477 1.85051 2.96715 1.85051 3.08433C1.85051 3.2015 1.89706 3.31388 1.97991 3.39674C2.06277 3.4796 2.17515 3.52615 2.29233 3.52615C2.40951 3.52615 2.52189 3.4796 2.60475 3.39674L3.61706 2.38388V4.85063H4.50021V2.38388Z" fill="#62FF84"/>
                            </svg>
                        </div>
                        <div class="text-[#62FF84]">
                            Deposit
                        </div>
                    </div>
                    <div class='flex items-center gap-4'>
                        <div class='text-white text-opacity-70'>${transaction.name}</div>
                        <div class="bg-[#62FF84] rounded-lg bg-opacity-[26%] px-2 py-0.5 font-medium text-[#3DFF67]">
                            $${new Intl.NumberFormat(moneyType).format(transaction.amount)}
                        </div>
                    </div>
                    
                </div>    
            `);
		} else {
			$('#transactions').append(`
                <div class="flex items-center justify-between bg-opacity-[3%] p-2 rounded-lg bg-white">
                    <div class="flex items-center gap-2">
                        <div class="w-8 h-8 bg-[#FF6262] bg-opacity-[16%] rounded flex items-center justify-center">
                            <svg class="w-5 h-5" viewBox="0 0 11 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4.5 3.0625H3.625V0.875C3.625 0.758968 3.67109 0.647688 3.75314 0.565641C3.83519 0.483594 3.94647 0.4375 4.0625 0.4375C4.17853 0.4375 4.28981 0.483594 4.37186 0.565641C4.45391 0.647688 4.5 0.758968 4.5 0.875V3.0625ZM8 6.76047V3.9375C8 3.70544 7.90781 3.48288 7.74372 3.31878C7.57962 3.15469 7.35706 3.0625 7.125 3.0625H4.5V6.38148L5.50297 5.37797C5.54362 5.33732 5.59187 5.30508 5.64498 5.28308C5.69809 5.26108 5.75501 5.24976 5.8125 5.24976C5.86999 5.24976 5.92691 5.26108 5.98002 5.28308C6.03313 5.30508 6.08138 5.33732 6.12203 5.37797C6.16268 5.41862 6.19492 5.46687 6.21692 5.51998C6.23892 5.57309 6.25024 5.63001 6.25024 5.6875C6.25024 5.74499 6.23892 5.80191 6.21692 5.85502C6.19492 5.90813 6.16268 5.95638 6.12203 5.99703L4.37203 7.74703C4.3314 7.78771 4.28315 7.81998 4.23004 7.842C4.17692 7.86401 4.11999 7.87534 4.0625 7.87534C4.00501 7.87534 3.94808 7.86401 3.89496 7.842C3.84185 7.81998 3.7936 7.78771 3.75297 7.74703L2.00297 5.99703C1.92088 5.91494 1.87476 5.8036 1.87476 5.6875C1.87476 5.5714 1.92088 5.46006 2.00297 5.37797C2.08506 5.29588 2.1964 5.24976 2.3125 5.24976C2.4286 5.24976 2.53994 5.29588 2.62203 5.37797L3.625 6.38148V3.0625H1C0.767936 3.0625 0.545376 3.15469 0.381282 3.31878C0.217187 3.48288 0.125 3.70544 0.125 3.9375V10.9375C0.125 11.0535 0.171094 11.1648 0.253141 11.2469C0.335188 11.3289 0.446468 11.375 0.5625 11.375H4.64766C4.66516 11.4116 4.6843 11.4483 4.70508 11.4844L4.7182 11.5052L5.93555 13.3645C5.99907 13.4616 6.09857 13.5295 6.21216 13.5533C6.32574 13.577 6.44411 13.5547 6.54121 13.4911C6.63832 13.4276 6.70621 13.3281 6.72995 13.2145C6.75369 13.1009 6.73134 12.9826 6.66781 12.8855L5.45758 11.0376C5.37179 10.8861 5.34969 10.7067 5.39615 10.5389C5.44261 10.3711 5.55382 10.2287 5.70531 10.1429C5.85681 10.0571 6.03618 10.035 6.20396 10.0815C6.37175 10.1279 6.51421 10.2391 6.6 10.3906C6.60383 10.3977 6.6082 10.4048 6.61258 10.4114L7.19664 11.3034C7.24827 11.3821 7.32392 11.4421 7.41235 11.4744C7.50078 11.5067 7.59728 11.5096 7.68751 11.4827C7.77773 11.4558 7.85687 11.4005 7.91317 11.3251C7.96947 11.2496 7.99992 11.158 8 11.0638V7.875C8.41237 8.25672 8.74172 8.71927 8.96752 9.23383C9.19333 9.74839 9.31076 10.3039 9.3125 10.8659V13.125C9.3125 13.241 9.35859 13.3523 9.44064 13.4344C9.52269 13.5164 9.63397 13.5625 9.75 13.5625C9.86603 13.5625 9.97731 13.5164 10.0594 13.4344C10.1414 13.3523 10.1875 13.241 10.1875 13.125V10.8637C10.185 10.0532 9.98441 9.25567 9.60314 8.5405C9.22187 7.82534 8.67151 7.21424 8 6.76047Z" fill="#FF6262"/>
                            </svg>
                                
                        </div>
                        <div class="text-[#FF6262]">
                            Withdraw
                        </div>
                    </div>
                    <div class='flex items-center gap-4'>
                        <div class='text-white text-opacity-70'>${transaction.name}</div>
                        <div class="bg-[#FF6262] rounded-lg bg-opacity-[26%] px-2 py-0.5 font-medium text-[#FF3D3D]">
                            $${new Intl.NumberFormat(moneyType).format(transaction.amount)}
                        </div>
                    </div>
                </div>   
            `);
		}
	});
}

function renderAdminProducts() {
	$('#adminProducts').html('');

	products.forEach(function (product) {
		var categoryName = categories.find(function (cat) {
			return cat.id == product.category;
		});

		$('#adminProducts').append(`
        <div class="w-[14.625rem] h-[14.5rem] group overflow-hidden relative rounded-xl pb-2 flex flex-col p-3 bg-white bg-opacity-[3%]">
            <img class="rounded-lg h-24 w-full object-contain" src="${product.image}" alt="">
            <div class="flex flex-col mt-3">
                <div class="font-medium text-lg  leading-[90%]">
                    ${product.title}
                </div> 
                <div class="text-white text-opacity-50 mt-0.5">${categoryName.title}</div>
            </div>
            <div class="flex mt-auto mb-10 gap-2 w-full items-center justify-end">
                <div class="font-medium rounded px-2 pt-0.52 flex items-center justify-center text-[#62FF84] bg-[#62FF84] bg-opacity-[25%]">
                    $${new Intl.NumberFormat(moneyType).format(product.price)}
                </div>
            </div>
            <div class="absolute bottom-0 flex items-center w-full left-0 right-0">
                <div data-item="${
					product.item
				}" class="editProduct transition-all flex-1 hover:bg-opacity-30 cursor-pointer gap-1.5 py-1.5 flex justify-center items-center bg-[#62C6FF] bg-opacity-[21%] text-[#62C6FF] text-sm">
                    <svg class="w-3 h-3" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M5.875 0.874986C6.469 0.874986 7.019 1.0629 7.46862 1.38374L3.28221 5.56969C3.23843 5.61197 3.20352 5.66255 3.17949 5.71847C3.15547 5.77438 3.14283 5.83453 3.1423 5.89538C3.14177 5.95624 3.15337 6.01659 3.17641 6.07292C3.19946 6.12925 3.23349 6.18042 3.27653 6.22346C3.31956 6.26649 3.37074 6.30052 3.42706 6.32357C3.48339 6.34662 3.54374 6.35821 3.6046 6.35768C3.66546 6.35715 3.7256 6.34451 3.78152 6.32049C3.83744 6.29647 3.88801 6.26155 3.93029 6.21778L8.11671 2.03136C8.44814 2.49658 8.62586 3.05378 8.625 3.62499V8.20832C8.625 8.45143 8.52842 8.68459 8.35651 8.8565C8.18461 9.02841 7.95145 9.12499 7.70833 9.12499H1.29167C1.04855 9.12499 0.815394 9.02841 0.643485 8.8565C0.471577 8.68459 0.375 8.45143 0.375 8.20832V1.79165C0.375 1.54854 0.471577 1.31538 0.643485 1.14347C0.815394 0.971563 1.04855 0.874986 1.29167 0.874986H5.875ZM8.92612 0.57386C9.01205 0.659811 9.06032 0.776369 9.06032 0.897902C9.06032 1.01944 9.01205 1.13599 8.92612 1.22194L8.11625 2.03136C7.93776 1.7808 7.71873 1.56176 7.46817 1.38328L8.27758 0.57386C8.36353 0.487936 8.48009 0.439667 8.60162 0.439667C8.72316 0.439667 8.84017 0.487936 8.92612 0.57386Z" fill="#62C6FF"/>
                    </svg>
                    Edit
                </div>
                <div data-item="${
					product.item
				}" class="deleteProduct transition-all flex-1 hover:bg-opacity-30 cursor-pointer gap-1.5 py-1.5 flex justify-center bg-[#FF5757] bg-opacity-[15%] text-[#FF5757] px-0 items-center text-sm">
                    <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6.00008 0.666656C4.94525 0.666656 3.9141 0.979451 3.03704 1.56549C2.15998 2.15152 1.47639 2.98447 1.07273 3.95901C0.669059 4.93355 0.563441 6.00591 0.769229 7.04047C0.975017 8.07504 1.48297 9.02535 2.22885 9.77123C2.97473 10.5171 3.92504 11.0251 4.9596 11.2308C5.99417 11.4366 7.06652 11.331 8.04106 10.9273C9.0156 10.5237 9.84855 9.84009 10.4346 8.96303C11.0206 8.08597 11.3334 7.05482 11.3334 5.99999C11.3334 4.5855 10.7715 3.22895 9.77132 2.22875C8.77113 1.22856 7.41457 0.666656 6.00008 0.666656ZM8.66675 8.03332C8.75516 8.12173 8.80482 8.24163 8.80482 8.36666C8.80482 8.49168 8.75516 8.61158 8.66675 8.69999C8.57834 8.78839 8.45844 8.83806 8.33342 8.83806C8.20839 8.83806 8.08849 8.78839 8.00008 8.69999L6.00008 6.69999L4.00008 8.70666C3.95631 8.75043 3.90434 8.78515 3.84715 8.80884C3.78996 8.83253 3.72866 8.84473 3.66675 8.84473C3.60484 8.84473 3.54355 8.83253 3.48635 8.80884C3.42916 8.78515 3.37719 8.75043 3.33342 8.70666C3.28964 8.66288 3.25492 8.61091 3.23123 8.55372C3.20754 8.49653 3.19535 8.43523 3.19535 8.37332C3.19535 8.31142 3.20754 8.25012 3.23123 8.19292C3.25492 8.13573 3.28964 8.08376 3.33342 8.03999L5.33342 6.02666L3.27675 3.95332C3.18834 3.86492 3.13868 3.74501 3.13868 3.61999C3.13868 3.49497 3.18834 3.37506 3.27675 3.28666C3.36516 3.19825 3.48506 3.14859 3.61008 3.14859C3.73511 3.14859 3.85501 3.19825 3.94342 3.28666L6.00008 5.36666L8.05675 3.30999C8.10052 3.26622 8.15249 3.23149 8.20968 3.2078C8.26688 3.18411 8.32818 3.17192 8.39008 3.17192C8.45199 3.17192 8.51329 3.18411 8.57048 3.2078C8.62768 3.23149 8.67964 3.26622 8.72342 3.30999C8.76719 3.35376 8.80191 3.40573 8.8256 3.46292C8.84929 3.52012 8.86149 3.58142 8.86149 3.64332C8.86149 3.70523 8.84929 3.76653 8.8256 3.82372C8.80191 3.88092 8.76719 3.93288 8.72342 3.97666L6.66675 6.02666L8.66675 8.03332Z" fill="#FF5757"/>
                    </svg>
                    Remove
                </div>
            </div>
        </div>    
        `);
	});

	$('#addProductItem').html(`<option style="background:#444" value="none">None</option>`);

	configProducts.forEach(function (product) {
		if (
			products.find(function (prod) {
				return prod.item == product.item;
			})
		) {
			return;
		}
		$('#addProductItem').append(`<option style="background:#444" value="${product.item}">${product.title}</option>`);
	});

	$('#addProductPrice')
		.off('keyup')
		.on('keyup', function () {
			var price = $(this).val();

			$('#addProductPrevPrice').text(`$${new Intl.NumberFormat(moneyType).format(price)}`);
		});

	$('#addProductItem')
		.off('change')
		.on('change', function () {
			var item = $(this).val();

			if (item == 'none') {
				return;
			}

			var product = configProducts.find(function (prod) {
				return prod.item == item;
			});

			$('#addProductPrevTitle').text(product.title);
			$('#addProductPrevCategory').text(
				categories.find(function (cat) {
					return cat.id == product.category;
				}).title
			);
		});

	$('#addProductImage')
		.off('keyup')
		.on('keyup', function () {
			var url = $(this).val();

			$('#addProductPrevImage').attr('src', url);
		});

	$('#addItemBtn')
		.off('click')
		.on('click', function () {
			var item = $('#addProductItem').val();
			var price = $('#addProductPrice').val();
			var image = $('#addProductImage').val();

			if (item == 'none' || !price || !image) {
				ShowNotify('error', 'Please fill all fields');
				return;
			}

			$.post('https://savana-order/addProduct', JSON.stringify({ item: item, price: price, image: image }), function (data) {
				if (data) {
					products = [];

					for (let i = 0; i < data.length; i++) {
						const product = data[i];

						var configProduct = configProducts.find(function (prod) {
							return prod.item == product.item;
						});

						if (configProduct) {
							products.push({
								title: configProduct.title,
								price: product.price,
								image: product.image,
								item: product.item,
								category: configProduct.category,
							});
						}
					}

					renderAdminProducts(products);

					$('#addProduct').addClass('hidden');
					$(document)
						.off('keydown')
						.on('keydown', function (e) {
							if (e.keyCode == 27) {
								$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
							}
						});
				}
			});
		});

	$('#addProductBtn')
		.off('click')
		.on('click', function () {
			$('#addProduct').removeClass('hidden');
			$(document)
				.off('keydown')
				.on('keydown', function (e) {
					if (e.keyCode == 27) {
						$('#addProduct').addClass('hidden');
						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
								}
							});
					}
				});
		});

	// editProduct
	$('.editProduct')
		.off('click')
		.on('click', function () {
			var item = $(this).data('item');

			var product = products.find(function (prod) {
				return prod.item == item;
			});

			var configProduct = configProducts.find(function (prod) {
				return prod.item == item;
			});

			$('#editProductPrice').val(product.price);
			$('#editProductImage').val(product.image);

			$('#editProductPrevPrice').text(`$${new Intl.NumberFormat(moneyType).format(product.price)}`);
			$('#editProductPrevTitle').text(product.title);
			$('#editProductPrevCategory').text(
				categories.find(function (cat) {
					return cat.id == configProduct.category;
				}).title
			);
			$('#editProductPrevImage').attr('src', product.image);

			$('#editProduct').removeClass('hidden');

			$(document)
				.off('keydown')
				.on('keydown', function (e) {
					if (e.keyCode == 27) {
						$('#editProduct').addClass('hidden');
						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
								}
							});
					}
				});

			$('#editProductPrice')
				.off('keyup')
				.on('keyup', function () {
					var price = $(this).val();

					$('#editProductPrevPrice').text(`$${new Intl.NumberFormat(moneyType).format(price)}`);
				});

			$('#editProductImage')
				.off('keyup')
				.on('keyup', function () {
					var url = $(this).val();

					$('#editProductPrevImage').attr('src', url);
				});

			$('#editItemBtn')
				.off('click')
				.on('click', function () {
					var price = $('#editProductPrice').val();
					var image = $('#editProductImage').val();

					if (!price || !image) {
						ShowNotify('error', 'Please fill all fields');
						return;
					}

					$.post('https://savana-order/editProduct', JSON.stringify({ item: product.item, price: price, image: image }), function (data) {
						if (data) {
							products = [];

							for (let i = 0; i < data.length; i++) {
								const product = data[i];

								var configProduct = configProducts.find(function (prod) {
									return prod.item == product.item;
								});

								if (configProduct) {
									products.push({
										title: configProduct.title,
										price: product.price,
										image: product.image,
										item: product.item,
										category: configProduct.category,
									});
								}
							}

							renderAdminProducts(products);

							$('#editProduct').addClass('hidden');
							$(document)
								.off('keydown')
								.on('keydown', function (e) {
									if (e.keyCode == 27) {
										$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
									}
								});
						}
					});
				});
		});

	$('.deleteProduct')
		.off('click')
		.on('click', function () {
			var item = $(this).data('item');
			$.post('https://savana-order/deleteProduct', JSON.stringify({ item: item }), function (data) {
				if (data) {
					products = [];

					for (let i = 0; i < data.length; i++) {
						const product = data[i];

						var configProduct = configProducts.find(function (prod) {
							return prod.item == product.item;
						});

						if (configProduct) {
							products.push({
								title: configProduct.title,
								price: product.price,
								image: product.image,
								item: product.item,
								category: configProduct.category,
							});
						}
					}

					renderAdminProducts(products);
				}
			});
		});
}

function renderAdminMenus(menus) {
	$('#horizontalScroll2').html('');

	menus.forEach(function (menu) {
		var itemsHtml = '';

		menu.items.forEach(function (item) {
			var productData = products.find(function (prod) {
				return prod.item == item.item;
			});

			itemsHtml += `<div class="text-sm">x${item.count} ${productData.title}</div>`;
		});
		$('#horizontalScroll2').append(`
            <div class="minWidthMenuItem rounded-lg group overflow-hidden relative h-36 rounded-xl w-[20rem]">
                <img class="w-full h-full object-contain absolute rounded-xl" src="${menu.image}" alt="">
                <div class="absolute w-full h-full menuItemVignette opacity-60 group-hover:opacity-100 transition-all"></div>
                <div class="absolute w-full h-full flex justify-between">
                    <div class="flex flex-col justify-between p-3">
                        <div class="text-sm menuTitleBgBlur px-2 py-0.5 rounded-[6px] font-medium">${menu.title}</div>
                        <div class="flex">
                            <div class="text-sm bg-[#3DFF67] text-black px-2 py-0.5 rounded-[6px] font-medium">$${new Intl.NumberFormat(moneyType).format(menu.price)}</div>
                        </div>
                    </div>
                    <div class="flex flex-col justify-between text-right p-3">
                        <div class="flex flex-col">
                            <div class="text-sm text-white text-opacity-50">Menu Content;</div>
                            ${itemsHtml}
                        </div>
                        <div data-key="${menu.key}" class="editMenuBtn flex items-center rounded cursor-pointer justify-center gap-2 px-6 py-1.5 bg-[#62C6FF] text-xs text-[#62C6FF] bg-opacity-20">
                            <svg class="w-3 h-3" viewBox="0 0 8 9" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4.75896 1.15184C5.25655 1.15184 5.71728 1.30925 6.09394 1.57802L2.58698 5.08459C2.55031 5.12001 2.52106 5.16237 2.50093 5.20922C2.48081 5.25606 2.47022 5.30644 2.46978 5.35742C2.46933 5.4084 2.47905 5.45896 2.49835 5.50614C2.51766 5.55333 2.54617 5.5962 2.58222 5.63225C2.61827 5.6683 2.66114 5.69681 2.70832 5.71611C2.75551 5.73542 2.80606 5.74513 2.85704 5.74469C2.90802 5.74425 2.95841 5.73365 3.00525 5.71353C3.05209 5.69341 3.09446 5.66416 3.12988 5.62749L6.63683 2.12053C6.91447 2.51025 7.06335 2.97701 7.06263 3.45551V7.29496C7.06263 7.49862 6.98173 7.69394 6.83772 7.83794C6.69371 7.98195 6.4984 8.06286 6.29474 8.06286H0.919502C0.715845 8.06286 0.520529 7.98195 0.376521 7.83794C0.232514 7.69394 0.151611 7.49862 0.151611 7.29496V1.91973C0.151611 1.71607 0.232514 1.52075 0.376521 1.37675C0.520529 1.23274 0.715845 1.15184 0.919502 1.15184H4.75896ZM7.31488 0.899584C7.38686 0.971585 7.4273 1.06923 7.4273 1.17103C7.4273 1.27284 7.38686 1.37048 7.31488 1.44248L6.63683 2.12053C6.48732 1.91063 6.30383 1.72753 6.09394 1.57802L6.7716 0.899584C6.8436 0.827606 6.94124 0.78717 7.04305 0.78717C7.14486 0.78717 7.24288 0.827606 7.31488 0.899584Z" fill="#62C6FF"/>
                            </svg>    
                            Edit Menu
                        </div>
                    </div>
                </div>
            </div>
        `);
	});

	$('.editMenuBtn')
		.off('click')
		.on('click', function () {
			var key = $(this).data('key');

			var menu = menus.find(function (menu) {
				return menu.key == key;
			});

			if (menu) {
				$('#deleteMenu')
					.off('click')
					.on('click', function () {
						$.post('https://savana-order/deleteMenu', JSON.stringify({ key: key }), function (data) {
							for (let i = 0; i < data.length; i++) {
								data[i].key = i;
							}
							renderAdminMenus(data);

							$('#editMenu').addClass('hidden');
							$(document)
								.off('keydown')
								.on('keydown', function (e) {
									if (e.keyCode == 27) {
										$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
									}
								});
						});
					});

				$('#editMenuPreviewTitle').html(menu.title);
				$('#editMenuPreviewPrice').html('$' + new Intl.NumberFormat(moneyType).format(menu.price));
				$('#editMenuPreviewImage').attr('src', menu.image);

				if (menu.items[0]) {
					$('#editMenuItem1').removeClass('hidden');
					$('#editMenuItem1').html(
						`x1 ${
							products.find(function (prod) {
								return prod.item == menu.items[0].item;
							}).title
						}`
					);

					$('#editMenuProductItem1').html(`<option style="background:#444">None</option>`);
					products.forEach(function (product) {
						$('#editMenuProductItem1').append(`
                        <option style="background:#444;" value="${product.item}" ${menu.items[0].item == product.item && 'selected'}>${product.title}</option>
                    `);
					});
				} else {
					$('#editMenuItem1').addClass('hidden');
				}

				if (menu.items[1]) {
					$('#editMenuItem2').removeClass('hidden');
					$('#editMenuItem2').html(
						`x1 ${
							products.find(function (prod) {
								return prod.item == menu.items[1].item;
							}).title
						}`
					);

					$('#editMenuProductItem2').html(`<option style="background:#444">None</option>`);
					products.forEach(function (product) {
						$('#editMenuProductItem2').append(`
                        <option style="background:#444;" value="${product.item}" ${menu.items[1].item == product.item && 'selected'}>${product.title}</option>
                    `);
					});
				} else {
					$('#editMenuItem2').addClass('hidden');
				}

				$('#editMenuTitleInput').val(menu.title);
				$('#editMenuImageInput').val(menu.image);
				$('#editMenuPriceInput').val(menu.price);

				$('#editMenuCategoryInput').html(``);

				categories.forEach(function (category) {
					$('#editMenuCategoryInput').append(`
                    <option style="background:#444;" value="${category.id}" ${menu.category == category.id && 'selected'}>${category.title}</option>
                `);
				});

				$('#editMenuTitleInput')
					.off('keyup')
					.on('keyup', function () {
						var title = $(this).val();
						$('#editMenuPreviewTitle').html(title);
					});

				$('#editMenuPriceInput')
					.off('keyup')
					.on('keyup', function () {
						var price = $(this).val();
						$('#editMenuPreviewPrice').html('$' + new Intl.NumberFormat(moneyType).format(price));
					});

				$('#editMenuImageInput')
					.off('keyup')
					.on('keyup', function () {
						var image = $(this).val();
						$('#editMenuPreviewImage').attr('src', image);
					});

				$('#editMenuProductItem1')
					.off('change')
					.on('change', function () {
						var item = $(this).val();
						var product = products.find(function (prod) {
							return prod.item == item;
						});

						if (product) {
							$('#editMenuItem1').removeClass('hidden');
							$('#editMenuItem1').html(`x1 ${product.title}`);
						} else {
							$('#editMenuItem1').addClass('hidden');
						}
					});

				$('#editMenuProductItem2')
					.off('change')
					.on('change', function () {
						var item = $(this).val();
						var product = products.find(function (prod) {
							return prod.item == item;
						});

						if (product) {
							$('#editMenuItem2').removeClass('hidden');
							$('#editMenuItem2').html(`x1 ${product.title}`);
						} else {
							$('#editMenuItem2').addClass('hidden');
						}
					});

				$('#editMenuAddBtn')
					.off('click')
					.on('click', function () {
						var title = $('#editMenuTitleInput').val();
						var price = $('#editMenuPriceInput').val();
						var image = $('#editMenuImageInput').val();
						var category = $('#editMenuCategoryInput').val();

						var item1 = $('#editMenuProductItem1').val();
						var item2 = $('#editMenuProductItem2').val();

						var items = [];

						if (item1 != 'None') {
							items.push({ item: item1, count: 1 });
						}

						if (item2 != 'None') {
							items.push({ item: item2, count: 1 });
						}

						$.post('https://savana-order/editMenu', JSON.stringify({ key: key, title: title, price: price, image: image, category: category, items: items }), function (data) {
							for (let i = 0; i < data.length; i++) {
								data[i].key = i;
							}
							renderAdminMenus(data);
							$('#editMenu').addClass('hidden');
							$(document)
								.off('keydown')
								.on('keydown', function (e) {
									if (e.keyCode == 27) {
										$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
									}
								});
						});
					});
			}

			$('#editMenu').removeClass('hidden');

			$(document)
				.off('keydown')
				.on('keydown', function (e) {
					if (e.keyCode == 27) {
						$('#editMenu').addClass('hidden');
						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
								}
							});
					}
				});
		});
}

$(document).ready(function () {
	$('#horizontalScroll').on('mousewheel', function (e) {
		e.preventDefault();
		var scrollTo = $(this).scrollLeft();
		if (e.originalEvent.wheelDelta / 120 > 0) {
			scrollTo -= 35;
		} else {
			scrollTo += 35;
		}
		$(this).scrollLeft(scrollTo);
	});

	$('#horizontalScroll2').on('mousewheel', function (e) {
		e.preventDefault();
		var scrollTo = $(this).scrollLeft();
		if (e.originalEvent.wheelDelta / 120 > 0) {
			scrollTo -= 35;
		} else {
			scrollTo += 35;
		}
		$(this).scrollLeft(scrollTo);
	});

	window.addEventListener('message', function (event) {
		var data = event.data;
		switch (data.action) {
			case 'notify':
				ShowNotify(data.type, data.message);
				break;
			case 'openRestaurant':
				$('#mainContent').removeClass('hidden');
				$('#restaurant').removeClass('hidden');
				$('#payment').addClass('hidden');
				$('#adminpanel').addClass('hidden');

				if (data.hasJob) {
					$('#takePaymentBtn').removeClass('hidden');
				} else {
					$('#takePaymentBtn').addClass('hidden');
				}

				$('#restaurantName').text(data.playerInfo.name);
				$('#restaurantMoney').text('$' + new Intl.NumberFormat().format(data.playerInfo.money));
				$('#restaurantPp').attr('src', data.mugshot);

				$('#restaurantTime').html(
					new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: 'numeric' }) + ' ' + new Date().toLocaleDateString('en-US', { weekday: 'short', month: 'short', day: 'numeric' })
				);

				categories = data.categories;
				configProducts = data.products;

				products = [];
				menus = [];

				dataProducts = JSON.parse(data.data.data).products;
				dataMenus = JSON.parse(data.data.data).menus;

				for (let i = 0; i < dataProducts.length; i++) {
					const product = dataProducts[i];

					var configProduct = configProducts.find(function (prod) {
						return prod.item == product.item;
					});

					if (configProduct) {
						products.push({
							title: configProduct.title,
							price: product.price,
							image: product.image,
							item: product.item,
							category: configProduct.category,
						});
					}
				}

				for (let i = 0; i < dataMenus.length; i++) {
					const menu = dataMenus[i];

					var items = [];

					menu.items.forEach(function (item) {
						var product = products.find(function (prod) {
							return prod.item == item.item;
						});

						if (product) {
							items.push({
								item: product.item,
								count: item.count,
								image: product.image,
							});
						}
					});

					menus.push({
						title: menu.title,
						price: menu.price,
						items: items,
						image: menu.image,
						category: menu.category,
						key: i,
					});
				}

				if (categories) {
					var tempCategories = categories.filter(function (category) {
						return (
							products.filter(function (product) {
								return product.category == category.id;
							}).length > 0
						);
					});

					if (tempCategories) {
						categories = tempCategories;
					}
				}

				renderCategories();

				$('.categoryItem').first().click();

				$('#takePaymentBtn')
					.off('click')
					.on('click', function () {
						var basketLenghtTemp = Object.keys(basket).length;

						if (basketLenghtTemp == 0) {
							ShowNotify('error', 'Please add products to basket to send payment');
							return;
						}

						$('#selectPerson').removeClass('hidden');

						$.post('https://savana-order/getPlayers', JSON.stringify({}), function (players) {
							$('#selectPersonList').html('');
							selectedPlayer = null;
							if (players.length > 0) {
								players.forEach(function (player) {
									$('#selectPersonList').append(`
                                    <div style="min-height: 4rem;" data-id="${player.id}" class="closePlayer border border-white border-opacity-[4%] cursor-pointer w-full items-center flex px-2 min-h-16 h-16 bg-white bg-opacity-[4%] rounded-lg">
                                        <div class="flex items-center justify-between gap-5">
                                            <div class="flex items-center gap-3">
                                                <div class="flex bg-[#62A1FF] rounded-lg bg-opacity-[16%] p-3 items-center justify-center">
                                                    <svg class="w-6 h-6" width="17" height="21" viewBox="0 0 17 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M13.2918 0.916656C14.0543 0.916656 14.7856 1.21956 15.3248 1.75872C15.8639 2.29789 16.1668 3.02916 16.1668 3.79166V19.125C16.1667 19.3055 16.1156 19.4823 16.0195 19.635C15.9233 19.7878 15.7859 19.9102 15.6232 19.9884C15.4605 20.0665 15.279 20.097 15.0997 20.0765C14.9203 20.056 14.7504 19.9853 14.6095 19.8725L12.8127 18.435L11.0158 19.8725C10.8317 20.02 10.5997 20.0944 10.3642 20.0815C10.1286 20.0686 9.90616 19.9692 9.73929 19.8025L8.50016 18.5634L7.26104 19.8025C7.09429 19.9694 6.87187 20.0689 6.63634 20.082C6.40082 20.095 6.16874 20.0208 5.98454 19.8734L4.18766 18.435L2.39079 19.8725C2.24989 19.9853 2.07999 20.056 1.90066 20.0765C1.72133 20.097 1.53985 20.0665 1.37713 19.9884C1.2144 19.9102 1.07705 19.7878 0.980871 19.635C0.884694 19.4823 0.833609 19.3055 0.833496 19.125V3.79166C0.833496 3.02916 1.1364 2.29789 1.67556 1.75872C2.21473 1.21956 2.946 0.916656 3.7085 0.916656H13.2918ZM8.50016 10.5H5.62516C5.371 10.5 5.12724 10.601 4.94752 10.7807C4.7678 10.9604 4.66683 11.2042 4.66683 11.4583C4.66683 11.7125 4.7678 11.9562 4.94752 12.136C5.12724 12.3157 5.371 12.4167 5.62516 12.4167H8.50016C8.75433 12.4167 8.99808 12.3157 9.17781 12.136C9.35753 11.9562 9.4585 11.7125 9.4585 11.4583C9.4585 11.2042 9.35753 10.9604 9.17781 10.7807C8.99808 10.601 8.75433 10.5 8.50016 10.5ZM11.3752 6.66666H5.62516C5.3809 6.66693 5.14597 6.76046 4.96835 6.92814C4.79074 7.09582 4.68385 7.32499 4.66954 7.56883C4.65522 7.81267 4.73456 8.05277 4.89133 8.24008C5.04811 8.42739 5.27049 8.54777 5.51304 8.57662L5.62516 8.58332H11.3752C11.6194 8.58305 11.8544 8.48952 12.032 8.32184C12.2096 8.15417 12.3165 7.92499 12.3308 7.68115C12.3451 7.43731 12.2658 7.19721 12.109 7.0099C11.9522 6.82259 11.7298 6.70221 11.4873 6.67337L11.3752 6.66666Z" fill="#62A1FF"/>
                                                    </svg>
                                                </div>
                                                <div class="flex flex-col gap-1.5">
                                                    <div class="text-lg font-medium text-white leading-[90%]">${player.name}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>    
                                `);
								});
							}

							$('.closePlayer')
								.off('click')
								.on('click', function () {
									var id = $(this).data('id');

									if (id == selectedPlayer) {
										selectedPlayer = null;
										$('.closePlayer').removeClass('border-[#62A1FF]');
										$('.closePlayer').addClass('border-white border-opacity-[4%]');
									} else {
										$('.closePlayer').removeClass('border-[#62A1FF]');
										$('.closePlayer').addClass('border-white border-opacity-[4%]');
										$(this).removeClass('border-white border-opacity-[4%]');
										$(this).addClass('border-[#62A1FF]');
										selectedPlayer = id;
									}
								});
						});

						$('#sendPaymentBtn')
							.off('click')
							.on('click', function () {
								if (!selectedPlayer) {
									ShowNotify('error', 'Please select a player to send payment');
									return;
								}

								$.post('https://savana-order/sendPayment', JSON.stringify({ id: selectedPlayer, basket: JSON.stringify(basket) }), function (data) {
									if (data) {
										$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
										ShowNotify('success', 'Payment sent successfully');
										basket = [];
										renderBasket();
										$('#selectPerson').addClass('hidden');
									}
								});
							});

						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$('#selectPerson').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
								}
							});
					});

				$(document)
					.off('keydown')
					.on('keydown', function (e) {
						if (e.keyCode == 27) {
							$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
						}
					});

				break;
			case 'openAdmin':
				$('#mainContent').removeClass('hidden');
				$('#adminpanel').removeClass('hidden');
				$('#restaurant').addClass('hidden');
				$('#payment').addClass('hidden');

				$('#adminName').text(data.playerInfo.name);
				$('#adminMoney').text('$' + new Intl.NumberFormat().format(data.playerInfo.money));
				$('#adminPp').attr('src', data.mugshot);

				$('#adminTime').html(
					new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: 'numeric' }) + ' ' + new Date().toLocaleDateString('en-US', { weekday: 'short', month: 'short', day: 'numeric' })
				);

				$('.panelCategory')
					.off('click')
					.on('click', function () {
						var category = $(this).data('page');

						$('.panelCategory').removeClass('bg-opacity-100 text-opacity-100 text-black');
						$('.panelCategory').addClass('text-white text-opacity-[31%] bg-opacity-[6%]');
						$(this).addClass('bg-opacity-100 text-opacity-100 text-black');
						$(this).removeClass('text-white text-opacity-[31%] bg-opacity-[6%]');

						$('.panelPage').addClass('hidden');
						$(`#${category}Page`).removeClass('hidden');
					});

				$('.panelCategory').first().click();

				$('#adminBalance').html(`$${new Intl.NumberFormat(moneyType).format(data.data.money)}`);
				$('#balanceDeposit').html(`$${new Intl.NumberFormat(moneyType).format(data.data.money)}`);
				$('#balanceWithdraw').html(`$${new Intl.NumberFormat(moneyType).format(data.data.money)}`);

				categories = data.categories;
				configProducts = data.products;

				products = [];
				menus = [];

				dataProducts = JSON.parse(data.data.data).products;
				dataMenus = JSON.parse(data.data.data).menus;

				for (let i = 0; i < dataProducts.length; i++) {
					const product = dataProducts[i];

					var configProduct = configProducts.find(function (prod) {
						return prod.item == product.item;
					});

					if (configProduct) {
						products.push({
							title: configProduct.title,
							price: product.price,
							image: product.image,
							item: product.item,
							category: configProduct.category,
						});
					}
				}

				for (let i = 0; i < dataMenus.length; i++) {
					const menu = dataMenus[i];

					var items = [];

					menu.items.forEach(function (item) {
						var product = products.find(function (prod) {
							return prod.item == item.item;
						});

						if (product) {
							items.push({
								item: product.item,
								count: item.count,
								image: product.image,
							});
						}
					});

					menus.push({
						title: menu.title,
						price: menu.price,
						items: items,
						image: menu.image,
						category: menu.category,
						key: i,
					});
				}

				renderAdminMenus(menus);
				renderAdminProducts(products);

				$('#withdrawBtn')
					.off('click')
					.on('click', function () {
						var amount = $('#withdrawAmount').val();

						if (amount == '' || isNaN(amount) || parseInt(amount) <= 0) {
							ShowNotify('error', 'Please enter a valid amount');
							return;
						}

						$.post(
							'https://savana-order/withdrawMoney',
							JSON.stringify({
								amount: parseInt(amount),
							}),
							function (data) {
								if (data) {
									ShowNotify('success', 'Successfully withdrawed money');
									$('#adminBalance').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);
									$('#balanceWithdraw').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);
									$('#balanceDeposit').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);

									$('#withdrawMenu').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
									renderTransactions(data.transactions);
								} else {
									ShowNotify('error', "You don't have enough money to withdraw");
								}
							}
						);
					});

				$('#depositBtn')
					.off('click')
					.on('click', function () {
						var amount = $('#depositAmount').val();

						if (amount == '' || isNaN(amount) || parseInt(amount) <= 0) {
							ShowNotify('error', 'Please enter a valid amount');
							return;
						}

						$.post(
							'https://savana-order/depositMoney',
							JSON.stringify({
								amount: parseInt(amount),
							}),
							function (data) {
								if (data) {
									ShowNotify('success', 'Successfully deposited money');
									$('#adminBalance').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);
									$('#balanceDeposit').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);
									$('#balanceWithdraw').html(`$${new Intl.NumberFormat(moneyType).format(data.money)}`);
									renderTransactions(data.transactions);
									$('#depositMenu').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
								} else {
									ShowNotify('error', "You don't have enough money.");
								}
							}
						);
					});

				$('#totalSelling').html(data.data.totalSelling);
				$('#totalVisit').html(data.data.totalVisit);

				$('#depositMenuBtn')
					.off('click')
					.on('click', function () {
						$('#depositMenu').removeClass('hidden');

						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$('#depositMenu').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
								}
							});
					});

				$('#withdrawMenuBtn')
					.off('click')
					.on('click', function () {
						$('#withdrawMenu').removeClass('hidden');

						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$('#withdrawMenu').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
								}
							});
					});

				$('#transactions').html('');
				$('#billingList').html('');

				data.data.billing = JSON.parse(data.data.billing);

				data.data.billing.sort(function (a, b) {
					return new Date(b.createdAt * 1000) - new Date(a.createdAt * 1000);
				});

				data.data.billing.forEach(function (bill) {
					var productsHtml = '';

					bill.products.forEach(function (product) {
						productsHtml += `<div class="mr-2">x${product.amount} ${product.title}</div>`;
					});

					// 01.01.1999 18:50
					var dateText = new Date(bill.createdAt * 1000).toLocaleDateString(locale, {
						year: 'numeric',
						month: '2-digit',
						day: '2-digit',
						hour: '2-digit',
						minute: '2-digit',
					});

					$('#billingList').append(`
                        <div class="flex justify-between items-center w-full bg-white bg-opacity-[3%] p-2 rounded-lg">
                            <div class="flex items-center justify-between gap-5">
                                <div class="flex items-center gap-3">
                                    <div class="flex bg-[#62A1FF] rounded-lg bg-opacity-[16%] p-3 items-center justify-center">
                                        <svg class="w-6 h-6" width="17" height="21" viewBox="0 0 17 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M13.2918 0.916656C14.0543 0.916656 14.7856 1.21956 15.3248 1.75872C15.8639 2.29789 16.1668 3.02916 16.1668 3.79166V19.125C16.1667 19.3055 16.1156 19.4823 16.0195 19.635C15.9233 19.7878 15.7859 19.9102 15.6232 19.9884C15.4605 20.0665 15.279 20.097 15.0997 20.0765C14.9203 20.056 14.7504 19.9853 14.6095 19.8725L12.8127 18.435L11.0158 19.8725C10.8317 20.02 10.5997 20.0944 10.3642 20.0815C10.1286 20.0686 9.90616 19.9692 9.73929 19.8025L8.50016 18.5634L7.26104 19.8025C7.09429 19.9694 6.87187 20.0689 6.63634 20.082C6.40082 20.095 6.16874 20.0208 5.98454 19.8734L4.18766 18.435L2.39079 19.8725C2.24989 19.9853 2.07999 20.056 1.90066 20.0765C1.72133 20.097 1.53985 20.0665 1.37713 19.9884C1.2144 19.9102 1.07705 19.7878 0.980871 19.635C0.884694 19.4823 0.833609 19.3055 0.833496 19.125V3.79166C0.833496 3.02916 1.1364 2.29789 1.67556 1.75872C2.21473 1.21956 2.946 0.916656 3.7085 0.916656H13.2918ZM8.50016 10.5H5.62516C5.371 10.5 5.12724 10.601 4.94752 10.7807C4.7678 10.9604 4.66683 11.2042 4.66683 11.4583C4.66683 11.7125 4.7678 11.9562 4.94752 12.136C5.12724 12.3157 5.371 12.4167 5.62516 12.4167H8.50016C8.75433 12.4167 8.99808 12.3157 9.17781 12.136C9.35753 11.9562 9.4585 11.7125 9.4585 11.4583C9.4585 11.2042 9.35753 10.9604 9.17781 10.7807C8.99808 10.601 8.75433 10.5 8.50016 10.5ZM11.3752 6.66666H5.62516C5.3809 6.66693 5.14597 6.76046 4.96835 6.92814C4.79074 7.09582 4.68385 7.32499 4.66954 7.56883C4.65522 7.81267 4.73456 8.05277 4.89133 8.24008C5.04811 8.42739 5.27049 8.54777 5.51304 8.57662L5.62516 8.58332H11.3752C11.6194 8.58305 11.8544 8.48952 12.032 8.32184C12.2096 8.15417 12.3165 7.92499 12.3308 7.68115C12.3451 7.43731 12.2658 7.19721 12.109 7.0099C11.9522 6.82259 11.7298 6.70221 11.4873 6.67337L11.3752 6.66666Z" fill="#62A1FF"/>
                                        </svg>
                                    </div>
                                    <div class="flex flex-col gap-1.5 w-48">
                                        <div class="text-lg font-medium text-[#62A1FF] leading-[90%]">${bill.customerName}</div>
                                        <div class="text-white text-opacity-70 leading-[90%]">${dateText}</div>
                                    </div>
                                </div>
                                <div class="flex flex-col justify-center mt-2 gap-1 mr-4">
                                    <div class="text-white text-opacity-50 leading-[90%]">product sold;</div>
                                    <div class="flex flex-wrap w-64 items-center gap-0.5 text-white">
                                        ${productsHtml}
                                    </div>
                                </div>
                            </div>
                            <div class="flex items-center gap-10 pr-2">
                                <div class="flex flex-col justify-center mt-2 gap-1">
                                    <div class="text-white text-opacity-50 leading-[90%]">billing person;</div>
                                    <div class="flex items-center gap-2 text-white">${bill.biller}</div>
                                </div>
                                <div class="flex flex-col justify-center mt-2 gap-1">
                                    <div class="text-white text-opacity-50 leading-[90%]">payment type;</div>
                                    <div class="flex items-center gap-2 text-white">${bill.paymentType == 'cash' ? 'Cash' : 'Bank'}</div>
                                </div>
                                <div class="w-20 flex items-center justify-end">
                                    <div class="bg-[#62FF84] bg-opacity-20 text-[#3DFF67] rounded-lg px-2 py-0.5 mt-0.5">$${new Intl.NumberFormat(moneyType).format(bill.totalAmount)}</div>
                                </div>

                            </div>
                        </div>    
                    `);
				});

				renderTransactions(data.data.transactions);

				$('#addMenuMenuBtn')
					.off('click')
					.on('click', function () {
						$('#addMenu').removeClass('hidden');

						$('#addMenuImageInput')
							.off('change')
							.on('change', function () {
								var url = $(this).val();
								$('#addMenuPreviewImage').attr('src', url);
							});

						var addableCategoriesHtml = `<option style="background:#444">None</option>`;

						categories.forEach(function (category) {
							addableCategoriesHtml += `<option style="background:#444" value="${category.id}">${category.title}</option>`;
						});

						$('#addMenuCategoryInput').html(addableCategoriesHtml);

						var addableProcutsHtml = `<option style="background:#444">None</option>`;

						products.forEach(function (product) {
							addableProcutsHtml += `<option style="background:#444" value="${product.item}">${product.title}</option>`;
						});

						$('#addMenuProductItem1').html(addableProcutsHtml);
						$('#addMenuProductItem2').html(addableProcutsHtml);

						$('#addMenuProductItem1')
							.off('change')
							.on('change', function () {
								var item = $(this).val();

								if (item == 'None') {
									$('#addMenuItem1').addClass('hidden');
								} else {
									$('#addMenuItem1').removeClass('hidden');

									var product = products.find(function (prod) {
										return prod.item == item;
									});

									$('#addMenuItem1').html(`x1 ${product.title}`);
								}
							});

						$('#addMenuProductItem2')
							.off('change')
							.on('change', function () {
								var item = $(this).val();

								if (item == 'None') {
									$('#addMenuItem2').addClass('hidden');
								} else {
									$('#addMenuItem2').removeClass('hidden');

									var product = products.find(function (prod) {
										return prod.item == item;
									});

									$('#addMenuItem2').html(`x1 ${product.title}`);
								}
							});

						$(document)
							.off('keydown')
							.on('keydown', function (e) {
								if (e.keyCode == 27) {
									$('#addMenu').addClass('hidden');
									$(document)
										.off('keydown')
										.on('keydown', function (e) {
											if (e.keyCode == 27) {
												$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
											}
										});
								}
							});
					});

				$('#addMenuPriceInput')
					.off('keyup')
					.on('keyup', function () {
						var price = $(this).val();

						if (isNaN(price)) {
							$('#addMenuPreviewPrice').html('Invalid Price');
						} else {
							$('#addMenuPreviewPrice').html(`$${new Intl.NumberFormat(moneyType).format(price)}`);
						}
					});

				$('#addMenuTitleInput')
					.off('keyup')
					.on('keyup', function () {
						var title = $(this).val();

						$('#addMenuPreviewTitle').html(title);
					});

				$('#addMenuAddBtn')
					.off('click')
					.on('click', function () {
						var title = $('#addMenuTitleInput').val();
						var price = $('#addMenuPriceInput').val();
						var image = $('#addMenuImageInput').val();
						var item1 = $('#addMenuProductItem1').val();
						var item2 = $('#addMenuProductItem2').val();
						var category = $('#addMenuCategoryInput').val();

						if (title == '' || price == '' || image == '' || item1 == 'None' || category == 'None') {
							ShowNotify('error', 'Please fill all fields');
							return;
						}

						var items = [];

						if (item1 != 'None') {
							items.push({ item: item1, count: 1 });
						}

						if (item2 != 'None') {
							items.push({ item: item2, count: 1 });
						}

						$.post(
							'https://savana-order/addMenu',
							JSON.stringify({
								title: title,
								price: parseInt(price),
								image: image,
								items: items,
								category: category,
							}),
							function (data) {
								if (data) {
									ShowNotify('success', 'Successfully added menu');
									$('#addMenu').addClass('hidden');

									for (let i = 0; i < data.menus.length; i++) {
										data.menus[i].key = i;
									}

									renderAdminMenus(data.menus);
								} else {
									ShowNotify('error', 'An error occured while adding menu');
								}
							}
						);
					});

				$(document)
					.off('keydown')
					.on('keydown', function (e) {
						if (e.keyCode == 27) {
							$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
						}
					});

				break;
			case 'openPayment':
				$('#mainContent').removeClass('hidden');
				$('#payment').removeClass('hidden');
				$('#restaurant').addClass('hidden');
				$('#adminpanel').addClass('hidden');

				selectedMethod = 'cash';

				$('.paymentMethod')
					.off('click')
					.on('click', function () {
						var method = $(this).data('method');

						$('.paymentMethod').removeClass('text-black');
						$('.paymentMethod').addClass('bg-opacity-[14%] text-white');

						$(this).addClass('text-black');
						$(this).removeClass('bg-opacity-[14%] text-white');

						selectedMethod = method;

						if (method == 'bank') {
							$('#paymentTypeText').html('Card');
							$('#posDiv').removeClass('hidden');
							setTimeout(() => {
								$('#pos').removeClass('translate-y-[90vh]');
							}, 20);
						} else {
							$('#paymentTypeText').html('Cash');
							$('#pos').addClass('translate-y-[90vh]');
							setTimeout(() => {
								$('#posDiv').addClass('hidden');
							}, 500);
						}
					});

				$('#recepitProductList').html('');
				$('#senderName').html(data.sender);
				$('#receiptDate').html(
					new Date().toLocaleDateString(locale, {
						year: 'numeric',
						month: '2-digit',
						day: '2-digit',
						hour: '2-digit',
						minute: '2-digit',
					})
				);

				var dataBasket = data.data;

				dataBasket.basket = Object.values(JSON.parse(dataBasket.basket));

				var categoriesDatam = data.categories;

				dataBasket.basket.forEach(function (product) {
					var categoryName = categoriesDatam.find(function (category) {
						return category.id == product.category;
					});
					$('#recepitProductList').append(`
                        <div class="flex items-center justify-between">
                            <div class="flex flex-col gap-0.5">
                                <div>${product.title} x${product.count}</div>
                                <div class="text-white text-opacity-60 text-sm leading-[90%]">${categoryName.title}</div>
                            </div>
                            <div class="text-[#3DFF67] bg-[#62FF84] bg-opacity-[26%] py-0.5 px-2 rounded-lg">
                                $${new Intl.NumberFormat(moneyType).format(product.price * product.count)}
                            </div>
                        </div>    
                    `);
				});

				var calculateTotal = dataBasket.basket.reduce(function (acc, product) {
					return acc + product.price * product.count;
				}, 0);

				var calcualtedTax = calculateTotal * data.taxRate * 0.01;

				$('#taxAdd').html(`$${new Intl.NumberFormat(moneyType).format(calcualtedTax)}`);
				$('#withTaxTotal').html(`$${new Intl.NumberFormat(moneyType).format(calculateTotal + calcualtedTax)}`);
				$('#totalWithTax').html(`$${new Intl.NumberFormat(moneyType).format(calculateTotal + calcualtedTax)}`);

				$('#completePayment')
					.off('click')
					.on('click', function () {
						$.post(
							'https://savana-order/completePayment',
							JSON.stringify({ restaurantId: data.restaurantId, method: selectedMethod, basket: JSON.stringify(dataBasket.basket), biller: data.sender, senderId: data.senderId }),
							function (data) {
								if (data) {
									$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
									ShowNotify('success', 'Payment completed successfully');
									basket = [];
									renderBasket();
								} else {
									ShowNotify('error', 'An error occured while completing payment');
								}
							}
						);
					});

				$(document)
					.off('keydown')
					.on('keydown', function (e) {
						if (e.keyCode == 27) {
							$.post('https://savana-order/cancelPayment', JSON.stringify({ senderId: data.senderId }), function () {});
							$.post('https://savana-order/closeUi', JSON.stringify({}), function () {});
						}
					});

				break;
			case 'close':
				$('#mainContent').addClass('hidden');
				$('#adminpanel').addClass('hidden');
				$('#restaurant').addClass('hidden');
				$('#payment').addClass('hidden');
				$('#selectPerson').addClass('hidden');
				break;
		}
	});
});
