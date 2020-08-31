var college= new Array();

college['India'] =new Array('LDRP ITR','Nirma Uni.','IIT RAM', 'DA-IICT');


// City lists
var hostel = new Array();

hostel['India'] = new Array();
hostel['India']['LDRP ITR'] = new Array('Block A','Block B','Shivay Hostel','Paradise Hostel','Heaven Hostel');
hostel['India']['Nirma Uni.'] = new Array('KK Modi Hostel','VP Patel Hostel','Vishala Hostel','Patang Hostel','Mariott Hostel');
hostel['India']['IIT RAM'] = new Array('Janahaya Hostel','Yogana Hostel','Apsara Hostel');
hostel['India']['DA-IICT'] = new Array('Agone Hostel','Pleza Hostel','Blizz Hostel');
function setCollege() {
  cntrySel = document.getElementById('country');
  collegelist = college[cntrySel.value];
  changeSelect('college', collegelist, collegelist);
  setHostel();
}

function setHostel() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('college');
  cityList = hostel[cntrySel.value][stateSel.value];
  changeSelect('hostel', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
  setCollege();
});
