let RN_DATA = {
  rawCategories: [],
  categories: [],
  theme: {},
  panelTitle: "",
  subtitle: "",
  serverName: "",
  player: {
    framework: "standalone",
    job: null,
    jobLabel: null,
    jobGrade: null,
    group: null,
    isStaff: false
  },
  favorites: [],
  themeMode: "light"
};

let currentPageId = null;

const overlay      = document.getElementById("rn-overlay");
const sidebar      = document.getElementById("rn-sidebar-list");
const titleEl      = document.getElementById("rn-page-title");
const metaEl       = document.getElementById("rn-page-meta");
const bodyEl       = document.getElementById("rn-page-body");
const headerTitle  = document.getElementById("rn-title");
const headerSub    = document.getElementById("rn-subtitle");
const searchInput  = document.getElementById("rn-search-input");
const btnClose     = document.getElementById("rn-close");
const btnHelp      = document.getElementById("rn-help");
const helpPopup    = document.getElementById("rn-help-popup");
const btnHelpClose = document.getElementById("rn-help-close");
const themeToggle  = document.getElementById("rn-theme-toggle");
const favToggle    = document.getElementById("rn-fav-toggle");

function applyTheme() {
  if (!RN_DATA.theme) RN_DATA.theme = {};
  const t = RN_DATA.theme;

  if (t.HeaderGradientFrom && t.HeaderGradientTo) {
    const hdr = document.querySelector(".rn-header");
    if (hdr) {
      hdr.style.background = `linear-gradient(90deg, ${t.HeaderGradientFrom}, ${t.HeaderGradientTo})`;
    }
  }

  const isDark = RN_DATA.themeMode === "dark";
  document.body.classList.toggle("rn-dark", isDark);

  if (themeToggle) {
    themeToggle.textContent = "🌓";
    themeToggle.title = isDark ? "Switch to light mode" : "Switch to dark mode";
  }
}

function openOverlay() {
  overlay.style.display = "flex";
}

function closeOverlay() {
  overlay.style.display = "none";
  fetch(`https://${GetParentResourceName()}/rn_close`, {
    method: "POST",
    headers: { "Content-Type": "application/json; charset=UTF-8" },
    body: JSON.stringify({})
  }).catch(() => {});
}

btnClose.addEventListener("click", () => {
  closeOverlay();
});

btnHelp.addEventListener("click", () => {
  helpPopup.style.display = "flex";
});

btnHelpClose.addEventListener("click", () => {
  helpPopup.style.display = "none";
});

if (themeToggle) {
  themeToggle.addEventListener("click", () => {
    RN_DATA.themeMode = RN_DATA.themeMode === "dark" ? "light" : "dark";
    try {
      localStorage.setItem("rnwiki_theme", RN_DATA.themeMode);
    } catch (e) {}
    applyTheme();
  });
}

if (favToggle) {
  favToggle.addEventListener("click", () => {
    if (!currentPageId) return;
    toggleFavorite(currentPageId);
  });
}

window.addEventListener("keydown", (e) => {
  if (e.key === "Escape") {
    closeOverlay();
  }
});

function pageMatchesFilter(page, filterText) {
  if (!filterText) return true;
  const target = (page.title || "") + " " + (page.tag || "") + " " + (page.body || "");
  return target.toLowerCase().includes(filterText.toLowerCase());
}

function pageAllowedForPlayer(page, player) {
  const fw = (page.framework || "all").toString().toLowerCase();
  const playerFw = (player.framework || "standalone").toString().toLowerCase();

  if (fw !== "all" && fw !== playerFw) return false;

  if (page.staffOnly && !player.isStaff) return false;

  if (Array.isArray(page.jobs) && page.jobs.length > 0) {
    const playerJob = (player.job || "").toLowerCase();
    let ok = false;
    page.jobs.forEach(j => {
      if (playerJob === String(j).toLowerCase()) ok = true;
    });
    if (!ok) return false;
  }

  return true;
}

function filterCategoriesForPlayer(categories, player) {
  const result = [];
  categories.forEach(cat => {
    const pages = cat.pages || [];
    const filtered = pages.filter(p => pageAllowedForPlayer(p, player));
    if (filtered.length > 0) {
      result.push({
        id: cat.id,
        title: cat.title,
        pages: filtered
      });
    }
  });
  return result;
}

function findPageById(pageId) {
  let foundPage = null;
  let foundCategory = null;
  RN_DATA.categories.forEach(cat => {
    (cat.pages || []).forEach(page => {
      if (page.id === pageId) {
        foundPage = page;
        foundCategory = cat;
      }
    });
  });
  return { page: foundPage, category: foundCategory };
}

function renderSidebar(filterText = "") {
  sidebar.innerHTML = "";
  const ft = (filterText || "").toLowerCase().trim();

  // Favorites section at top
  const favorites = Array.isArray(RN_DATA.favorites) ? RN_DATA.favorites : [];
  if (favorites.length > 0) {
    const favSection = document.createElement("div");
    favSection.className = "rn-section";

    const favLabel = document.createElement("div");
    favLabel.className = "rn-section-label";
    favLabel.textContent = "★ Favorites";
    favSection.appendChild(favLabel);

    let hasVisibleFav = false;

    favorites.forEach(id => {
      const found = findPageById(id);
      if (!found.page) return;

      if (ft && !pageMatchesFilter(found.page, ft)) return;

      hasVisibleFav = true;
      const item = document.createElement("div");
      item.className = "rn-page";
      item.dataset.pageId = found.page.id;

      if (found.page.id === currentPageId) {
        item.classList.add("active");
      }

      const spanTitle = document.createElement("span");
      spanTitle.textContent = found.page.title || "Untitled";

      const smallTag = document.createElement("small");
      smallTag.textContent = "★";

      item.appendChild(spanTitle);
      item.appendChild(smallTag);

      item.addEventListener("click", () => {
        setActivePage(found.page.id);
      });

      favSection.appendChild(item);
    });

    if (!hasVisibleFav) {
      const empty = document.createElement("div");
      empty.className = "rn-page";
      empty.style.opacity = "0.6";
      empty.style.cursor = "default";
      empty.textContent = ft ? "No favorites match your search" : "No favorites yet";
      favSection.appendChild(empty);
    }

    sidebar.appendChild(favSection);
  }

  // Normal categories
  RN_DATA.categories.forEach(cat => {
    let pagesFiltered = cat.pages || [];
    if (ft) {
      pagesFiltered = pagesFiltered.filter(p => pageMatchesFilter(p, ft));
      if (pagesFiltered.length === 0) return;
    }

    const section = document.createElement("div");
    section.className = "rn-section";

    const label = document.createElement("div");
    label.className = "rn-section-label";
    label.textContent = cat.title || "Category";
    section.appendChild(label);

    pagesFiltered.forEach(page => {
      const item = document.createElement("div");
      item.className = "rn-page";
      item.dataset.pageId = page.id;

      if (page.id === currentPageId) {
        item.classList.add("active");
      }

      const spanTitle = document.createElement("span");
      spanTitle.textContent = page.title || "Untitled";

      const tag = (page.tag || "").trim();
      let smallTag = null;
      if (tag.length > 0) {
        smallTag = document.createElement("small");
        smallTag.textContent = tag;
      }

      item.appendChild(spanTitle);
      if (smallTag) item.appendChild(smallTag);

      item.addEventListener("click", () => {
        setActivePage(page.id);
      });

      section.appendChild(item);
    });

    sidebar.appendChild(section);
  });
}

function updateFavButton() {
  if (!favToggle) return;
  if (!currentPageId) {
    favToggle.textContent = "☆";
    favToggle.classList.remove("active");
    return;
  }
  const isFav = Array.isArray(RN_DATA.favorites) && RN_DATA.favorites.indexOf(currentPageId) !== -1;
  favToggle.textContent = isFav ? "★" : "☆";
  favToggle.classList.toggle("active", isFav);
  favToggle.title = isFav ? "Remove from favorites" : "Add to favorites";
}

function toggleFavorite(pageId) {
  if (!Array.isArray(RN_DATA.favorites)) RN_DATA.favorites = [];
  const idx = RN_DATA.favorites.indexOf(pageId);
  if (idx === -1) {
    RN_DATA.favorites.push(pageId);
  } else {
    RN_DATA.favorites.splice(idx, 1);
  }
  try {
    localStorage.setItem("rnwiki_favorites", JSON.stringify(RN_DATA.favorites));
  } catch (e) {}
  updateFavButton();
  renderSidebar(searchInput.value || "");
}

function setActivePage(pageId) {
  const found = findPageById(pageId);
  if (!found.page) return;

  currentPageId = pageId;

  document.querySelectorAll(".rn-page").forEach(el => {
    if (el.dataset.pageId === pageId) el.classList.add("active");
    else el.classList.remove("active");
  });

  titleEl.textContent = found.page.title || "Untitled";
  const categoryName = found.category ? found.category.title : "Unknown";
  metaEl.textContent = `Category: ${categoryName}`;

  const rawBody = (found.page.body || "").trim();
  const lines = rawBody.split("\n");

  bodyEl.innerHTML = "";

  lines.forEach(line => {
    const trimmed = line.trim();

    if (trimmed.startsWith("•")) {
      let ul = bodyEl.querySelector("ul:last-of-type");
      if (!ul || ul.dataset._closed) {
        ul = document.createElement("ul");
        ul.dataset._closed = "false";
        bodyEl.appendChild(ul);
      }
      const li = document.createElement("li");
      li.textContent = trimmed.replace(/^•\s*/, "");
      ul.appendChild(li);
    } else if (trimmed === "") {
      const br = document.createElement("br");
      bodyEl.appendChild(br);
      const lastUl = bodyEl.querySelector("ul:last-of-type");
      if (lastUl) lastUl.dataset._closed = "true";
    } else {
      const p = document.createElement("p");
      p.className = "rn-paragraph";
      p.textContent = trimmed;
      bodyEl.appendChild(p);
      const lastUl = bodyEl.querySelector("ul:last-of-type");
      if (lastUl) lastUl.dataset._closed = "true";
    }
  });

  updateFavButton();
}

searchInput.addEventListener("input", (e) => {
  const value = e.target.value || "";
  renderSidebar(value);
});

window.addEventListener("message", (event) => {
  const data = event.data;
  if (!data || !data.action) return;

  if (data.action === "open") {
    RN_DATA.rawCategories = data.categories || [];
    RN_DATA.theme         = data.theme || {};
    RN_DATA.panelTitle    = data.panelTitle || "RiseNova Wiki";
    RN_DATA.subtitle      = data.subtitle  || "";
    RN_DATA.serverName    = data.serverName || "";
    RN_DATA.player        = data.player || RN_DATA.player;

    try {
      const storedFavs = localStorage.getItem("rnwiki_favorites");
      RN_DATA.favorites = storedFavs ? JSON.parse(storedFavs) : [];
    } catch (e) {
      RN_DATA.favorites = [];
    }

    try {
      const storedTheme = localStorage.getItem("rnwiki_theme");
      if (storedTheme === "dark" || storedTheme === "light") {
        RN_DATA.themeMode = storedTheme;
      }
    } catch (e) {}

    RN_DATA.categories = filterCategoriesForPlayer(RN_DATA.rawCategories, RN_DATA.player);

    headerTitle.textContent = RN_DATA.panelTitle;
    headerSub.textContent   = RN_DATA.subtitle || (RN_DATA.serverName
      ? `Official guide for ${RN_DATA.serverName}`
      : "Quick reference for commands, RP and server info.");

    applyTheme();
    openOverlay();
    renderSidebar("");

    const firstCat = RN_DATA.categories[0];
    if (firstCat && firstCat.pages && firstCat.pages[0]) {
      setActivePage(firstCat.pages[0].id);
    } else {
      currentPageId = null;
      bodyEl.innerHTML = "<p class=\"rn-paragraph\">No pages available for your current role/framework.</p>";
      metaEl.textContent = "";
      updateFavButton();
    }
  }

  if (data.action === "close") {
    overlay.style.display = "none";
  }
});
