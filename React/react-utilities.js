// Utility function to check if a value is empty
export const isEmpty = (value) => {
    return value === undefined || value === null || value === '';
};

// Utility function to capitalize the first letter of a string
export const capitalize = (str) => {
    return str.charAt(0).toUpperCase() + str.slice(1);
};

// Utility function to generate a unique key for React components
export const generateKey = () => {
    return Math.random().toString(36).substr(2, 9);
};

// Utility function to debounce a function call
export const debounce = (func, delay) => {
    let timer;
    return function (...args) {
        clearTimeout(timer);
        timer = setTimeout(() => func.apply(this, args), delay);
    };
};