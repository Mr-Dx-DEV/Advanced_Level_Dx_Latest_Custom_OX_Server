
async function getBase64Image(src, removeImageBackGround, callback, outputFormat) {
  const img = new Image();
  img.crossOrigin = 'Anonymous';
  img.addEventListener("load", () => loadFunc(), false);
  async function loadFunc() {
    const canvas = document.createElement('canvas');
    const ctx = canvas.getContext('2d');
    var convertingCanvas = canvas;
    canvas.height = img.naturalHeight;
    canvas.width = img.naturalWidth;
    ctx.drawImage(img, 0, 0);
    var dataURL = convertingCanvas.toDataURL(outputFormat);
    canvas.remove();
    convertingCanvas.remove();
    img.remove();
    callback(dataURL);
  };

  img.src = src;
  if (img.complete || img.complete === undefined) {
    img.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACEAAAAkCAIAAACIS8SLAAAAKklEQVRIie3NMQEAAAgDILV/55nBww8K0Enq2XwHDofD4XA4HA6Hw+E4Wwq6A0U+bfCEAAAAAElFTkSuQmCC";
    img.src = src;
  }
}

async function Convert(pMugShotTxd, removeImageBackGround, id) {
  var tempUrl = `https://nui-img/${pMugShotTxd}/${pMugShotTxd}?t=${String(Math.round(new Date().getTime() / 1000))}`;
  if (pMugShotTxd == 'none') {
    tempUrl = './img/failSafe.png';   
  }
  getBase64Image(tempUrl, removeImageBackGround, function(dataUrl) {
    $.post(`https://${GetParentResourceName()}/Answer`, JSON.stringify({
      Answer: dataUrl,
      Id: id,
    }));
  })
}

window.addEventListener("message", (e) => GotMessage(e), false);
async function GotMessage(e) {
  var msg = e.data
  if (msg.type == 'convert') {
    Convert(msg.pMugShotTxd, msg.removeImageBackGround, msg.id);
  }
}

