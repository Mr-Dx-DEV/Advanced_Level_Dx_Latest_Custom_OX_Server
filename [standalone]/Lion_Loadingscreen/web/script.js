document.addEventListener('DOMContentLoaded', function() {
    let config = null;
    let currentSection = null;
    let musicIndex = 0;
    let isPlaying = false;
    let musicVolume = 0.7;
    let isDraggingProgress = false;
    let isDraggingVolume = false;
    let musicArray = [];
    let isClosed = false;
    const musicPlayer = document.getElementById('music-player');
    const playPauseBtn = document.getElementById('play-pause');
    const playPauseIcon = playPauseBtn.querySelector('i');
    const prevBtn = document.getElementById('previous');
    const nextBtn = document.getElementById('next');
    const volumeIcon = document.getElementById('volume-icon');
    const durationEl = document.getElementById('duration');
    const navButtons = document.querySelectorAll('.nav-button');
    const sections = document.querySelectorAll('.section');
    const updatesContainer = document.querySelector('.updates-container');
    const teamContainer = document.querySelector('.team-container');
    const rulesContainer = document.querySelector('.rules-container');
    const keyboardContainer = document.querySelector('.keyboard-container');
    const toggleViewBtn = document.querySelector('.toggle-view');
    const youtubePlayer = document.getElementById('youtube-player');
    const songTitle = document.querySelector('.song-title');
    const artistName = document.querySelector('.artist');
    const playerProgress = document.querySelector('.player-progress');
    const progressIndicator = document.querySelector('.progress-indicator');
    const progressDot = document.querySelector('.progress-dot');
    const volumeProgress = document.querySelector('.volume-progress');
    const volumeIndicator = document.querySelector('.volume-indicator');
    const volumeDot = document.querySelector('.volume-dot');

    loadConfig();

    function loadConfig() {
        fetch('config.json').then(response => {
            if (!response.ok) throw new Error('Config dosyası bulunamadı');
            return response.json();
        }).then(data => {
            config = data;
            initializeApp();
        }).catch(error => {
            console.error('Config dosyası yüklenemedi:', error);
            config = {
                youtubeVideoId: "MsDD0x0RMhI",
                music: {
                    song1: { title: "BABY - BAND4BAND", artist: "Central Cee", path: "html/music/song1.mp3" },
                    song2: { title: "MyNeck MyBack", artist: "Aykut Closer", path: "html/music/song2.mp3" },
                    song3: { title: "Up In", artist: "Aykut Closer", path: "html/music/song3.mp3" }
                },
                updates: [],
                team: [],
                rules: [],
                keyboard: [],
                discord: "#",
                youtube: "#",
                tiktok: "#"
            };
            initializeApp();
        });
    }

    function initializeApp() {
        setupYoutubeBackground();
        setupSocialLinks();
        initMusicPlayer();
        renderAllContent();
        addEventListeners();
        // Başlangıçta ekranı aç
        if (!isClosed) document.body.style.display = 'block';
    }

    function setupYoutubeBackground() {
        if (!config.youtubeVideoId) return;
        if (youtubePlayer) {
            youtubePlayer.src = `https://www.youtube.com/embed/${config.youtubeVideoId}?autoplay=1&mute=1&controls=0&showinfo=0&rel=0&loop=1&playlist=${config.youtubeVideoId}&disablekb=1&modestbranding=1&iv_load_policy=3&fs=0&enablejsapi=1&playsinline=1&origin=${window.location.origin}`;
            window.addEventListener('resize', adjustYoutubePlayerSize);
            adjustYoutubePlayerSize();
        }
    }

    function adjustYoutubePlayerSize() {
        if (!youtubePlayer) return;
        const windowWidth = window.innerWidth;
        const windowHeight = window.innerHeight;
        const aspectRatio = 16/9;
        let width, height;
        if (windowWidth / windowHeight > aspectRatio) {
            width = windowWidth;
            height = width / aspectRatio;
        } else {
            height = windowHeight;
            width = height * aspectRatio;
        }
        youtubePlayer.style.width = width + 'px';
        youtubePlayer.style.height = height + 'px';
    }

    function setupSocialLinks() {
        const discordLink = document.querySelector('.discord');
        const youtubeLink = document.querySelector('.youtube');
        const tiktokLink = document.querySelector('.tiktok');
        
        if (discordLink) discordLink.href = config.discord || "#";
        if (youtubeLink) youtubeLink.href = config.youtube || "#";
        if (tiktokLink) tiktokLink.href = config.tiktok || "#";
        
        if (discordLink) {
            discordLink.addEventListener('click', function(e) {
                e.preventDefault();
                openExternalLink(this.href);
            });
        }
        
        if (youtubeLink) {
            youtubeLink.addEventListener('click', function(e) {
                e.preventDefault();
                openExternalLink(this.href);
            });
        }
        
        if (tiktokLink) {
            tiktokLink.addEventListener('click', function(e) {
                e.preventDefault();
                openExternalLink(this.href);
            });
        }
    }

    function openExternalLink(url) {
        if (typeof window.invokeNative === 'function') {
            window.invokeNative('openUrl', url);
        } else if (typeof mp !== 'undefined' && mp.trigger) {
            mp.trigger('openBrowser', url);
        } else {
            window.open(url, '_blank');
        }
    }

    function initMusicPlayer() {
        if (config.music) {
            musicArray = Object.values(config.music).filter(song => song);
            if (musicArray.length > 0 && musicPlayer && !isClosed) {
                loadSong(0);
                musicPlayer.volume = musicVolume;
                musicPlayer.play().then(() => {
                    isPlaying = true;
                    if (playPauseIcon) playPauseIcon.className = 'fas fa-pause';
                }).catch(error => {
                    console.error('Müzik çalınamadı:', error);
                    setTimeout(() => musicPlayer.play(), 1000);
                });
            }
        }
    }

    function loadSong(index) {
        if (!musicArray || musicArray.length === 0 || isClosed) return;
        musicIndex = (index < 0) ? musicArray.length - 1 : (index >= musicArray.length) ? 0 : index;
        const song = musicArray[musicIndex];
        if (!song) return;
        if (songTitle) songTitle.textContent = song.title || "Bilinmeyen Şarkı";
        if (artistName) artistName.textContent = song.artist || "Bilinmeyen Sanatçı";
        if (musicPlayer) {
            musicPlayer.src = song.path || "";
            musicPlayer.load();
            updateProgressUI(0);
            if (durationEl) durationEl.textContent = '00:00';
            if (isPlaying) musicPlayer.play();
        }
    }

    function playMusic() {
        if (!musicPlayer || isClosed) return;
        musicPlayer.play().then(() => {
            isPlaying = true;
            if (playPauseIcon) playPauseIcon.className = 'fas fa-pause';
        }).catch(error => {
            console.error('Müzik çalınamadı:', error);
            isPlaying = false;
            if (playPauseIcon) playPauseIcon.className = 'fas fa-play';
        });
    }

    function pauseMusic() {
        if (musicPlayer) {
            musicPlayer.pause();
            isPlaying = false;
            if (playPauseIcon) playPauseIcon.className = 'fas fa-play';
        }
    }

    function playPause() {
        if (!musicPlayer || isClosed) return;
        if (musicPlayer.paused) playMusic();
        else pauseMusic();
    }

    function updateProgress() {
        if (isDraggingProgress || !musicPlayer || isClosed) return;
        const { duration, currentTime } = musicPlayer;
        if (duration && isFinite(duration)) {
            const progressPercent = (currentTime / duration) * 100;
            updateProgressUI(progressPercent);
            if (durationEl) durationEl.textContent = formatTime(currentTime);
        } else if (durationEl) durationEl.textContent = '00:00';
    }

    function updateProgressUI(percentage) {
        if (progressIndicator) progressIndicator.style.width = `${percentage}%`;
        if (progressDot) progressDot.style.left = `${percentage}%`;
    }

    function startDragProgress(e) {
        e.preventDefault();
        isDraggingProgress = true;
        if (progressDot) progressDot.classList.add('active');
        document.addEventListener('mousemove', dragProgress);
        document.addEventListener('mouseup', stopDragProgress);
    }

    function dragProgress(e) {
        if (!isDraggingProgress || !playerProgress || !musicPlayer || isClosed) return;
        const rect = playerProgress.getBoundingClientRect();
        const containerWidth = rect.width;
        let clickX = Math.max(0, Math.min(e.clientX - rect.left, containerWidth));
        const percentage = (clickX / containerWidth) * 100;
        updateProgressUI(percentage);
        if (musicPlayer.duration && isFinite(musicPlayer.duration)) musicPlayer.currentTime = (percentage / 100) * musicPlayer.duration;
    }

    function stopDragProgress() {
        isDraggingProgress = false;
        if (progressDot) progressDot.classList.remove('active');
        document.removeEventListener('mousemove', dragProgress);
        document.removeEventListener('mouseup', stopDragProgress);
    }

    function handleProgressClick(e) {
        if (isDraggingProgress || !playerProgress || !musicPlayer || isClosed) return;
        const rect = playerProgress.getBoundingClientRect();
        const containerWidth = rect.width;
        const clickX = Math.max(0, Math.min(e.clientX - rect.left, containerWidth));
        const percentage = (clickX / containerWidth) * 100;
        updateProgressUI(percentage);
        if (musicPlayer.duration && isFinite(musicPlayer.duration)) musicPlayer.currentTime = (percentage / 100) * musicPlayer.duration;
    }

    function setVolume(percentage) {
        percentage = Math.max(0, Math.min(100, percentage));
        musicVolume = percentage / 100;
        if (musicPlayer) musicPlayer.volume = musicVolume;
        updateVolumeUI(percentage);
        updateVolumeIcon();
    }

    function updateVolumeUI(percentage) {
        if (volumeIndicator) volumeIndicator.style.width = `${percentage}%`;
        if (volumeDot) volumeDot.style.left = `${percentage}%`;
    }

    function startDragVolume(e) {
        e.preventDefault();
        isDraggingVolume = true;
        if (volumeDot) volumeDot.classList.add('active');
        document.addEventListener('mousemove', dragVolume);
        document.addEventListener('mouseup', stopDragVolume);
    }

    function dragVolume(e) {
        if (!isDraggingVolume || !volumeProgress || isClosed) return;
        const rect = volumeProgress.getBoundingClientRect();
        const containerWidth = rect.width;
        let clickX = Math.max(0, Math.min(e.clientX - rect.left, containerWidth));
        const percentage = (clickX / containerWidth) * 100;
        setVolume(percentage);
    }

    function stopDragVolume() {
        isDraggingVolume = false;
        if (volumeDot) volumeDot.classList.remove('active');
        document.removeEventListener('mousemove', dragVolume);
        document.removeEventListener('mouseup', stopDragVolume);
    }

    function handleVolumeClick(e) {
        if (isDraggingVolume || !volumeProgress || isClosed) return;
        const rect = volumeProgress.getBoundingClientRect();
        const containerWidth = rect.width;
        const clickX = Math.max(0, Math.min(e.clientX - rect.left, containerWidth));
        const percentage = (clickX / containerWidth) * 100;
        setVolume(percentage);
    }

    function updateVolumeIcon() {
        if (!volumeIcon || isClosed) return;
        if (musicVolume > 0.6) volumeIcon.className = 'fas fa-volume-up';
        else if (musicVolume > 0) volumeIcon.className = 'fas fa-volume-down';
        else volumeIcon.className = 'fas fa-volume-mute';
    }

    function toggleVolume() {
        if (!musicPlayer || isClosed) return;
        if (musicPlayer.volume > 0) {
            musicPlayer.dataset.prevVolume = musicPlayer.volume;
            setVolume(0);
        } else {
            const prevVolume = parseFloat(musicPlayer.dataset.prevVolume) || 0.7;
            setVolume(prevVolume * 100);
        }
    }

    function formatTime(seconds) {
        if (isNaN(seconds) || !isFinite(seconds)) return '00:00';
        const min = Math.floor(seconds / 60);
        const sec = Math.floor(seconds % 60);
        return `${min.toString().padStart(2, '0')}:${sec.toString().padStart(2, '0')}`;
    }

    function showSection(sectionName) {
        if (isClosed) return;
        sections.forEach(section => {
            if (section.classList.contains('active')) {
                section.classList.remove('active');
                setTimeout(() => section.style.display = 'none', 400);
            } else section.style.display = 'none';
        });
        navButtons.forEach(button => button.dataset.target === sectionName ? button.classList.add('active') : button.classList.remove('active'));
        sections.forEach(section => {
            if (section.id === `${sectionName}-section`) {
                section.style.display = 'block';
                void section.offsetWidth;
                section.classList.add('active');
            }
        });
        currentSection = sectionName;
    }

    function hideAllSections() {
        if (isClosed) return;
        navButtons.forEach(button => button.classList.remove('active'));
        sections.forEach(section => {
            if (section.classList.contains('active')) {
                section.classList.remove('active');
                setTimeout(() => section.style.display = 'none', 400);
            }
        });
        currentSection = null;
    }

    function renderAllContent() {
        if (isClosed) return;
        renderUpdates();
        renderTeam();
        renderRules();
        renderKeyboard();
    }

    function renderUpdates() {
        if (!updatesContainer || isClosed) return;
        updatesContainer.innerHTML = '';
        if (!config.updates || config.updates.length === 0) {
            const message = document.createElement('div');
            message.className = 'update-card';
            message.innerHTML = '<p class="update-content">Güncellemeler henüz eklenmedi.</p>';
            updatesContainer.appendChild(message);
            return;
        }
        config.updates.forEach(update => {
            if (!update) return;
            const updateCard = document.createElement('div');
            updateCard.className = 'update-card';
            updateCard.innerHTML = `<div class="update-header"><h3 class="update-title">${update.title || 'Güncelleme'}</h3><span class="update-date">${update.date || 'Tarih belirtilmedi'}</span></div><h4 class="update-subtitle">${update.subtitle || ''}</h4><p class="update-content">${update.content || 'İçerik belirtilmedi'}</p>`;
            updatesContainer.appendChild(updateCard);
        });
    }

    function renderTeam() {
        if (!teamContainer || isClosed) return;
        teamContainer.innerHTML = '';
        if (!config.team || config.team.length === 0) {
            const message = document.createElement('div');
            message.className = 'team-card';
            message.innerHTML = '<div class="team-member-info"><p>Takım üyeleri henüz eklenmedi.</p></div>';
            teamContainer.appendChild(message);
            return;
        }
        config.team.forEach(member => {
            if (!member) return;
            const teamCard = document.createElement('div');
            teamCard.className = 'team-card';
            const imagePath = member.image || 'html/img/lionstore.png';
            teamCard.innerHTML = `<img src="${imagePath}" alt="${member.name || 'Takım Üyesi'}" class="team-member-image" onerror="this.src='html/img/lionstore.png'"><div class="team-member-info"><p class="team-member-role">${member.role || 'Rol belirtilmedi'}</p><h3 class="team-member-name">${member.name || 'İsim belirtilmedi'}</h3></div>`;
            teamContainer.appendChild(teamCard);
        });
    }

    function renderRules() {
        if (!rulesContainer || isClosed) return;
        rulesContainer.innerHTML = '';
        if (!config.rules || config.rules.length === 0) {
            const message = document.createElement('div');
            message.className = 'rule-card';
            message.innerHTML = '<p>Kurallar henüz eklenmedi.</p>';
            rulesContainer.appendChild(message);
            return;
        }
        config.rules.forEach(rule => {
            if (!rule) return;
            const ruleCard = document.createElement('div');
            ruleCard.className = 'rule-card';
            ruleCard.innerHTML = `<h3 class="rule-title">${rule.title || 'Kural'}</h3><p class="rule-content">${rule.content || 'İçerik belirtilmedi'}</p>`;
            rulesContainer.appendChild(ruleCard);
        });
    }

    function renderKeyboard() {
        if (!keyboardContainer || isClosed) return;
        keyboardContainer.innerHTML = '';
        if (!config.keyboard || config.keyboard.length === 0) {
            const message = document.createElement('div');
            message.className = 'key-card';
            message.innerHTML = '<p>Klavye kısayolları henüz eklenmedi.</p>';
            keyboardContainer.appendChild(message);
            return;
        }
        config.keyboard.forEach(key => {
            if (!key) return;
            const keyCard = document.createElement('div');
            keyCard.className = 'key-card';
            keyCard.innerHTML = `<div class="key">${key.key || 'Key'}</div><div class="key-info"><div class="key-title">${key.title || 'Başlık'}</div><div class="key-description">${key.description || 'Açıklama'}</div></div>`;
            keyboardContainer.appendChild(keyCard);
        });
    }

    function closeLoadingScreen() {
        if (isClosed) return;
        if (musicPlayer) {
            musicPlayer.pause();
            musicPlayer.currentTime = 0;
            musicPlayer.src = '';
        }
        document.body.style.display = 'none';
        isClosed = true;
    }

    function addEventListeners() {
        if (playPauseBtn) playPauseBtn.addEventListener('click', playPause);
        if (prevBtn) prevBtn.addEventListener('click', () => loadSong(musicIndex - 1));
        if (nextBtn) nextBtn.addEventListener('click', () => loadSong(musicIndex + 1));
        if (musicPlayer) {
            musicPlayer.addEventListener('timeupdate', updateProgress);
            musicPlayer.addEventListener('ended', () => loadSong(musicIndex + 1));
            musicPlayer.addEventListener('loadedmetadata', () => {
                if (durationEl && musicPlayer.duration) durationEl.textContent = formatTime(musicPlayer.duration);
            });
        }
        if (playerProgress) playerProgress.addEventListener('click', handleProgressClick);
        if (progressDot) progressDot.addEventListener('mousedown', startDragProgress);
        if (volumeProgress) volumeProgress.addEventListener('click', handleVolumeClick);
        if (volumeDot) volumeDot.addEventListener('mousedown', startDragVolume);
        if (volumeIcon) volumeIcon.addEventListener('click', toggleVolume);
        navButtons.forEach(button => button.addEventListener('click', () => {
            const targetSection = button.dataset.target;
            if (targetSection === currentSection) hideAllSections();
            else if (targetSection) showSection(targetSection);
        }));
        const closeViewBtn = document.querySelector('.close-view');
        if (closeViewBtn) closeViewBtn.addEventListener('click', hideAllSections);
        if (toggleViewBtn) toggleViewBtn.addEventListener('click', toggleContentVisibility);
        window.addEventListener('message', function(event) {
            if (event.data && event.data.type === 'startLoading' && !isClosed) {
                document.body.style.display = 'block';
            } else if (event.data && event.data.type === 'forceClose') {
                closeLoadingScreen();
            }
        });
    }

    function toggleContentVisibility() {
        if (isClosed) return;
        const container = document.querySelector('.container');
        const header = document.querySelector('.header');
        const content = document.querySelector('.content');
        const footer = document.querySelector('.footer');
        const logo = document.querySelector('.logo');
        const navigation = document.querySelector('.navigation');
        if (logo) logo.style.display = logo.style.display === 'none' ? 'flex' : 'none';
        if (navigation) navigation.style.display = navigation.style.display === 'none' ? 'flex' : 'none';
        if (content) content.style.display = content.style.display === 'none' ? 'flex' : 'none';
        if (footer) footer.style.display = footer.style.display === 'none' ? 'flex' : 'none';
    }
});