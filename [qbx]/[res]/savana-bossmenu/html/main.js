var target = undefined;
var subPage = false;
var isBoss = false;
var permissions = {
	storage: false,
	wardrobe: false,
	manager: false,
	money: false,
};
var notifyID = 0;
var targetNew = false;
var targetGrade = false;

$(function () {
	window.addEventListener('message', function (event) {
		var item = event.data;
		if (item.action == 'open') {
			$('.main-container').show();
		}
		if (item.action == 'updateGradeName') {
			$('.gradeName').text(item.name);
		}
		if (item.action == 'notify') {
			let id = notifyID;
			if (item.status == 'success') {
				div =
					`<div class="notify-container notify_` +
					id +
					`">
                <img src="public/succsesfly-icon.png" class="succes-icon">
                <p class="succesfuly-text">Succesfuly</p>
                <p class="notify-text">` +
					item.text +
					`</p>
                <div class="line-33"></div>
                </div>`;
			} else {
				div =
					`<div class="notify-container notify_` +
					id +
					`">
                <img src="public/error-icon.png" class="error-icon">
                <p class="error-text">Error!</p>
                <p class="notify-text">` +
					item.text +
					`</p>
                <div class="line-33"></div>
            </div>`;
			}

			notifyID++;

			$('.notify-area').append(div);

			setTimeout(function () {
				$('.notify_' + id).css('left', '3vh');
			}, 10);

			setTimeout(function () {
				$('.notify_' + id).css('left', '-30vh');
			}, 3000);

			setTimeout(function () {
				$('.notify_' + id).remove();
			}, 4000);
		}
		if (item.action == 'updateMemberCount') {
			$('.member-count').text(item.value);
		}
		if (item.action == 'addNewPlayer') {
			let div =
				`<div onclick="selectPlayer('` +
				item.id +
				`')" class="access-item newPlayers newPlayer_` +
				item.id +
				`">

            <svg class="access-icon" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path class="access-icon" d="M16.6515 16.4054C17.2043 16.2902 17.5336 15.7117 17.2589 15.2183C16.6533 14.1307 15.6993 13.1749 14.4788 12.4465C12.907 11.5085 10.9812 11 8.99998 11C7.01877 11 5.09292 11.5085 3.52112 12.4465C2.30069 13.1749 1.34666 14.1307 0.741081 15.2183C0.466384 15.7117 0.795619 16.2902 1.34843 16.4054V16.4054C6.39524 17.4572 11.6047 17.4572 16.6515 16.4054V16.4054Z" fill="#848885"/>
                <circle class="access-icon" cx="9" cy="5" r="5" fill="#848885"/>
            </svg>      
            
            <div class="access-text">` +
				item.name +
				`</div>
            </div>`;

			$('.new-container').append(div);
		}
		if (item.action == 'addTransaction') {
			let div = ``;

			if (item.value.type == 'withdraw') {
				div =
					`<div class="transaction-item-red delete">
                <img src="public/withdraw-icon-red.svg" class="withdraw-icon-red">
                <p class="text-red">Withdraw</p>
                <p class="transactions-item-name">` +
					item.value.name +
					`</p>
                <p class="transactions-item-date">` +
					item.value.date +
					`</p>
                <div class="transaction-item-amount-red">` +
					formatBalance(item.value.amount) +
					`</div>
                </div>`;
			} else {
				div =
					`<div class="transaction-item-green delete">
                <img src="public/deposit-icon-green.svg" class="deposit-icon-green">
                <p class="text-green">Deposit</p>
                <p class="transactions-item-name">` +
					item.value.name +
					`</p>
                <p class="transactions-item-date">` +
					item.value.date +
					`</p>
                <div class="transaction-item-amount-green">` +
					formatBalance(item.value.amount) +
					`</div>
            </div>`;
			}

			$('.last-transactions-item-container').append(div);
		}
		if (item.action == 'updateProfile') {
			$('.user-name').text(item.name);
			$('.user-cash').text(formatBalance(item.money));
			$('.balance').text(formatBalance(item.balance));

			$('.totalTrans').text(item.trans);
			$('.totalDeposit').text(item.deposit);

			$('.foto').attr('src', item.image);
			isBoss = item.isBoss;
			permissions = item.permissions;

			if (permissions['wardrobe']) {
				$('.button_wardrobe').css('cursor', 'pointer');
				$('.button_wardrobe').addClass('button_active');
			} else {
				$('.button_wardrobe').css('cursor', 'not-allowed');
				$('.button_wardrobe').removeClass('button_active');
			}

			if (permissions['storage']) {
				$('.button_storage').css('cursor', 'pointer');
				$('.button_storage').addClass('button_active');
			} else {
				$('.button_storage').css('cursor', 'not-allowed');
				$('.button_storage').removeClass('button_active');
			}

			if (permissions['money']) {
				$('.button_money').css('cursor', 'pointer');
				$('.button_money').addClass('button_active');
			} else {
				$('.button_money').css('cursor', 'not-allowed');
				$('.button_money').removeClass('button_active');
			}

			if (permissions['manager']) {
				$('.new-user-btn').css('cursor', 'pointer');
				$('.new-user-btn').css('opacity', '1');
			} else {
				$('.new-user-btn').css('cursor', 'not-allowed');
				$('.new-user-btn').css('opacity', '0.5');
			}

			if (isBoss) {
				$('.withBossMenu').removeClass('opacity');
				$('.withBossMenu').css('cursor', 'pointer');
			} else {
				$('.withBossMenu').addClass('opacity');
				$('.withBossMenu').css('cursor', 'not-allowed');
			}

			if (isBoss) {
				$('.withBossMenu').removeClass('opacity');
				$('.withBossMenu').css('cursor', 'pointer');
			} else {
				$('.withBossMenu').addClass('opacity');
				$('.withBossMenu').css('cursor', 'not-allowed');
			}
		}
		if (item.action == 'resetMember') {
			$('.employee-user-item').remove();
			$('.delete').remove();
			$('.newPlayers').remove();
			$('.main-employee-list-container').html('');
		}
		if (item.action == 'permission') {
			if (item.value) {
				$('.permission_' + item.id).addClass('active');
			} else {
				$('.permission_' + item.id).removeClass('active');
			}
		}
		if (item.action == 'addGrades') {
			let div =
				`<div onclick="selectGrades('` +
				item.grade +
				`')" class="access-item grades newGrade_` +
				item.grade +
				`">

            <svg class="access-icon" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path class="access-icon" d="M16.6515 16.4054C17.2043 16.2902 17.5336 15.7117 17.2589 15.2183C16.6533 14.1307 15.6993 13.1749 14.4788 12.4465C12.907 11.5085 10.9812 11 8.99998 11C7.01877 11 5.09292 11.5085 3.52112 12.4465C2.30069 13.1749 1.34666 14.1307 0.741081 15.2183C0.466384 15.7117 0.795619 16.2902 1.34843 16.4054V16.4054C6.39524 17.4572 11.6047 17.4572 16.6515 16.4054V16.4054Z" fill="#848885"/>
                <circle class="access-icon" cx="9" cy="5" r="5" fill="#848885"/>
            </svg>      
            
            <div class="access-text">` +
				item.label +
				`</div>
            </div>`;

			$('.grades-container').append(div);
			if (item.isMyJob) {
				selectGrades(item.grade);
			}
		}
		if (item.action == 'addPlayer') {
			let online = ``;
			if (item.value.duty == 'on') {
				online = `<div class="is-online-info-2">Online</div>`;
			} else {
				online = `<div class="is-online-info">Offline</div>`;
			}
			let div =
				`<div class="employee-user-item">
                <img src="` +
				item.image +
				`" class="employee-foto">
                <p class="employe-user-name">` +
				item.value.name +
				`</p>
                <p class="employe-user-role">` +
				item.value.job +
				`</p>
                <p class="employe-user-time">` +
				item.value.time +
				` Minute</p>
                <p class="employe-user-salary">` +
				formatBalance(item.value.salary) +
				`</p>
                ` +
				online +
				`
                <svg onclick="permission('` +
				item.id +
				`', '` +
				item.value.name +
				`', '` +
				item.image +
				`')" class="emplooye-filter-icon withBossMenu" width="23" height="20" viewBox="0 0 23 20" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path class="emplooye-filter-icon withBossMenu" fill-rule="evenodd" clip-rule="evenodd"
                        d="M4.7832 1.66602C4.23092 1.66602 3.7832 2.11373 3.7832 2.66602V3.99935H18.6434V2.66602C18.6434 2.11373 18.1957 1.66602 17.6434 1.66602H4.7832ZM18.2872 5.99935H4.13935C4.25191 6.16179 4.38914 6.3084 4.54816 6.43325L9.97825 10.6964C10.7032 11.2656 11.7233 11.2656 12.4483 10.6964L17.8784 6.43325C18.0374 6.3084 18.1747 6.16179 18.2872 5.99935Z"
                        fill="#62C6FF" />
                    <path class="emplooye-filter-icon withBossMenu" fill-rule="evenodd" clip-rule="evenodd"
                        d="M13.2139 13.4809L13.2139 8.33301H9.21387V15.1475L13.2139 13.4809Z" fill="#62C6FF" />
                </svg>
                <svg onclick="kick('` +
				item.id +
				`')" class="employee-x-icon withBossMenu" width="21" height="20" viewBox="0 0 21 20" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path class="employee-x-icon withBossMenu" fill-rule="evenodd" clip-rule="evenodd"
                        d="M20.5869 9.99951C20.5869 15.5224 16.1098 19.9995 10.5869 19.9995C5.06407 19.9995 0.586914 15.5224 0.586914 9.99951C0.586914 4.47666 5.06407 -0.000488281 10.5869 -0.000488281C16.1098 -0.000488281 20.5869 4.47666 20.5869 9.99951ZM5.43547 15.1511C5.04495 14.7605 5.04495 14.1274 5.43547 13.7368L9.17247 9.99985L5.43374 6.26416C5.04305 5.8738 5.04279 5.24063 5.43316 4.84995C5.82353 4.45927 6.45669 4.45901 6.84737 4.84937L10.5867 8.58564L14.3244 4.84796C14.7149 4.45744 15.348 4.45744 15.7386 4.84796C16.1291 5.23849 16.1291 5.87165 15.7386 6.26218L12.0015 9.99928L15.7399 13.7346C16.1306 14.125 16.1308 14.7582 15.7405 15.1489C15.3501 15.5395 14.7169 15.5398 14.3262 15.1494L10.5873 11.4135L6.84968 15.1511C6.45916 15.5416 5.826 15.5416 5.43547 15.1511Z"
                    fill="#FF5757" />
                </svg>

                <svg onclick="updateGrade('` +
				item.id +
				`')" class="employee-grade withBossMenu" width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M5.66667 1.6665L4.95956 0.959397L5.66667 0.25229L6.37377 0.959397L5.66667 1.6665ZM6.66667 14.1665C6.66667 14.7188 6.21895 15.1665 5.66667 15.1665C5.11438 15.1665 4.66667 14.7188 4.66667 14.1665L6.66667 14.1665ZM0.792893 5.12606L4.95956 0.959397L6.37377 2.37361L2.20711 6.54028L0.792893 5.12606ZM6.37377 0.959397L10.5404 5.12606L9.12623 6.54028L4.95956 2.37361L6.37377 0.959397ZM6.66667 1.6665L6.66667 14.1665L4.66667 14.1665L4.66667 1.6665L6.66667 1.6665Z" fill="#E1E900"/>
                    <path d="M12.3337 18.3335L11.6266 19.0406L12.3337 19.7477L13.0408 19.0406L12.3337 18.3335ZM13.3337 5.8335C13.3337 5.28121 12.8859 4.8335 12.3337 4.8335C11.7814 4.8335 11.3337 5.28121 11.3337 5.8335L13.3337 5.8335ZM7.45989 14.8739L11.6266 19.0406L13.0408 17.6264L8.8741 13.4597L7.45989 14.8739ZM13.0408 19.0406L17.2074 14.8739L15.7932 13.4597L11.6266 17.6264L13.0408 19.0406ZM13.3337 18.3335L13.3337 5.8335L11.3337 5.8335L11.3337 18.3335L13.3337 18.3335Z" fill="#E1E900"/>
                </svg>
            </div>`;
			$('.main-employee-list-container').append(div);
		}
	});
});

function updateImage() {
	$.post(`https://${GetParentResourceName()}/updateImage`,JSON.stringify({}));
	exit()
}

function addPlayer() {
	if (targetNew) {
		$.post(
			`https://${GetParentResourceName()}/addPlayer`,
			JSON.stringify({
				id: targetNew,
			}),
			function (response) {
				if (response) {
					$('.pop-up-container-2').hide();
					subPage = false;
				}
			}
		);
	}
}

function updatePlayerGrade() {
	if (targetGrade) {
		$.post(
			`https://${GetParentResourceName()}/updatePlayerGrade`,
			JSON.stringify({
				id: target,
				grade: targetGrade,
			}),
			function (response) {
				if (response) {
					$('.pop-up-container-3').hide();
					$('.grades').remove();
					subPage = false;
				}
			}
		);
	}
}

function selectPlayer(id) {
	$('.newPlayers').removeClass('active');
	$('.newPlayer_' + id).addClass('active');

	targetNew = id;
}

function selectGrades(id) {
	$('.grades').removeClass('active');
	$('.newGrade_' + id).addClass('active');

	targetGrade = id;
}

window.addEventListener('keyup', (event) => {
	event.preventDefault();
	if (event.key == 'Escape') {
		exit();
	}
});

function exit() {
	if (subPage) {
		$('.pop-up-container-red').hide();
		$('.pop-up-container-green').hide();
		$('.pop-up-container-2').hide();
		$('.pop-up-container-1').hide();
		$('.pop-up-container-3').hide();

		$('.newPlayers').remove();
		$('.grades').remove();

		subPage = false;
		target = undefined;
	} else {
		$('.main-container').hide();
		$.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}));
	}
}

function kick(id) {
	if (isBoss) {
		$.post(
			`https://${GetParentResourceName()}/kick`,
			JSON.stringify({
				id: id,
			})
		);
	}
}

function updateGrade(id) {
	if (isBoss && !subPage) {
		target = id;
		$.post(
			`https://${GetParentResourceName()}/updateGrade`,
			JSON.stringify({
				id: id,
			}),
			function (response) {
				if (response) {
					$('.pop-up-container-3').show();
					subPage = true;
				}
			}
		);
	}
}

function permission(id, name, image) {
	if (isBoss && !subPage) {
		target = id;
		$.post(
			`https://${GetParentResourceName()}/permission`,
			JSON.stringify({
				id: id,
			}),
			function (response) {
				if (response) {
					$('.pop-up-container-1').show();
					$('.pop-up-1-name').text(name);
					$('.pop-up-1-foto').attr('src', image);
					subPage = true;
				}
			}
		);
	}
}

function newPage() {
	if (permissions['manager'] && !subPage) {
		$('.players').remove();
		$.post(`https://${GetParentResourceName()}/loadNearPlayers`, JSON.stringify({}), function (response) {
			if (response) {
				$('.pop-up-container-2').show();
				subPage = true;
			}
		});
	}
}

function updatePermission(name) {
	$.post(
		`https://${GetParentResourceName()}/updatePermission`,
		JSON.stringify({
			id: target,
			name: name,
		})
	);
}

function formatBalance(balance) {
	var formatter = new Intl.NumberFormat('en-US', {
		style: 'currency',
		currency: 'USD',
	});
	return formatter.format(balance);
}

$(document).ready(function () {
	$('.search-input').on('keyup', function () {
		var value = $(this).val().toLowerCase();
		$('.employee-user-item').filter(function () {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});

function validateInput(input) {
    if (input.value < 0) {
        input.value = 0;
    }
}

function changePage(page) {
	if (page == 'wardrobe' || page == 'storage') {
		if (permissions[page]) {
			$.post(
				`https://${GetParentResourceName()}/event`,
				JSON.stringify({
					value: page,
				}),
				function (response) {
					if (response) {
						exit();
					}
				}
			);
		}
	} else {
		if (page == 'money') {
			if (permissions['money']) {
				$('.pages').hide();
				$('.page_' + page).show();

				$('.buttons').removeClass('active');
				$('.button_' + page).addClass('active');
			}
		} else {
			$('.pages').hide();
			$('.page_' + page).show();

			$('.buttons').removeClass('active');
			$('.button_' + page).addClass('active');
		}
	}
}

function withdrawPage() {
	if (!subPage) {
		subPage = true;
		$('.pop-up-container-red').show();
	}
}

function depositPage() {
	if (!subPage) {
		subPage = true;
		$('.pop-up-container-green').show();
	}
}

function getCurrentDateTime() {
	const now = new Date();

	const day = String(now.getDate()).padStart(2, '0');
	const month = String(now.getMonth() + 1).padStart(2, '0'); // Aylar 0-11 arası olduğu için +1
	const year = now.getFullYear();

	const hours = String(now.getHours()).padStart(2, '0');
	const minutes = String(now.getMinutes()).padStart(2, '0');

	return `${day}/${month}/${year} ${hours}:${minutes}`;
}

function withdraw() {
	$.post(
		`https://${GetParentResourceName()}/withdraw`,
		JSON.stringify({
			value: $('.withdraw-amount').val(),
			date: getCurrentDateTime(),
		}),
		function (response) {
			if (response) {
				$('.withdraw-amount').val('');
				exit();
			}
		}
	);
}

function deposit() {
	$.post(
		`https://${GetParentResourceName()}/deposit`,
		JSON.stringify({
			value: $('.deposit-amount').val(),
			date: getCurrentDateTime(),
		}),
		function (response) {
			if (response) {
				$('.deposit-amount').val('');
				exit();
			}
		}
	);
}

function updateDateTime() {
	const now = new Date();
	const hours = now.getHours();
	const minutes = String(now.getMinutes()).padStart(2, '0');
	const day = now.toLocaleString('en-US', { weekday: 'short' });
	const month = now.toLocaleString('en-US', { month: 'short' });
	const date = now.getDate();

	$('.clock').text(hours + ':' + minutes);
	$('.month').text(day + ' ' + month + ' ' + date);
}

setInterval(updateDateTime, 60000);

updateDateTime();
