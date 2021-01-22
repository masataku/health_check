window.addEventListener('load', function () {
  var copyButton = document.getElementById("copyTeacherButton");
  copyButton.addEventListener('click', () => {
    var copyTarget = document.getElementById("copyTeacher");
    copyTarget.select();
    document.execCommand('Copy');
  });
  
  var copyButton = document.getElementById("copyStudentButton");
  copyButton.addEventListener('click', () => {
    var copyTarget = document.getElementById("copyStudent");
    copyTarget.select();
    document.execCommand('Copy');
  });
}); 

// function copyToClipboard() {
//   var copyTarget = document.getElementById("copyTarget");
//   copyTarget.select();
//   document.execCommand("Copy");
// }




// window.addEventListener('load', function () {
//   const priceInput = document.getElementById("item-price");
//   priceInput.addEventListener('input', () =>{
//     const inputValue = priceInput.value;
//     const fee = inputValue / 10;
//     const profit = inputValue - Math.floor(fee);
//     const addTaxDom = document.getElementById("add-tax-price");
//     const profitDom = document.getElementById("profit");
//     addTaxDom.innerHTML = Math.floor(fee);
//     profitDom.innerHTML = Math.floor(profit);
//   });
// });
