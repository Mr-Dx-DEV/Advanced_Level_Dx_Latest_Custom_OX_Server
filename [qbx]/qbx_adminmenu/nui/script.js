// Dev Mode HUD
const devModeHUD = document.getElementById('devModeHUD');
const noclipSpeedDisplay = document.getElementById('noclipSpeed');

// Listen for messages from Lua
window.addEventListener('message', (event) => {
    const data = event.data;

    if (data.action === 'showDevHUD') {
        devModeHUD.classList.remove('hidden');
    } else if (data.action === 'hideDevHUD') {
        devModeHUD.classList.add('hidden');
    } else if (data.action === 'updateSpeed') {
        noclipSpeedDisplay.textContent = `Speed: ${data.speed.toFixed(1)}x`;
    }
});
