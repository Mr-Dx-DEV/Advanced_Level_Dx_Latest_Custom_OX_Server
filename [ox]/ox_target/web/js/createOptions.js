import { fetchNui } from "./fetchNui.js";

const optionsWrapper = document.getElementById("options-wrapper");

function onClick() {
  // when nuifocus is disabled after a click, the hover event is never released
  this.style.pointerEvents = "none";

  fetchNui("select", [this.targetType, this.targetId, this.zoneId]);
  // is there a better way to handle this? probably
  setTimeout(() => (this.style.pointerEvents = "auto"), 100);
}

export function createOptions(type, data, id, zoneId, parentContainer) {
  if (data.hide) return;

  const wrapper = document.createElement("div");
  wrapper.className = "option-wrapper";

  const option = document.createElement("div");
  option.className = "option-container";

  const iconElement = `<i class="fa-fw ${data.icon} option-icon" ${
    data.iconColor ? `style="color:${data.iconColor} !important"` : ""
  }></i>`;

  option.innerHTML = `${iconElement}<p class="option-label">${data.label}</p>`;

  option.targetType = type;
  option.targetId = id;
  option.zoneId = zoneId;

  option.addEventListener("click", onClick);

  wrapper.appendChild(option);
  parentContainer.appendChild(wrapper); // AÑADE AL CONTENEDOR PRINCIPAL
}


