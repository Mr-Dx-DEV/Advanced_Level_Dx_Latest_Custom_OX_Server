return {

    useScheduledWeather = true, -- Do you want txAdmin to schedule custom rain and thunder near restart?
    serverDuration = 14, -- How many hours will the server run before restarting?, if a server restarts every 8 hours put this to 9 etc.
    weatherCycletimer = 30, -- How many minutes between weather changes

    timeBetweenRain = 180, -- How many minutes between rain events
    rainAfterRestart = 60, -- How many minutes AFTER a server restart before rain will start to show?

    decemberSnow = false, -- if turned on means that only snow will happen in december

    useStaticWeather = false,
    staticWeather = {
        ['BLIZZARD'] = 0.0, --0% chance
        ['CLEAR'] = 0.4, -- 10% chance
        ['CLEARING'] = 0.3, -- 10% chance
        ['CLOUDS'] = 0.2, -- 10% chance
        ['EXTRASUNNY'] = 0.4, -- 40% chance
        ['FOGGY'] = 0.05,
        ['OVERCAST'] = 0.1,
        ['RAIN'] = 0.02,
        ['SMOG'] = 0.1,
        ['SNOW'] = 0.0,
        ['SNOWLIGHT'] = 0.0,
        ['THUNDER'] = 0.01
       -- ['XMAS'] = 0.0
    },

    useWeatherSequences = true,

    weatherSequences = {

        { -- Sunny
            probability = 0.5, -- 50%
            events = {
                {
                    weather = 'SMOG',
                    time = math.random(3, 10), -- Minutes
                    windSpeed = 0.05,
                },
                {
                    weather = 'CLEAR',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(3, 10), -- Minutes
                    windSpeed = 0.05,
                }
            },
        },

        { -- Sunny
            probability = 0.4, -- 40%
            events = {
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(15, 20), -- Minutes
                    windSpeed = 0.05,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(10, 20), -- Minutes
                    windSpeed = 0.05,
                },
                {
                    weather = 'CLEAR',
                    time = math.random(10, 20), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(10, 20), -- Minutes
                    windSpeed = 0.05,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(15, 20), -- Minutes
                    windSpeed = 0.05,
                },
            },
        },

        { -- cloudy
            probability = 0.08, -- 8%
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(5, 10),
                    windSpeed = 0.1,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 10),
                    windSpeed = 0.05,
                }
            },
        },

        { -- snowing
            probability = 0.01, -- 1%
            month = 12, -- What month can there be snow?
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.0,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'SNOW',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.3,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'OVERCAST',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.0,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.0,
                },
            },
        },

        { -- rainshower
            probability = 0.01, -- 3%
            windDirection = 240.0, -- Storms come from the south
            events = {
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'OVERCAST',
                    time = math.random(1, 2), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(1, 5), -- Minutes
                    windSpeed = 2.0,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(5, 10),
                    windSpeed = 0.0,
                },
            },
        },

        { -- bigstorm
            windDirection = 180.0, -- Storms come from the south
            probability = 0.01, -- 1%
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(1, 2),
                    windSpeed = 4.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(1, 5),
                    windSpeed = 8.0,
                },
                {
                    weather = 'THUNDER',
                    time = math.random(1, 3),
                    windSpeed = 12.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(1, 3),
                    windSpeed = 12.0,
                },
                {
                    weather = 'THUNDER',
                    time = math.random(1, 3),
                    windSpeed = 12.0,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(3, 7),
                    windSpeed = 3.0,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(3, 7),
                    windSpeed = 0.0,
                },
            },
        },
    }
}





