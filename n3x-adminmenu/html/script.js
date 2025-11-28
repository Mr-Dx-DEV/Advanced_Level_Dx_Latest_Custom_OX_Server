const commands = [
    // Utility Commands
    { id: 'announce', name: 'Announce', category: 'utility', description: 'Send a server-wide announcement' },
    { id: 'copycoords', name: 'Copy Coordinates', category: 'utility', description: 'Copy coordinates in different formats' },
    { id: 'noclip', name: 'NoClip', category: 'utility', description: 'Toggle noclip mode (F1 when dev mode active)' },
    { id: 'godmode', name: 'God Mode', category: 'utility', description: 'Toggle god mode (F2 when dev mode active)' },
    { id: 'invisible', name: 'Invisible', category: 'utility', description: 'Toggle invisibility (F3 when dev mode active)' },
    { id: 'fixvehicle', name: 'Fix Vehicle', category: 'utility', description: 'Repair current vehicle (F6 when dev mode active)' },
    { id: 'changeplate', name: 'Change Plate', category: 'utility', description: 'Change vehicle license plate' },
    { id: 'clothes', name: 'Clothes Menu', category: 'utility', description: 'Open clothing menu' },
    { id: 'createjob', name: 'Create Job Stashes', category: 'utility', description: 'Create job stashes' },

    // Player Commands
    { id: 'freeze', name: 'Freeze Player', category: 'player', description: 'Freeze/unfreeze a player' },
    { id: 'givecar', name: 'Give Car', category: 'player', description: 'Give a car to a player' },
    { id: 'giveitem', name: 'Give Item', category: 'player', description: 'Give an item to a player' },
    { id: 'givejob', name: 'Give Job', category: 'player', description: 'Assign a job to a player' },
    { id: 'givemoney', name: 'Give Money', category: 'player', description: 'Give money to a player' },
    { id: 'revive', name: 'Revive', category: 'player', description: 'Revive a player (F5 when dev mode active)' },
    { id: 'heal', name: 'Heal', category: 'player', description: 'Heal yourself or a player' },
    { id: 'armor', name: 'Give Armor', category: 'player', description: 'Give armor to yourself or a player' },
    { id: 'weapon', name: 'Give Weapon', category: 'player', description: 'Give a weapon to a player' },
    { id: 'clearinv', name: 'Clear Inventory', category: 'player', description: 'Clear player inventory' },
    { id: 'kick', name: 'Kick', category: 'player', description: 'Kick a player from server' },
    { id: 'ban', name: 'Ban Player', category: 'player', description: 'Ban a player from server' },
    { id: 'teleport', name: 'Teleport', category: 'player', description: 'Teleport to coordinates or player' },
    { id: 'spectate', name: 'Spectate', category: 'player', description: 'Spectate a player' },
    { id: 'bringplayer', name: 'Bring Player', category: 'player', description: 'Bring a player to you' },
    { id: 'gotoplayer', name: 'Go To Player', category: 'player', description: 'Teleport to a player' },
];

let currentTab = 'all';
let favorites = JSON.parse(localStorage.getItem('n3x_favorites') || '[]');
let onlinePlayers = [];
let devModeActive = JSON.parse(localStorage.getItem('n3x_devmode') || 'false');

// DOM Elements
const adminMenu = document.getElementById('adminMenu');
const commandList = document.getElementById('commandList');
const searchInput = document.getElementById('searchInput');
const tabButtons = document.querySelectorAll('.tab-btn');
const devModeToggle = document.getElementById('devModeToggle');
const devModeInfo = document.getElementById('devModeInfo');
const closeBtn = document.getElementById('closeBtn');

// Initialize
function init() {
    renderCommands();
    setupEventListeners();
    updateDevMode();
}

// Setup Event Listeners
function setupEventListeners() {
    // Tab buttons
    tabButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            currentTab = btn.dataset.tab;
            tabButtons.forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
            renderCommands();
        });
    });

    // Search input
    searchInput.addEventListener('input', (e) => {
        renderCommands(e.target.value);
    });

    // Dev mode toggle
    devModeToggle.addEventListener('click', () => {
        devModeActive = !devModeActive;
        localStorage.setItem('n3x_devmode', JSON.stringify(devModeActive));
        updateDevMode();
        sendToLua('toggleDevMode', { active: devModeActive });
    });

    // Close button
    closeBtn.addEventListener('click', () => {
        closeMenu();
    });

    // ESC key to close
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            closeMenu();
        }
    });

    // NUI Callbacks
    window.addEventListener('message', (event) => {
        const data = event.data;

        if (data.action === 'open') {
            openMenu();
            if (data.players) {
                onlinePlayers = data.players;
            }
        } else if (data.action === 'close') {
            closeMenu();
        } else if (data.action === 'updatePlayers') {
            onlinePlayers = data.players;
        }
    });
}

// Update Dev Mode
function updateDevMode() {
    if (devModeActive) {
        devModeToggle.classList.add('active');
        devModeInfo.classList.remove('hidden');
    } else {
        devModeToggle.classList.remove('active');
        devModeInfo.classList.add('hidden');
    }
}

// Render Commands
function renderCommands(filter = '') {
    commandList.innerHTML = '';

    let filteredCommands = commands.filter(cmd => {
        if (currentTab !== 'all' && currentTab !== cmd.category && currentTab !== 'favorites') {
            return false;
        }
        if (currentTab === 'favorites' && !favorites.includes(cmd.id)) {
            return false;
        }
        if (filter && !cmd.name.toLowerCase().includes(filter.toLowerCase())) {
            return false;
        }
        return true;
    });

    filteredCommands.forEach(cmd => {
        const cmdElement = document.createElement('div');
        cmdElement.className = 'command-item';
        cmdElement.dataset.commandId = cmd.id;

        const isFavorite = favorites.includes(cmd.id);

        cmdElement.innerHTML = `
            <div class="command-header">
                <div class="command-header-left">
                    <button class="favorite-btn ${isFavorite ? 'active' : ''}" onclick="toggleFavorite('${cmd.id}', event)">★</button>
                    <span class="command-name">${cmd.name}</span>
                </div>
                <span class="command-expand">▼</span>
            </div>
            <div class="command-body">
                <div class="command-content">
                    <div class="command-description">${cmd.description}</div>
                    ${generateFormFields(cmd)}
                </div>
            </div>
        `;

        // Add click event to header to toggle expand
        const header = cmdElement.querySelector('.command-header');
        header.addEventListener('click', (e) => {
            if (!e.target.classList.contains('favorite-btn')) {
                cmdElement.classList.toggle('expanded');
            }
        });

        commandList.appendChild(cmdElement);
    });
}

// Toggle Favorite
function toggleFavorite(cmdId, event) {
    event.stopPropagation();
    const index = favorites.indexOf(cmdId);
    if (index > -1) {
        favorites.splice(index, 1);
    } else {
        favorites.push(cmdId);
    }
    localStorage.setItem('n3x_favorites', JSON.stringify(favorites));
    renderCommands();
}

// Generate Form Fields
function generateFormFields(cmd) {
    let html = '';

    switch(cmd.id) {
        case 'announce':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Message</label>
                        <input type="text" class="form-input" name="message" placeholder="Enter announcement..." required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'copycoords':
            html = `
                <div class="command-form">
                    <button type="button" class="execute-btn" onclick="copyCoords('vector2')" style="margin-bottom: 8px;">Copy Vector2</button>
                    <button type="button" class="execute-btn" onclick="copyCoords('vector3')" style="margin-bottom: 8px;">Copy Vector3</button>
                    <button type="button" class="execute-btn" onclick="copyCoords('vector4')">Copy Vector4</button>
                </div>
            `;
            break;

        case 'changeplate':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">New Plate</label>
                        <input type="text" class="form-input" name="plate" placeholder="Enter plate..." maxlength="8" required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'freeze':
        case 'revive':
        case 'spectate':
        case 'bringplayer':
        case 'gotoplayer':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'kick':
        case 'ban':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Reason</label>
                        <input type="text" class="form-input" name="reason" placeholder="Enter reason..." required>
                    </div>
                    ${cmd.id === 'ban' ? `
                    <div class="form-group">
                        <label class="form-label">Duration (hours, 0 = permanent)</label>
                        <input type="number" class="form-input" name="duration" value="0" min="0">
                    </div>
                    ` : ''}
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'givecar':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Vehicle Model</label>
                        <input type="text" class="form-input" name="vehicle" placeholder="e.g., adder, t20..." required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'giveitem':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Item Name</label>
                        <input type="text" class="form-input" name="item" placeholder="e.g., bread, water..." required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Amount</label>
                        <input type="number" class="form-input" name="amount" value="1" min="1" required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'givejob':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Job Name</label>
                        <input type="text" class="form-input" name="job" placeholder="e.g., police, ambulance..." required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Grade</label>
                        <input type="number" class="form-input" name="grade" value="0" min="0" required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'givemoney':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Money Type</label>
                        <select class="form-select" name="moneytype" required>
                            <option value="cash">Cash</option>
                            <option value="bank">Bank</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Amount</label>
                        <input type="number" class="form-input" name="amount" value="1000" min="1" required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'teleport':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Teleport Type</label>
                        <select class="form-select" name="tptype" onchange="handleTeleportTypeChange(this)" required>
                            <option value="coords">Coordinates</option>
                            <option value="player">Player</option>
                            <option value="waypoint">Waypoint</option>
                        </select>
                    </div>
                    <div class="coords-input">
                        <div class="form-group">
                            <label class="form-label">X, Y, Z</label>
                            <input type="text" class="form-input" name="coords" placeholder="x, y, z" required>
                        </div>
                    </div>
                    <div class="player-input" style="display: none;">
                        <div class="form-group">
                            <label class="form-label">Select Player</label>
                            <select class="form-select" name="playerid">
                                <option value="">Choose player...</option>
                                ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                            </select>
                        </div>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'heal':
        case 'armor':
        case 'weapon':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Target</label>
                        <select class="form-select" name="target" onchange="handleTargetChange(this)" required>
                            <option value="self">Self</option>
                            <option value="player">Other Player</option>
                        </select>
                    </div>
                    <div class="player-select" style="display: none;">
                        <div class="form-group">
                            <label class="form-label">Select Player</label>
                            <select class="form-select" name="playerid">
                                <option value="">Choose player...</option>
                                ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                            </select>
                        </div>
                    </div>
                    ${cmd.id === 'weapon' ? `
                    <div class="form-group">
                        <label class="form-label">Weapon Name</label>
                        <input type="text" class="form-input" name="weapon" placeholder="e.g., weapon_pistol" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Ammo</label>
                        <input type="number" class="form-input" name="ammo" value="250" min="0">
                    </div>
                    ` : ''}
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'clearinv':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Select Player</label>
                        <select class="form-select" name="playerid" required>
                            <option value="">Choose player...</option>
                            ${onlinePlayers.map(p => `<option value="${p.id}">[${p.id}] ${p.name}</option>`).join('')}
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-label" style="color: #ef4444;">⚠️ This action cannot be undone!</label>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        case 'createjob':
            html = `
                <form class="command-form" onsubmit="executeCommand(event, '${cmd.id}')">
                    <div class="form-group">
                        <label class="form-label">Job Name</label>
                        <input type="text" class="form-input" name="jobname" placeholder="Enter job name..." required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Stash Size</label>
                        <input type="number" class="form-input" name="size" value="50" min="1" required>
                    </div>
                    <button type="submit" class="execute-btn">Execute</button>
                </form>
            `;
            break;

        default:
            html = `
                <div class="command-form">
                    <button type="button" class="execute-btn" onclick="executeSimpleCommand('${cmd.id}')">Execute</button>
                </div>
            `;
    }

    return html;
}

// Handle Teleport Type Change
function handleTeleportTypeChange(select) {
    const form = select.closest('form');
    const coordsInput = form.querySelector('.coords-input');
    const playerInput = form.querySelector('.player-input');

    if (select.value === 'player') {
        coordsInput.style.display = 'none';
        playerInput.style.display = 'block';
        form.querySelector('[name="coords"]').required = false;
        form.querySelector('[name="playerid"]').required = true;
    } else if (select.value === 'waypoint') {
        coordsInput.style.display = 'none';
        playerInput.style.display = 'none';
        form.querySelector('[name="coords"]').required = false;
        form.querySelector('[name="playerid"]').required = false;
    } else {
        coordsInput.style.display = 'block';
        playerInput.style.display = 'none';
        form.querySelector('[name="coords"]').required = true;
        form.querySelector('[name="playerid"]').required = false;
    }
}

// Handle Target Change
function handleTargetChange(select) {
    const form = select.closest('form');
    const playerSelect = form.querySelector('.player-select');

    if (select.value === 'player') {
        playerSelect.style.display = 'block';
        form.querySelector('[name="playerid"]').required = true;
    } else {
        playerSelect.style.display = 'none';
        form.querySelector('[name="playerid"]').required = false;
    }
}

// Execute Command
function executeCommand(event, commandId) {
    event.preventDefault();

    const form = event.target;
    const formData = new FormData(form);
    const data = { command: commandId };

    for (let [key, value] of formData.entries()) {
        data[key] = value;
    }

    sendToLua('executeCommand', data);

    // Collapse the command item after execution
    const commandItem = form.closest('.command-item');
    if (commandItem) {
        commandItem.classList.remove('expanded');
    }
}

// Execute Simple Command
function executeSimpleCommand(commandId) {
    sendToLua('executeCommand', { command: commandId });

    // Collapse the command item
    const commandItem = document.querySelector(`[data-command-id="${commandId}"]`);
    if (commandItem) {
        commandItem.classList.remove('expanded');
    }
}

// Copy Coordinates
function copyCoords(format) {
    sendToLua('copyCoords', { format: format });
}

// Send to Lua
function sendToLua(action, data = {}) {
    fetch(`https://${GetParentResourceName()}/${action}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    });
}

// Open Menu
function openMenu() {
    adminMenu.classList.remove('hidden');
}

// Close Menu
function closeMenu() {
    adminMenu.classList.add('hidden');

    // Collapse all expanded commands
    document.querySelectorAll('.command-item.expanded').forEach(item => {
        item.classList.remove('expanded');
    });

    sendToLua('closeMenu');
}

// Get Parent Resource Name
function GetParentResourceName() {
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    return urlParams.get('resource') || 'n3x-adminmenu';
}

// Make menu draggable
let isDragging = false;
let currentX;
let currentY;
let initialX;
let initialY;
let xOffset = 0;
let yOffset = 0;

function makeDraggable() {
    const menuContainer = document.querySelector('.menu-container');
    const menuHeader = document.querySelector('.menu-header');

    menuHeader.addEventListener('mousedown', dragStart);
    document.addEventListener('mousemove', drag);
    document.addEventListener('mouseup', dragEnd);

    function dragStart(e) {
        if (e.target.closest('.header-controls')) return; // Don't drag when clicking buttons

        initialX = e.clientX - xOffset;
        initialY = e.clientY - yOffset;

        if (e.target === menuHeader || e.target.closest('.menu-title')) {
            isDragging = true;
        }
    }

    function drag(e) {
        if (isDragging) {
            e.preventDefault();

            currentX = e.clientX - initialX;
            currentY = e.clientY - initialY;

            xOffset = currentX;
            yOffset = currentY;

            setTranslate(currentX, currentY, menuContainer);
        }
    }

    function dragEnd(e) {
        initialX = currentX;
        initialY = currentY;
        isDragging = false;
    }

    function setTranslate(xPos, yPos, el) {
        el.style.transform = `translate(${xPos}px, ${yPos}px)`;
    }
}

// Initialize on load
document.addEventListener('DOMContentLoaded', () => {
    init();
    makeDraggable();
});
