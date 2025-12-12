export const isEnvBrowser = () => !window.invokeNative;

// Basic no operation function
export const noop = () => {};

export const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
    maximumFractionDigits: 0
});
