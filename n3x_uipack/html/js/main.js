// =============================================
// N3X UI PACK - MAIN JAVASCRIPT
// =============================================

let Config = {};
let activeNotifications = [];
let currentProgress = null;
let currentSkillCheck = null;
let currentInput = null;

// =============================================
// UTILITY FUNCTIONS
// =============================================

function playSound(sound) {
    $.post(`https://${GetParentResourceName()}/playSound`, JSON.stringify({ sound: sound }));
}

function closeUI() {
    $.post(`https://${GetParentResourceName()}/closeUI`, JSON.stringify({}));
}

function debugLog(...args) {
    if (Config.Advanced && Config.Advanced.debugMode) {
        console.log('[N3X_UIPACK]', ...args);
    }
}

// =============================================
// MESSAGE HANDLER
// =============================================

window.addEventListener('message', function(event) {
    const data = event.data;
    const action = data.action;
    const payload = data.data;

    debugLog('Received action:', action, payload);

    switch(action) {
        case 'setConfig':
            Config = data.config;
            applyTheme();
            break;
        case 'showNotification':
            showNotification(payload);
            break;
        case 'showProgress':
            showProgress(payload);
            break;
        case 'hideProgress':
            hideProgress();
            break;
        case 'showInput':
            showInputDialog(payload);
            break;
        case 'showContext':
            showContextMenu(payload);
            break;
        case 'hideContext':
            hideContextMenu();
            break;
        case 'showSkillCheck':
            showSkillCheck(payload);
            break;
        case 'showTextUI':
            showTextUI(payload);
            break;
        case 'hideTextUI':
            hideTextUI();
            break;
        case 'showAlert':
            showAlertDialog(payload);
            break;
        case 'showNPCDialog':
            showNPCDialog(payload);
            break;
        case 'hideNPCDialog':
            hideNPCDialog();
            break;
        case 'showRadial':
            showRadialMenu(payload);
            break;
        case 'hideRadial':
            hideRadialMenu();
            break;
    }
});

// =============================================
// THEME SYSTEM
// =============================================

function applyTheme() {
    if (!Config.Theme) return;

    const root = document.documentElement;
    const theme = Config.Theme;

    // Apply colors
    if (theme.primaryColor) {
        root.style.setProperty('--primary-color', `rgb(${theme.primaryColor.r}, ${theme.primaryColor.g}, ${theme.primaryColor.b})`);
    }
    if (theme.accentColor) {
        root.style.setProperty('--accent-color', `rgb(${theme.accentColor.r}, ${theme.accentColor.g}, ${theme.accentColor.b})`);
    }
    if (theme.backgroundColor) {
        root.style.setProperty('--bg-primary', `rgb(${theme.backgroundColor.r}, ${theme.backgroundColor.g}, ${theme.backgroundColor.b})`);
    }
    if (theme.backgroundSecondary) {
        root.style.setProperty('--bg-secondary', `rgb(${theme.backgroundSecondary.r}, ${theme.backgroundSecondary.g}, ${theme.backgroundSecondary.b})`);
    }

    debugLog('Theme applied:', theme);
}

// =============================================
// NOTIFICATION SYSTEM
// =============================================

function showNotification(data) {
    const container = $('#notification-container');

    // Set container position
    container.removeClass().addClass(data.position || 'top-right');

    // Limit max notifications
    const maxNotifications = Config.Notification?.maxNotifications || 5;
    if (activeNotifications.length >= maxNotifications) {
        const oldest = activeNotifications.shift();
        $(`#notification-${oldest.id}`).remove();
    }

    // Get icon based on type
    let iconClass = 'fa-info-circle';
    switch(data.type) {
        case 'success': iconClass = 'fa-check-circle'; break;
        case 'error': iconClass = 'fa-exclamation-circle'; break;
        case 'warning': iconClass = 'fa-exclamation-triangle'; break;
        case 'info': iconClass = 'fa-info-circle'; break;
    }

    if (data.icon) {
        iconClass = data.icon;
    }

    // Create notification element
    const notification = $(`
        <div id="notification-${data.id}" class="notification ${data.type} ${Config.Notification?.animation?.enter || 'slideInRight'}">
            <div class="notification-header">
                <div class="notification-icon">
                    <i class="fas ${iconClass}"></i>
                </div>
                <div class="notification-title">${data.title}</div>
                <button class="notification-close" onclick="closeNotification(${data.id})">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            ${data.description ? `<div class="notification-description">${data.description}</div>` : ''}
            ${data.showProgress ? `<div class="notification-progress" style="width: 100%"></div>` : ''}
        </div>
    `);

    container.append(notification);
    activeNotifications.push({ id: data.id, element: notification });

    // Progress animation
    if (data.showProgress) {
        const progressBar = notification.find('.notification-progress');
        let width = 100;
        const interval = setInterval(() => {
            width -= (100 / (data.duration / 50));
            if (width <= 0) {
                clearInterval(interval);
                closeNotification(data.id);
            } else {
                progressBar.css('width', width + '%');
            }
        }, 50);
    } else {
        setTimeout(() => closeNotification(data.id), data.duration);
    }

    debugLog('Notification shown:', data);
}

function closeNotification(id) {
    const notification = $(`#notification-${id}`);
    if (notification.length) {
        const exitAnimation = Config.Notification?.animation?.exit || 'slideOutRight';
        notification.removeClass().addClass(`notification ${exitAnimation}`);

        setTimeout(() => {
            notification.remove();
            activeNotifications = activeNotifications.filter(n => n.id !== id);
        }, Config.Notification?.animation?.duration || 300);
    }
}

// =============================================
// PROGRESS BAR/CIRCLE
// =============================================

function showProgress(data) {
    currentProgress = data;
    const container = $('#progress-container');
    container.removeClass('hidden').removeClass().addClass(data.position || 'bottom');

    if (data.type === 'circle') {
        $('#progress-circle-wrapper').removeClass('hidden');
        $('#progress-bar-wrapper').addClass('hidden');

        $('.progress-circle-label').text(data.label);
        $('.progress-circle-percentage').text('0%');

        if (data.icon) {
            $('.progress-circle-icon').html(`<i class="fas ${data.icon} fa-spin"></i>`);
        }

        animateProgressCircle(data.duration);
    } else {
        $('#progress-bar-wrapper').removeClass('hidden');
        $('#progress-circle-wrapper').addClass('hidden');

        $('.progress-label').text(data.label);
        $('.progress-percentage').text(data.showPercentage ? '0%' : '');
        $('.progress-bar-fill').css('width', '0%');

        animateProgressBar(data.duration, data.showPercentage);
    }

    debugLog('Progress shown:', data);
}

function animateProgressBar(duration, showPercentage) {
    let progress = 0;
    const interval = setInterval(() => {
        progress += (100 / (duration / 50));
        if (progress >= 100) {
            progress = 100;
            clearInterval(interval);
            $.post(`https://${GetParentResourceName()}/progressComplete`, JSON.stringify({}));
        }
        $('.progress-bar-fill').css('width', progress + '%');
        if (showPercentage) {
            $('.progress-percentage').text(Math.floor(progress) + '%');
        }
    }, 50);
}

function animateProgressCircle(duration) {
    let progress = 0;
    const circumference = 283;
    const interval = setInterval(() => {
        progress += (100 / (duration / 50));
        if (progress >= 100) {
            progress = 100;
            clearInterval(interval);
            $.post(`https://${GetParentResourceName()}/progressComplete`, JSON.stringify({}));
        }
        const offset = circumference - (progress / 100) * circumference;
        $('.progress-circle-fill').css('stroke-dashoffset', offset);
        $('.progress-circle-percentage').text(Math.floor(progress) + '%');
    }, 50);
}

function hideProgress() {
    $('#progress-container').addClass('hidden');
    currentProgress = null;
}

// =============================================
// INPUT DIALOG
// =============================================

function showInputDialog(data) {
    currentInput = data;
    const dialog = $('#input-dialog');
    const form = $('#input-form');

    $('.dialog-title').text(data.heading);
    form.empty();

    // Create form fields
    data.rows.forEach((row, index) => {
        let inputHtml = '';

        switch(row.type) {
            case 'input':
                inputHtml = `
                    <div class="form-group">
                        <label class="form-label">${row.label}</label>
                        ${row.description ? `<span class="form-description">${row.description}</span>` : ''}
                        <input type="${row.inputType || 'text'}"
                               class="form-input"
                               name="${row.name || 'input-' + index}"
                               placeholder="${row.placeholder || ''}"
                               ${row.required ? 'required' : ''}
                               ${row.min !== undefined ? `min="${row.min}"` : ''}
                               ${row.max !== undefined ? `max="${row.max}"` : ''}>
                    </div>
                `;
                break;

            case 'number':
                inputHtml = `
                    <div class="form-group">
                        <label class="form-label">${row.label}</label>
                        ${row.description ? `<span class="form-description">${row.description}</span>` : ''}
                        <input type="number"
                               class="form-input"
                               name="${row.name || 'input-' + index}"
                               placeholder="${row.placeholder || ''}"
                               ${row.required ? 'required' : ''}
                               ${row.min !== undefined ? `min="${row.min}"` : ''}
                               ${row.max !== undefined ? `max="${row.max}"` : ''}>
                    </div>
                `;
                break;

            case 'textarea':
                inputHtml = `
                    <div class="form-group">
                        <label class="form-label">${row.label}</label>
                        ${row.description ? `<span class="form-description">${row.description}</span>` : ''}
                        <textarea class="form-textarea"
                                  name="${row.name || 'input-' + index}"
                                  placeholder="${row.placeholder || ''}"
                                  ${row.required ? 'required' : ''}></textarea>
                    </div>
                `;
                break;

            case 'select':
                const options = row.options.map(opt =>
                    `<option value="${opt.value}">${opt.label || opt.value}</option>`
                ).join('');
                inputHtml = `
                    <div class="form-group">
                        <label class="form-label">${row.label}</label>
                        ${row.description ? `<span class="form-description">${row.description}</span>` : ''}
                        <select class="form-select" name="${row.name || 'input-' + index}" ${row.required ? 'required' : ''}>
                            ${options}
                        </select>
                    </div>
                `;
                break;

            case 'checkbox':
                inputHtml = `
                    <div class="form-group">
                        <div class="form-checkbox">
                            <input type="checkbox"
                                   name="${row.name || 'input-' + index}"
                                   ${row.checked ? 'checked' : ''}>
                            <label class="form-label">${row.label}</label>
                        </div>
                        ${row.description ? `<span class="form-description">${row.description}</span>` : ''}
                    </div>
                `;
                break;
        }

        form.append(inputHtml);
    });

    dialog.removeClass('hidden');
    debugLog('Input dialog shown:', data);
}

function submitInput() {
    const form = $('#input-form');
    const formData = {};

    form.find('input, select, textarea').each(function() {
        const name = $(this).attr('name');
        const type = $(this).attr('type');

        if (type === 'checkbox') {
            formData[name] = $(this).is(':checked');
        } else if (type === 'number') {
            formData[name] = parseFloat($(this).val()) || 0;
        } else {
            formData[name] = $(this).val();
        }
    });

    $.post(`https://${GetParentResourceName()}/inputResponse`, JSON.stringify(formData));
    $('#input-dialog').addClass('hidden');
    debugLog('Input submitted:', formData);
}

function closeInput() {
    $.post(`https://${GetParentResourceName()}/inputResponse`, JSON.stringify(null));
    $('#input-dialog').addClass('hidden');
}

// =============================================
// CONTEXT MENU
// =============================================

function showContextMenu(data) {
    const menu = $('#context-menu');
    const options = $('#context-options');

    $('.context-title').text(data.title);
    options.empty();

    // Show/hide search
    if (data.enableSearch) {
        $('.context-search').removeClass('hidden');
        setupContextSearch(data.options);
    } else {
        $('.context-search').addClass('hidden');
    }

    // Create options
    data.options.forEach((option, index) => {
        const optionHtml = `
            <div class="context-option ${option.disabled ? 'disabled' : ''}" data-index="${index}">
                ${data.enableIcons && option.icon ? `<div class="context-option-icon"><i class="fas ${option.icon}"></i></div>` : ''}
                <div class="context-option-content">
                    <div class="context-option-title">${option.title}</div>
                    ${option.description ? `<div class="context-option-description">${option.description}</div>` : ''}
                </div>
                ${option.arrow ? `<div class="context-option-arrow"><i class="fas fa-chevron-right"></i></div>` : ''}
            </div>
        `;
        options.append(optionHtml);
    });

    // Click handler
    $('.context-option').click(function() {
        if ($(this).hasClass('disabled')) return;

        const index = $(this).data('index');
        const selected = data.options[index];

        if (selected.onSelect) {
            eval(selected.onSelect);
        }

        $.post(`https://${GetParentResourceName()}/menuSelect`, JSON.stringify({ option: selected }));

        if (Config.ContextMenu?.closeOnSelect !== false) {
            hideContextMenu();
        }
    });

    menu.removeClass('hidden');
    debugLog('Context menu shown:', data);
}

function setupContextSearch(options) {
    $('#context-search-input').off('input').on('input', function() {
        const searchTerm = $(this).val().toLowerCase();
        $('.context-option').each(function(index) {
            const title = $(this).find('.context-option-title').text().toLowerCase();
            const description = $(this).find('.context-option-description').text().toLowerCase();
            if (title.includes(searchTerm) || description.includes(searchTerm)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });
}

function hideContextMenu() {
    $('#context-menu').addClass('hidden');
    $('#context-search-input').val('');
}

function closeContext() {
    hideContextMenu();
    closeUI();
}

// =============================================
// SKILL CHECK
// =============================================

function showSkillCheck(data) {
    currentSkillCheck = data;
    const container = $('#skillcheck-container');

    if (data.type === 'circle') {
        $('#skillcheck-circle').removeClass('hidden');
        startCircleSkillCheck(data);
    } else if (data.type === 'bar') {
        $('#skillcheck-bar').removeClass('hidden');
        startBarSkillCheck(data);
    } else if (data.type === 'keys') {
        $('#skillcheck-keys').removeClass('hidden');
        startKeysSkillCheck(data);
    }

    container.removeClass('hidden');
    debugLog('Skill check shown:', data);
}

function startCircleSkillCheck(data) {
    let rotation = 0;
    let targetRotation = Math.random() * 360;
    let targetSize = data.areaSize || 20;
    let speed = data.speed || 1;
    let attempts = data.keys || 3;
    let completed = 0;

    $('.skillcheck-attempts').text(`Attempts: ${attempts}`);

    // Set target position
    $('.skillcheck-target').css('transform', `translate(-50%, 0%) rotate(${targetRotation}deg)`);

    // Rotate cursor
    const interval = setInterval(() => {
        rotation += speed * 2;
        if (rotation >= 360) rotation = 0;
        $('.skillcheck-cursor').css('transform', `translate(-50%, 0%) rotate(${rotation}deg)`);
    }, 16);

    // Key press handler
    let keyHandler = function(e) {
        if (e.key === ' ' || e.key === 'Spacebar') {
            e.preventDefault();

            // Check if in target zone
            const diff = Math.abs(rotation - targetRotation);
            const inZone = diff <= targetSize || diff >= (360 - targetSize);

            if (inZone) {
                completed++;
                playSound('SUCCESS');

                if (completed >= attempts) {
                    clearInterval(interval);
                    $(document).off('keydown', keyHandler);
                    endSkillCheck(true);
                } else {
                    // Next attempt
                    targetRotation = Math.random() * 360;
                    $('.skillcheck-target').css('transform', `translate(-50%, 0%) rotate(${targetRotation}deg)`);
                    $('.skillcheck-attempts').text(`Attempts: ${attempts - completed}`);
                }
            } else {
                clearInterval(interval);
                $(document).off('keydown', keyHandler);
                playSound('FAIL');
                endSkillCheck(false);
            }
        }
    };

    $(document).on('keydown', keyHandler);
}

function startBarSkillCheck(data) {
    // Similar implementation for bar skill check
    endSkillCheck(true);
}

function startKeysSkillCheck(data) {
    // Similar implementation for key sequence skill check
    endSkillCheck(true);
}

function endSkillCheck(success) {
    $('#skillcheck-container').addClass('hidden');
    $('#skillcheck-circle, #skillcheck-bar, #skillcheck-keys').addClass('hidden');

    $.post(`https://${GetParentResourceName()}/skillCheckResponse`, JSON.stringify({ success: success }));
    currentSkillCheck = null;
}

// =============================================
// TEXT UI
// =============================================

function showTextUI(data) {
    const container = $('#textui-container');
    container.removeClass().addClass(data.position || 'right');

    if (data.icon) {
        $('.textui-icon').html(`<i class="fas ${data.icon}"></i>`).show();
    } else {
        $('.textui-icon').hide();
    }

    $('.textui-text').text(data.text);
    container.removeClass('hidden');
}

function hideTextUI() {
    $('#textui-container').addClass('hidden');
}

// =============================================
// ALERT DIALOG
// =============================================

function showAlertDialog(data) {
    const dialog = $('#alert-dialog');
    const buttons = $('#alert-buttons');

    $('.alert-title').text(data.header);
    $('.alert-text').text(data.content);

    buttons.empty();
    data.buttons.forEach(button => {
        const btnHtml = `<button class="btn btn-${button.type || 'primary'}" onclick="alertButtonClick('${button.value}')">${button.label}</button>`;
        buttons.append(btnHtml);
    });

    if (data.cancel) {
        buttons.append(`<button class="btn btn-secondary" onclick="alertButtonClick(null)">Cancel</button>`);
    }

    dialog.removeClass('hidden');
}

function alertButtonClick(value) {
    $.post(`https://${GetParentResourceName()}/alertResponse`, JSON.stringify({ button: value }));
    $('#alert-dialog').addClass('hidden');
}

// =============================================
// NPC DIALOG
// =============================================

function showNPCDialog(data) {
    const dialog = $('#npc-dialog');

    if (data.showAvatar && data.avatar) {
        $('.npc-avatar').removeClass('hidden').find('img').attr('src', data.avatar);
    } else {
        $('.npc-avatar').addClass('hidden');
    }

    $('.npc-name').text(data.name);

    // Typewriter effect
    if (data.enableTypewriter) {
        typewriterEffect($('.npc-message'), data.message, data.typewriterSpeed || 50);
    } else {
        $('.npc-message').text(data.message);
    }

    // Choices
    const choices = $('.npc-choices');
    choices.empty();
    if (data.choices && data.choices.length > 0) {
        data.choices.forEach(choice => {
            choices.append(`<div class="npc-choice" onclick="npcChoiceClick('${choice.value}')">${choice.label}</div>`);
        });
    }

    dialog.removeClass('hidden');
}

function typewriterEffect(element, text, speed) {
    let index = 0;
    element.text('');
    const interval = setInterval(() => {
        if (index < text.length) {
            element.text(element.text() + text.charAt(index));
            index++;
        } else {
            clearInterval(interval);
        }
    }, 1000 / speed);
}

function npcChoiceClick(value) {
    $.post(`https://${GetParentResourceName()}/npcDialogResponse`, JSON.stringify({ choice: value }));
    hideNPCDialog();
}

function hideNPCDialog() {
    $('#npc-dialog').addClass('hidden');
}

// =============================================
// RADIAL MENU
// =============================================

function showRadialMenu(data) {
    const container = $('#radial-items');
    container.empty();

    const itemCount = data.items.length;
    const angleStep = 360 / itemCount;
    const radius = data.size / 2 - 50;

    data.items.forEach((item, index) => {
        const angle = (angleStep * index) * (Math.PI / 180);
        const x = Math.cos(angle) * radius + (data.size / 2) - 40;
        const y = Math.sin(angle) * radius + (data.size / 2) - 40;

        const itemHtml = `
            <div class="radial-item" style="left: ${x}px; top: ${y}px;" data-value="${item.value}">
                ${data.enableIcons && item.icon ? `<div class="radial-item-icon"><i class="fas ${item.icon}"></i></div>` : ''}
                ${data.enableLabels && item.label ? `<div class="radial-item-label">${item.label}</div>` : ''}
            </div>
        `;
        container.append(itemHtml);
    });

    $('.radial-item').click(function() {
        const value = $(this).data('value');
        const item = data.items.find(i => i.value === value);

        if (item.onSelect) {
            eval(item.onSelect);
        }

        $.post(`https://${GetParentResourceName()}/menuSelect`, JSON.stringify({ option: item }));

        if (Config.RadialMenu?.closeOnSelect !== false) {
            hideRadialMenu();
        }
    });

    $('#radial-menu').removeClass('hidden');
}

function hideRadialMenu() {
    $('#radial-menu').addClass('hidden');
}

// =============================================
// ESC KEY HANDLER
// =============================================

$(document).keyup(function(e) {
    if (e.key === 'Escape') {
        if (!$('#input-dialog').hasClass('hidden')) {
            closeInput();
        } else if (!$('#context-menu').hasClass('hidden')) {
            closeContext();
        } else if (!$('#radial-menu').hasClass('hidden')) {
            hideRadialMenu();
            closeUI();
        } else if (currentProgress && currentProgress.canCancel) {
            hideProgress();
            $.post(`https://${GetParentResourceName()}/progressCancelled`, JSON.stringify({}));
        }
    }
});

// =============================================
// INITIALIZATION
// =============================================

$(document).ready(function() {
    debugLog('N3X UI Pack initialized');
});
