// we select 3 inputs : the one we see + 2 hidden
// connected with the 2 forms elements
const walletInput = document.querySelector('#wallet-money');
const inputDeposit = document.querySelector('#user_wallet_deposit')
const inputWithdraw = document.querySelector('#user_wallet_withdraw')

// each time we change the visible input
// we update the hidden inputs
// to send the correct data to the correct method
// in the user controller
walletInput.addEventListener("blur", (e) => {
  inputWithdraw.value = e.target.value
  inputDeposit.value = e.target.value
})
