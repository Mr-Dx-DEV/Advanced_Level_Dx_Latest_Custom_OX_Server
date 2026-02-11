/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './index.html',
    './src/**/*.{vue,js,ts,jsx,tsx}',
    './node_modules/vue-tailwind-datepicker/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        primary: '#25262b',
        primaryAccent: '#2c2e33',
        primaryBlue: '#1971c2',
        primaryBlueSecond: '#1c7ed6',
        'vtd-primary': {
          50: '#f4f5f7',
          100: '#e4e6e9',
          200: '#cbcfd6',
          300: '#a7adb9',
          400: '#7c8494',
          500: '#616979',
          600: '#535867',
          700: '#474a57',
          800: '#25262b',
          900: '#25262b'
        },
        'vtd-secondary': {
          50: '#f4f5f7',
          100: '#e4e6e9',
          200: '#cbcfd6',
          300: '#a7adb9',
          400: '#7c8494',
          500: '#616979',
          600: '#535867',
          700: '#474a57',
          800: '#25262b',
          900: '#25262b'
        }
      }
    }
  },
  plugins: [require('@tailwindcss/forms'), require('@vueform/slider/tailwind')]
}
