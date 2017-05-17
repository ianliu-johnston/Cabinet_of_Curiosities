document.addEventListener("DOMContentLoaded", function(event){
  //For tabs to change the API tool:
      //Tab variables:
  var quoteTab = document.getElementById("quote");
  var weatherTab = document.getElementById("weather");
  var wikipediaTab = document.getElementById("wikipedia");
  var twitchTab = document.getElementById("twitch");
      //tabs for dropdown menu
  var roman = document.getElementById("romanNumerals");
  var calculatorTab = document.getElementById("calculatorTab");
      //Tool variables:
  var quoteTool = document.getElementById("quoteMachine");
  var weatherTool = document.getElementById("localweather");
  var wikipediaTool = document.getElementById("wikipediaAPI");
  var twitchTool = document.getElementById("twitchAPI");
  var romanTool = document.getElementById("romanNumTool");
  var calcTool = document.getElementById("calculatorTool");

      //Tab and Tool Arrays:
  var itemsList=[ quoteTab, weatherTab, wikipediaTab, twitchTab, roman, calculatorTab ];
  var toolsList=[ quoteTool, weatherTool, wikipediaTool, twitchTool, romanTool, calcTool ];
      //Function to show the Tabs and Tools simultaneously:
function showTool(tabName, divName){
  tabName.className = "active"; //changes the active tab highlight
  divName.className = ""; //removes ".hidden" class from appropriate tool.
  document.getElementById("description").className = "hidden";
  for (var i = 0; i < itemsList.length; i++){
    if (itemsList[i] != tabName){ //loop that turns off non-selected
      itemsList[i].className=""; // highlights
      toolsList[i].className = "hidden";  //and adds ".hidden" class.
    } //end if
  }//end for
} //end showTool()


  document.getElementById("randomTool").addEventListener("click", function(){
    var randy = Math.floor(Math.random()*itemsList.length);
    showTool(itemsList[randy],toolsList[randy]);
  });

  //event listeners for each tab.
  //Do I need 4 separate, or can I create them in a loop?
  itemsList[0].addEventListener("click", function(){ //Quote machine
    showTool(itemsList[0],toolsList[0]);
  });
  itemsList[1].addEventListener("click", function(){ //Local Weather
    showTool(itemsList[1],toolsList[1]);
  });
  itemsList[2].addEventListener("click", function(){ //Wikipedia Viewer
    showTool(itemsList[2],toolsList[2]);
  });
  itemsList[3].addEventListener("click", function(){ //Twitch API
    showTool(itemsList[3],toolsList[3]);
  });
  itemsList[4].addEventListener("click", function(){ //Roman Numeral converter
    showTool(itemsList[4],toolsList[4]);
  });
  itemsList[5].addEventListener("click", function(){ //Calculator
    showTool(itemsList[5],toolsList[5]);
    document.getElementById("mainContent").removeAttribute("background", "height", "border-radius");
  });
   //////API TOOLS:\\\\\\
  //RANDOM QUOTE MACHINE\\
  var quote = document.getElementById("theQuote"); //id corresponds to <h1>
  var newQuote = document.getElementById("quoteButton"); //id corresponds to <button>
  document.addEventListener('DOMContentLoaded', quoteAPI(), false); //loads on document ready
  newQuote.addEventListener("click", function(){ //function runs when button is clicked.
    quoteAPI();
  });

    function quoteAPI(){
    $.getJSON("http:///Resources/Tools/jokes", function(a){
      var randy = Math.floor(Math.random()*a.value.length);
      var obj = a.value[randy].joke;
      quote.innerHTML = obj;

      var repobj = obj.replace( /\"/g, "\\\"").replace(/\'/g, "\\\'");
      var urlobj = encodeURI(repobj.substring(0,137));
  //    document.getElementById("tweet").innerHTML = urlobj;

      if (obj.length >= 137){
              document.getElementById("tweet").href = "http://twitter.com/intent/tweet?text=" + urlobj + "...&source=webclient";
      } else {
        document.getElementById("tweet").href = "http://twitter.com/intent/tweet?text=" + obj + "&source=webclient";
      }
      });

    }

/////Roman Numeral Converter\\\\\\\
document.getElementById("romanButton").addEventListener('click', function(){
  var romanTextboxValue = document.getElementById("txt1").value;
  if(!isNaN(romanTextboxValue) && parseInt(Number(romanTextboxValue)) == romanTextboxValue && !isNaN(parseInt(romanTextboxValue, 10))){
    convertToRoman(romanTextboxValue);
  } else {
    document.getElementById("romanOutput").innerHTML = "Invalid input";
  }

});
function convertToRoman(num) {
//Function truncates result. Any additional digits beyond 4 are discarded.
  var numerals = [
    ["","I","II","III","IV","V","VI","VII","VIII","IX"],
    ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"],
    ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"],
    ["","M", "MM", "MMM","MMM-V-","-V-", "-V-M","-V-MM","-V-MMM" ,"M-X-"]
  ];
  var digits = num.toString().split('').reverse();
  var romanNumerals = [];
  //handling more than 4 digits.
  if(digits.length > 4) { digits = digits.splice(3, digits.length); }
  for (var i = 0; i < digits.length; i++) { romanNumerals.unshift(numerals[i][digits[i]]); }
  document.getElementById("romanOutput").innerHTML = romanNumerals.join('');
}
/////////////////////Calculator\\\\\\\\\\\\\\\\\\\\\\\\\
var calculateOutput = document.getElementById("calcOutput"),
outputArr = [], //This is the array that is displayed when buttons are pushed.
dotBool = false, //switch to prevent multiple decimal points
operatorBool = false; //switch to prevent multiple operators.
//  var plusMinusSwitch = 0;
calculateOutput.innerHTML = "0"; //Displays a zero on page load.
//function to eliminate redundancy.
function addToArr(str){ outputArr.push(str); calculateOutput.innerHTML = outputArr.join('');}
//functions to add values and display the number added.
function zero(){ addToArr("0"); };
function one(){ addToArr("1"); };
function two(){ addToArr("2"); };
function three(){ addToArr("3"); };
function four(){ addToArr("4"); };
function five(){ addToArr("5"); };
function six(){ addToArr("6"); };
function seven(){ addToArr("7"); };
function eight(){ addToArr("8"); };
function nine(){ addToArr("9"); };
function multip(){ addToArr("*"); dotBool = false; operatorBool = true; //plusMinusSwitch = 0;
                 }
function divided(){ addToArr("/"); dotBool = false; operatorBool = true; //plusMinusSwitch = 0;
                  }
function addition(){ addToArr("+"); dotBool = false; operatorBool = true; //plusMinusSwitch = 0;
                   }
function subtract(){ addToArr("-"); dotBool = false; operatorBool = true; //plusMinusSwitch = 0;
                   }
function modulus(){ addToArr("%"); dotBool = false; operatorBool = true; //plusMinusSwitch = 0;
                  }
function decimal(){ addToArr("."); dotBool = true; };
//functions to modify outputArr[]
function backspace(){ outputArr.pop(outputArr.length); calculateOutput.innerHTML = outputArr.join(''); }
function clearScreen(){ outputArr = []; calculateOutput.innerHTML = "0"; dotBool = false; operatorBool = false; }
//listens for any click event. If one is detected and the outputArr is empty, display a zero.
//also checks to see if the +- button has been clicked.
document.addEventListener("click", function(){
  if(outputArr.length === 0) {
    calculateOutput.innerHTML = "0";
  }
//  if(plusMinusSwitch % 2 !== 0){
//    calculateOutput.innerHTML += "<div style=\"float: left; \">-</div>"
//  }
});
//keybindings. Accepts numbers 0-9 but not operator signs.
document.addEventListener("keydown", function(event){
switch(event.keyCode){
case 48: zero(); break;
case 49: one(); break;
case 50: two(); break;
case 51: three(); break;
case 52: four(); break;
case 53: five(); break;
case 54: six(); break;
case 55: seven(); break;
case 56: eight(); break;
case 57: nine(); break;
}
});
// The following is the buttons by row, top to bottom, left to right:
//top row:
document.getElementById("clr").addEventListener("click", function(){ clearScreen(); }); //clear everything.
document.getElementById("del").addEventListener("click", function(){ backspace(); }); //delete last entry.
//Add a decimal point if there is not one in the number already.
document.getElementById("mod").addEventListener("click",function(){ if(operatorBool == false){ modulus();} else{ doCalculation(); modulus(); } });
document.getElementById("divide").addEventListener("click",function(){ if(operatorBool == false){ divided(); } else { doCalculation(); divided(); } });
// second row:
document.getElementById("no7").addEventListener("click", function(){ seven(); });
document.getElementById("no8").addEventListener("click", function(){ eight(); });
document.getElementById("no9").addEventListener("click", function(){ nine(); });
document.getElementById("times").addEventListener("click",function(){ if(operatorBool == false){ multip();} else{ doCalculation();  multip();} });
//third row
document.getElementById("no4").addEventListener("click", function(){ four(); });
document.getElementById("no5").addEventListener("click", function(){ five(); });
document.getElementById("no6").addEventListener("click", function(){ six(); });
document.getElementById("minus").addEventListener("click", function(){ if(operatorBool == false){ subtract(); } else{ doCalculation();  subtract();} });
//fourth row
document.getElementById("no1").addEventListener("click", function(){ one(); });
document.getElementById("no2").addEventListener("click", function(){ two(); });
document.getElementById("no3").addEventListener("click", function(){ three(); });
document.getElementById("plus").addEventListener("click", function(){ if(operatorBool == false){ addition(); } else{ doCalculation(); addition();} });

//bottom row
document.getElementById("dot").addEventListener("click", function(){ if(dotBool == false) { decimal(); } });
document.getElementById("no0").addEventListener("click", function(){ zero() });
//   document.getElementById("plusMinus").addEventListener("click", function(){ plusMinusSwitch +=1; });
document.getElementById("plusMinus").addEventListener("click", function(){ doCalculation });
//Equals sign does the calculation and displays the result.
document.getElementById("equ").addEventListener("click",function(){ doCalculation(); });

function doCalculation(){
var result = 0,
  newArr = [],
  values = [],
  operator = "";
for(var i = 0; i<outputArr.length;i++){
  if(parseInt(outputArr[i]) >= 0 || outputArr[i] == "."){
newArr.push(outputArr[i]);
  } else if("*" == outputArr[i] || "/" == outputArr[i] || "+" == outputArr[i] || "-" == outputArr[i] || "%" == outputArr[i]){
values.push(newArr.join(''));
operator = outputArr[i];
newArr = [];
  }
}
values.push(newArr.join(''));
var num1 = parseFloat(values[0]),
  num2 = parseFloat(values[1]);
    if(operator == "*"){ result = num1 * num2; }
else if(operator == "/"){ result = num1 / num2; }
else if(operator == "+"){ result = num1 + num2; }
else if(operator == "-"){ result = num1 - num2; }
else if(operator == "%"){ result = num1 % num2; }
else{ result = values.join('');	}
calculateOutput.innerHTML = outputArr.join('') + "=" + result; //display equasion + result. ex: 1+1=2
outputArr = []; //reset outputArr
outputArr.push(result); //adds the last returned result as the first element of the next array.
operatorBool = false; //reset operatorBool
//  plusMinusSwitch = 0; //reset plusMinusSwitch
}
////////////END CALCULATOR\\\\\\\\\\\\\\\\\\\\\\\
////////////START WIKIPEDIA\\\\\\\\\\\\\\\\\\\\\\\
var searchOffset = 0;
  //gets user values
    var getUserIn = function() {
        return document.getElementById("userSearch").value.trim();
  };
    var prevUserIn = getUserIn;
      var count = 0;
        var $htmlbody = $("html, body");
  var $window = $(window);
    var wikiResults = document.getElementById("wikipediaContent");
      $("#toTop").click(function() {
          $("html, body").animate({
        scrollTop: 0
    }, "slow");
        return false;
  });

    function findWikiPage() { //Main Function
        var usin = getUserIn();
    $.ajax({
          url: 'https://crossorigin.me/https://en.wikipedia.org/w/api.php',
        data: {
        action: 'query',
        list: 'search',
        srsearch: usin,
        srprop: 'snippet',
        srlimit: 15,
        sroffset: searchOffset,
        format: 'json'
      },
            datatype: 'jsonp',
          success: function(x) {
          wikiResults.innerHTML += "<br>Results: " + (searchOffset + 1) + " / " + x.query.searchinfo.totalhits;
          var searchResults = x.query.search;
          for (var i = 0; i < searchResults.length; i++) {
            wikiResults.innerHTML += "<div class=\"resultSegments\"> <h3>" + searchResults[i].title + "</h3> " + searchResults[i].snippet + "<p><a href=\"http://en.wikipedia.org/wiki/" + searchResults[i].title + "\" target=\"_blank\">Visit the whole page on Wikipedia.org.</a></p></div>";
              count++;
              }
              wikiResults.innerHTML += "<p id=\"a" + count + "\"></p><button class=\"btn btn-primary getMoreResults\" ><h3>Load More?</h3></button>";
              var moreResults = document.getElementsByClassName('getMoreResults');
              for (var i = 0; i < moreResults.length; i++) {
                moreResults[i].addEventListener("click", function() {
            searchOffset += 15;
                findWikiPage();
          });
          }
        }
    });
        if (count > 1) {
      var whereTo = $("#a" + count).position().top;
            $htmlbody.animate({
            scrollTop: whereTo
          }, "slow");
      }
        } //END Main Function

  document.getElementById("searchPressed").addEventListener("click", function() {
      if (prevUserIn == getUserIn) {
            wikiResults.innerHTML = ""; //resets
          searchOffset = 0; //reset
        findWikiPage();
    } else {
          findWikiPage();
      }
        }); //Captures Search Icon Clicks.
  document.getElementById("userSearch").addEventListener("keydown", function(n) {
      if (n.keyCode == 13) {
            if (prevUserIn == getUserIn) {
            wikiResults.innerHTML = ""; //reset
            searchOffset = 0; //reset
            findWikiPage();
          } else {
          findWikiPage();
        }
    }
      }); //Captures "Enter" Key.
}); //END of Document

