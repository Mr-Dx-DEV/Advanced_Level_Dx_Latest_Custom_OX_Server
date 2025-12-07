var notifyID = 0
var subMenu = false
var canCraft = false
var currentBasket = []

$(function() {
    window.addEventListener('message', function(event) {
        var item = event.data
        if(item.action == "open") {
            $('.main-container').show()
            $('#cash').html('$' + item.cash)
            $('#bank').html('$' + item.bank)
            if(item.wac) {
                setupWhoSeller(item.market)
            } else {
                $('#whoSeller').hide()
                $('.dropDownBtn').css('height', '35%')
            }
        }
        if(item.action == "updateProfile") {
            $('.foto').attr('src', item.image)
            $('.user-name').text(item.name)
            $('.user-cash').text(formatBalance(item.money))
        }
        if(item.action == "notify") {
            let id = notifyID
            if(item.status == "success") {
                div = `<div class="notify-container notify_`+id+`">
                <img src="public/succsesfly-icon.png" class="succes-icon">
                <p class="succesfuly-text">Succesfuly</p>
                <p class="notify-text">`+item.text+`</p>
                <div class="line-33"></div>
                </div>`
            }
            else {
                div = `<div class="notify-container notify_`+id+`">
                <img src="public/error-icon.png" class="error-icon">
                <p class="error-text">Error!</p>
                <p class="notify-text">`+item.text+`</p>
                <div class="line-33"></div>
            </div>`
            }

            notifyID++

            $('.notify-area').append(div)

            setTimeout(function(){
                $('.notify_'+id).css('left', '3vh')
            }, 10);

            setTimeout(function(){
                $('.notify_'+id).css('left', '-30vh')
            }, 3000);

            setTimeout(function(){
                $('.notify_'+id).remove()
            }, 4000);
        }
        if(item.action == 'updateHistory') {
            updateUI(item.history)
        }
        if(item.action == "addCategory") {
            let div = `<div onclick="selectCategory('`+item.value.id+`')" class="menu-button category_`+item.value.id+` canDelete">`+item.value.label+`</div>`
            $('.menu-buttons-container').append(div)
        }
        if(item.action == "addRequirement") {
            let div = `<div class="product-item">
            <img src="public/items/`+item.value.name+`.png" class="product-item-img">
            <span class="product-amount">`+item.value.amount+`x `+item.value.label+`</span>
            </div>`
            $('.reqList_'+item.id).append(div)
        }
        if(item.action == "addItem") {
            let div = `<div class="burger-item items_`+item.value.category+` canDelete">
                <img src="`+item.value.image+`" class="burger-img">
                <div class="product-name">`+item.value.title+`</div>
                <div class="products-container reqList_`+item.id+`"></div>
                <div onclick="loadDetails('`+item.id+`', '`+item.value.image+`', '`+item.value.title+`')" class="edit-product-btn">
                    <svg class="edit-product-icon" width="11" height="11" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <g clip-path="url(#clip0_1040_584)">
                            <path class="edit-product-icon" d="M6.875 1.37477C7.469 1.37477 8.019 1.56269 8.46862 1.88352L4.28221 6.06948C4.23843 6.11176 4.20352 6.16233 4.17949 6.21825C4.15547 6.27417 4.14283 6.33431 4.1423 6.39517C4.14177 6.45603 4.15337 6.51638 4.17641 6.57271C4.19946 6.62904 4.23349 6.68021 4.27653 6.72324C4.31956 6.76628 4.37074 6.80031 4.42706 6.82336C4.48339 6.8464 4.54374 6.858 4.6046 6.85747C4.66546 6.85694 4.7256 6.8443 4.78152 6.82028C4.83744 6.79626 4.88801 6.76134 4.93029 6.71756L9.11671 2.53115C9.44814 2.99637 9.62586 3.55356 9.625 4.12477V8.70811C9.625 8.95122 9.52842 9.18438 9.35651 9.35629C9.18461 9.52819 8.95145 9.62477 8.70833 9.62477H2.29167C2.04855 9.62477 1.81539 9.52819 1.64349 9.35629C1.47158 9.18438 1.375 8.95122 1.375 8.70811V2.29144C1.375 2.04832 1.47158 1.81517 1.64349 1.64326C1.81539 1.47135 2.04855 1.37477 2.29167 1.37477H6.875ZM9.92612 1.07365C10.012 1.1596 10.0603 1.27615 10.0603 1.39769C10.0603 1.51922 10.012 1.63578 9.92612 1.72173L9.11625 2.53115C8.93776 2.28058 8.71873 2.06155 8.46817 1.88306L9.27758 1.07365C9.36353 0.987723 9.48009 0.939453 9.60162 0.939453C9.72316 0.939453 9.84017 0.987723 9.92612 1.07365Z" fill="#62C6FF"/>
                        </g>
                        <defs>
                            <clipPath id="clip0_1040_584">
                            <rect width="11" height="11" fill="white"/>
                            </clipPath>
                        </defs>
                    </svg>
                    <span class="edit-product-text">Craft</span>
                </div>
            </div>`
            $('.burgers-item-container').append(div)
        }
        if(item.action == "AddDetail") {
            let div = `<div class="items items_`+item.id+`">
            <div class="image-box">
                <img src="public/items/`+item.value.value.name+`.png">
            </div>

            <p>`+item.value.amount+`x `+item.value.value.label+`</p>
            </div>`
            $('.item-list').append(div)

            if(item.value.status) {
                $('.items_'+item.id).addClass('active')
            }
        }
        if(item.action == "updateCraft") {
            if(item.value) {
                $('.button').addClass('active')
            }
            else {
                $('.button').removeClass('active')
            }

            canCraft = item.value
        }
        if(item.action == "reset") {
            $('.canDelete').remove()
        }
    })
})

function setupWhoSeller(data) {
    let container = $('.listProducts')
    let basket = $('.basketItems')
    container.empty()
    basket.empty()
    currentBasket = []
    $.each(data, function(index,veri) {
        let append = `
            <div class="product" data-name='${veri.label}' data-code='${veri.item}' data-price='${veri.price}' data-img='public/items/${veri.item}.png'>
				<div class="productImg">
					<img src="public/items/${veri.item}.png">
				</div>
				<div class="productName">${veri.label}</div>
				<div class="productPrice">$${veri.price}</div>
				<div class="addBasket">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--!Font Awesome Free 6.7.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M0 24C0 10.7 10.7 0 24 0L69.5 0c22 0 41.5 12.8 50.6 32l411 0c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3l-288.5 0 5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5L488 336c13.3 0 24 10.7 24 24s-10.7 24-24 24l-288.3 0c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5L24 48C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"/></svg>
                    <p>Add to Basket</p>
                </div>
			</div>
        `
        container.append(append)
    })


    $('.addBasket').on('click', function() {
        basket.empty()
        var product = $(this).closest('.product')
        let name = product.data('name')
        let price = product.data('price')
        let code = product.data('code')
        let pImg = product.data('img')

        let existingItem = currentBasket.find(item => item.item === name);
            
            if (existingItem) {
                console.log(existingItem.quantity)
            } else {
                currentBasket.push({
                    give: code,
                    item: name,
                    img: pImg,
                    price: price,
                    quantity: 1
                });
            }

            let totalPrice = 0

            currentBasket.forEach(function(product) {
                totalPrice += product.price
            });

            $('.totalVal').html('$' + totalPrice);  
            updateBasket();
    })
}

function updateBasket() {
    let basket = $('.basketItems');
    basket.empty();

    let totalPrice = 0;

    $.each(currentBasket, function(k, v) {
        let itemTotalPrice = v.price * v.quantity;
        let existingItem = currentBasket.find(item => item.item === v.item);
        totalPrice += itemTotalPrice;
        let updateBasket = `
        <div class="basketItem">
			<div class="basketItemImg">
				<img src="${v.img}" alt="">
			</div>
			<div class="basketItemName">
				${v.item}
			</div>
			<div class="remove">-</div>
			<input type="number" class="inputNumber" value="${v.quantity}">
			<div class="add">+</div>
		</div>
        `;            
        basket.append(updateBasket);
    });

    $('#totalPrice').html('$' + totalPrice);

    $(".add").on("click", function () {
        let val = $(this).closest(".basketItem").find(".inputNumber").val();
        let name = $(this).closest(".basketItem").find(".basketItemName").html().trim();
        let existingItem = currentBasket.find(item => item.item === name);
        val = parseInt(val);
        if (val > 98) {
            val = 98;
        }
        $(this).closest(".basketItem").find(".inputNumber").val(val + 1);
        existingItem.quantity = $(this).closest(".basketItem").find(".inputNumber").val();

        updateBasket();
    });
    

    $('.remove').on('click', function() {
        let val = $(this).closest(".basketItem").find(".inputNumber").val();
        let name = $(this).closest(".basketItem").find(".basketItemName").html().trim();
        let existingItem = currentBasket.find(item => item.item === name);
        val = parseInt(val);
    
        if(val === 1) {
            currentBasket = currentBasket.filter(item => item.item !== name);
            $(this).closest('.basketItem').fadeOut(500, function() {
                $(this).remove();
                updateBasket();
            });
        } else {
            $(this).closest('.basketItem').find('.inputNumber').val(val - 1);
            existingItem.quantity = $(this).closest(".basketItem").find(".inputNumber").val();
            updateBasket();
        }
    }); 
}


$("#whoSellerSearch").on("input", function () {
    let searchFilter = $(this).val().toLowerCase();

    $(".product").each(function () {
        let itemName = $(this).find(".productName").text().trim().toLowerCase();

        if (itemName.includes(searchFilter)) {
            $(this).show();
        } else {
            $(this).hide();
        }
    });
});

$('.orderBank').on('click',function() {
    $.post(
        'https://savana-restaurant/buy',
        JSON.stringify({
            basket: currentBasket,
            type: 'bank'
        }),
        function () {}
    );
    let basketContainer = $('.basketItems')
    basketContainer.empty()
    $('#totalPrice').html('$0')
    currentBasket = []
})

$('.orderCash').on('click',function() {
    $.post(
        'https://savana-restaurant/buy',
        JSON.stringify({
            basket: currentBasket,
            type: 'cash'
        }),
        function () {}
    );
    let basketContainer = $('.basketItems')
    basketContainer.empty()
    $('#totalPrice').html('$0')
    currentBasket = []
})


$(document).off('change', '.inputNumber').on('change', '.inputNumber', function() {
    let newQuantity = parseInt($(this).val());
    let name = $(this).closest('.basketItem').find('.basketItemName').text().trim();
    if (newQuantity === 0) {
        currentBasket = currentBasket.filter(item => item.item !== name);
        $(this).closest('.basketItem').remove();
    } else {
        let existingItem = currentBasket.find(item => item.item === name);
        if (existingItem) {
            existingItem.quantity = newQuantity;
            updateBasket();
            $(this).closest(".basketItem").find(".inputNumber").val(newQuantity);
        }
    }

    let newPrice = 0;
    currentBasket.forEach(function(product) {
        newPrice += product.price * product.quantity;
    });

    $('#totalPrice').html('$' + newPrice);

    updateBasket();
});

$('.management-btn').on('click', function() {
    $('.dropDown').css('display', 'flex')
})

$('#whoSeller').on('click', function() {
    let basketContainer = $('.basketItems')
    basketContainer.empty()
    $('.whoSeller').css('display', 'flex')
    $('.dropDown').hide()
    $('#totalPrice').html('$0')
    subMenu = true
})

$('#logout').on('click', function() {
    $('.main-container').hide()
    selectCategory('all')
    $.post(`https://${GetParentResourceName()}/exit`,JSON.stringify({}));
})

$('#history').on('click', function() {
    $('.managmentMenu').css('display', 'flex')
    $('.dropDown').hide()
    subMenu = true
})

$(document).ready(function () {
    $('.input-value').on('input', function () {
        var amount = $('.input-value').val();

        if (!/^\d+$/.test(amount)) {
            $('.input-value').val(1);
        }
    });
});

$(document).ready(function() {
    let previousValue = $('.input-value').val();

    setInterval(function() {
        if(subMenu) {
            let currentValue = $('.input-value').val();

            if (currentValue !== previousValue) {
                previousValue = currentValue;
    
                var amount = parseInt(currentValue);
    
                $('.items').remove();
    
                if (amount <= 0) {
                    $('.input-value').val(1);
                    amount = 1;
                }
    
                $.post(`https://${GetParentResourceName()}/loadDetails`, JSON.stringify({
                    id: targetId,
                    x: amount
                }), function(response) {
                    if (response) {
                        if (amount > 0) {
                            $('.button').text(amount + "x Craft");
                        }
                    }
                });
            }
        }
    }, 250)
});

function loadDetails(id, image, title) {
    $.post(`https://${GetParentResourceName()}/loadDetails`, JSON.stringify({
        id: id,
        x: 1
    }), function(response) {
        if (response){
            $('.input-text').text(title)
            $('.pop-up-image').attr('src', image)
            $('.center').css('display', 'flex')
            subMenu = true
            targetId = id

            $('.button').text("1x Craft")
        }
    });
}

function craft() {
    if(canCraft) {
        var amount = $('.input-value').val();

        $.post(`https://${GetParentResourceName()}/craft`, JSON.stringify({
            id: targetId,
            x: parseInt(amount)
        }), function(response) {
            if (response){
                exit()
                exit()
            }
        });
    }
}

function selectCategory(id) {
    if(id == "all") {
        $('.menu-button').removeClass('active')
        $('.allCategory').addClass('active')

        $('.burger-item').show()
    }
    else {
        $('.menu-button').removeClass('active')
        $('.category_'+id).addClass('active')

        $('.burger-item').hide()
        $('.items_'+id).show()
    }}

window.addEventListener("keyup", (event) => {
    event.preventDefault();
    if (event.key == "Escape") {
        exit()
    }
})

function exit() {
    if(!subMenu) {
        $('.main-container').hide()
        selectCategory('all')
        $.post(`https://${GetParentResourceName()}/exit`,JSON.stringify({}));
    }
    else {
        $('.center').hide()
        subMenu = false
        $('.managmentMenu').fadeOut(500)
        $('.whoSeller').fadeOut(500)
        $('.items').remove()
    }

}

function formatBalance(balance) {
    var formatter = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD',
      });
   return formatter.format(balance)   
}

$(document).ready(function () {
    $(".search-input").on("keyup", function () {
      var value = $(this).val().toLowerCase();
      $(".burger-item").filter(function () {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      });
    });
});

function updateUI(data) {
    let container = $('.history')
    container.empty()

    $.each(data, function(index, veri) {
        let append = `
        	<div class="historyItem">
				<div class="crafter">${veri.creator}</div>
				<div class="craftedItem">${veri.itemName}</div>
				<div class="craftedAmount">${veri.amount}x</div>
				<div class="craftedTime">${veri.date}</div>
			</div>
        `
        container.prepend(append)
    })
}

function updateDateTime() {
    const now = new Date();
    const hours = now.getHours();
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const day = now.toLocaleString('en-US', { weekday: 'short' });
    const month = now.toLocaleString('en-US', { month: 'short' });
    const date = now.getDate();
        
    $('.clock').text(hours+":"+minutes+" ")
    $('.month').text(" "+day+" "+month+" "+date)
}

setInterval(updateDateTime, 60000);

updateDateTime()