
const increase = () => {
  const inputElement = document.getElementById("consumption_daily_actual_consumption");
  
  document.getElementById("counter+").addEventListener("click", (event) => {
    inputElement.value = parseInt(inputElement.value) +1;
  });
};
export {increase};

const decrease = () => {
  const inputElement = document.getElementById("consumption_daily_actual_consumption");
  document.getElementById("counter-").addEventListener("click", (event) => {
  inputElement.value = parseInt(inputElement.value) -1;
  });
};
export {decrease};



 