document.write('<script src="page.js"></script>');
function writeTable(r, c){
  var i, j;
  for(i = 0; i < r; i++){
    var num = document.getElementById("mapTable").rows.length;
    var Tr = document.getElementById("mapTable").insertRow(num);
    for(j = 0; j < c; j++){
      var Td = Tr.insertCell(Tr.cells.length);
      if(i == 0 && j == 18)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">新北市(北區)</a>';
      else if(i == 1 && j == 18)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">台北市(陽明山)</a>';
      else if(i == 1 && j == 19)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">台北市</a>';
      else if(i == 1 && j == 21)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">基隆市(含新北市東區)</a>';
      else if(i == 3 && j == 15)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">桃園市</a>';
      else if(i == 3 && j == 18)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">新北市(南區)</a>';
      else if(i == 3 && j == 21)
        Td.innerHTML='<a href="#" class="highLight" style="color:red; text-decoration:none">宜蘭縣(北區)</a>';
      else
        Td.innerHTML="1";
    }
  }
}

writeTable(45, 34);