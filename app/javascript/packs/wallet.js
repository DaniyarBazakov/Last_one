
const deposit = () => {
  const inputAmount = document.getElementById("depositamount");
  document.getElementById("mydeposit").addEventListener("click", (event) => {
  inputElement.value = parseInt(inputElement.value) +1;

}


const withdraw = () => {
  const inputAmount = document.getElementById("withdrawalamount");
  document.getElementById("mywithdrawal").addEventListener("click", (event) => {
  inputElement.value = parseInt(inputElement.value) -1;
}

const increase = () => {
  const inputElement = document.getElementById("consumption_daily_actual_consumption");
  document.getElementById("counter+").addEventListener("click", (event) => {
    inputElement.value = parseInt(inputElement.value) +1;
  });
};
increase();

const decrease = () => {
  const inputElement = document.getElementById("consumption_daily_actual_consumption");
  document.getElementById("counter-").addEventListener("click", (event) => {
  inputElement.value = parseInt(inputElement.value) -1;
  });
};
decrease();



