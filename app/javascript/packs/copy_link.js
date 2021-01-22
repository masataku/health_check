window.addEventListener('load', () => {
  var copyTeacherButton = document.getElementById("copyTeacherButton");
  copyTeacherButton.addEventListener('click', () => {
    var copyedT = document.getElementById("copyedT");
    if(copyedT.classList.contains('copyed') == true){
      copyedT.removeAttribute('class','copyed');
    } 
    var copyTarget = document.getElementById("copyTeacher");
    copyTarget.select();
    document.execCommand('Copy');
    copyedT.setAttribute('class', 'copyed');
  });
  
  var copyStudentButton = document.getElementById("copyStudentButton");
  copyStudentButton.addEventListener('click', () => {
    var copyedS = document.getElementById("copyedS");
    if(copyedS.classList.contains('copyed') == true){
      copyedS.removeAttribute('class','copyed');
    } 
    var copyTarget = document.getElementById("copyStudent");
    copyTarget.select();
    document.execCommand('Copy');
    copyedS.setAttribute('class', 'copyed');
  });
}); 
