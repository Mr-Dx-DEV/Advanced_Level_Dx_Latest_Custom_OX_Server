let audio = new Audio();
var request = new XMLHttpRequest();
var count = 0;


function Main(){
    
    return{

        DiscordInviteLink: 'https://discord.gg/rivercoast',
        YoutubeLink: 'https://www.youtube.com/',
        TwitterLink: 'https://twitter.com/',
        musicAutoplay: true,
        musicVolume: 0.2, // 0 = 0% ; 0.5 = 50% ; 1 = 100%
        musicList: [
            {label: 'KROVIMAS', author: 'MP3', src: 'audio/music1.mp3'},
        ],
        buttons:[
            {label: 'PRADŽIA', selected: true},
        ],
        team:[
            {discord: 'jezz#5868', role: 'Designer', img: 'img/member.png'},
            {discord: 'jezz#5868', role: 'Developer', img: 'img/member1.png'},
            {discord: 'jezz#5868', role: 'Designer', img: 'img/member2.png'},
            {discord: 'jezz#5868', role: 'Developer', img: 'img/member3.png'},
            {discord: 'jezz#5868', role: 'Designer', img: 'img/member1.png'},
        ],
        isMusicPlaying: false,
        musicOpen: false,
        currentSong: 0,
        listen(){
            if(this.musicAutoplay){
                setTimeout(() => { this.play();}, 100);
            }
            request.open('GET', 'https://discordapp.com/api/guilds/'+this.DiscordGuildId+'/widget.json', true);
            request.onload = function() {
            if (request.status >= 200 && request.status < 400) {
                var data = JSON.parse(request.responseText);
                count = data.presence_count;
            }
            };    
            request.onerror = function() {
            };
            request.send();   
            setTimeout(() => { this.memberCount = count; }, 1000);
        },
        selectBtn(select){
            this.buttons.forEach(function(button){
                button.selected = false;
            });
            return true;
        },
        play(){
            audio.src = this.musicList[this.currentSong].src;
            audio.load();
            audio.play();
            audio.volume = this.musicVolume;
            this.isMusicPlaying = true;
        },
        pause(){
            audio.pause()
            this.isMusicPlaying = false;
        },
        next(){
            if(this.isMusicPlaying){
                audio.pause()
            }
            if(this.currentSong < this.musicList.length-1){
                this.currentSong++;
            }else{
                this.currentSong = 0;
            }
            audio.src = this.musicList[this.currentSong].src;
            audio.load();
            audio.play();
            this.isMusicPlaying = true;
        },
        prev(){
            if(this.isMusicPlaying){
                audio.pause()
            }
            if(this.currentSong != 0){
                this.currentSong = this.currentSong-1;
            }else{
                this.currentSong = this.musicList.length-1;
            }
            audio.src = this.musicList[this.currentSong].src;
            audio.load();
            audio.play();
            this.isMusicPlaying = true;
        },
    }
}