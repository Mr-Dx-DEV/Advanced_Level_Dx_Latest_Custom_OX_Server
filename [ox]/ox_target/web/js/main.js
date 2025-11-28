import { createOptions } from "./createOptions.js";

const optionsWrapper = document.getElementById("options-wrapper");
const body = document.body;
const eye = document.getElementById("eyeSvg");

window.addEventListener("message", (event) => {
  optionsWrapper.innerHTML = "";

  switch (event.data.event) {
    case "visible": {
      body.style.visibility = event.data.state ? "visible" : "hidden";
      return eye.classList.remove("eye-hover");
    }

    case "leftTarget": {
      return eye.classList.remove("eye-hover");
    }

    case "setTarget": {
      eye.classList.add("eye-hover");
    
      // LIMPIAR opciones anteriores
      optionsWrapper.innerHTML = "";
    
      const container = document.createElement("div");
      container.style.position = "fixed";
      container.style.top = "50%";
      container.style.left = "calc(50% + 30px)"; // Al lado de la mano
      container.style.transform = "translateY(-50%)";
      container.style.zIndex = "9999";
      container.id = "options-container";
    
      optionsWrapper.appendChild(container);
    
      if (event.data.options) {
        for (const type in event.data.options) {
          event.data.options[type].forEach((data, id) => {
            createOptions(type, data, id + 1, null, container);
          });
        }
      }
    
      if (event.data.zones) {
        for (let i = 0; i < event.data.zones.length; i++) {
          event.data.zones[i].forEach((data, id) => {
            createOptions("zones", data, id + 1, i + 1, container);
          });
        }
      }
    }    
  }
});
