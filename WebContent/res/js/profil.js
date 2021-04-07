    

//Change d'onglet 

function switchPage(to) {
    
    switch (to) {

        case 'survival':
            setNewColor(to);
            resetColor("faction");
            resetColor("creative");
            resetColor("game");
            resetColor("cosmetics");
            resetColor("chat");
            showContent("survivalContainer");
            hideContent("factionContainer");
            hideContent("creativeContainer");
            hideContent("gameContainer");
            hideContent("cosmeticsContainer");
            hideContent("chatContainer");
            break;
        
        case 'faction':
            setNewColor(to);
            resetColor("survival");
            resetColor("creative");
            resetColor("game");
            resetColor("cosmetics");
            resetColor("chat");
            showContent("factionContainer");
            hideContent("survivalContainer");
            hideContent("creativeContainer");
            hideContent("gameContainer");
            hideContent("cosmeticsContainer");
            hideContent("chatContainer");
            break;

        case 'creative':
            setNewColor(to);
            resetColor("survival");
            resetColor("faction");
            resetColor("game");
            resetColor("cosmetics");
            resetColor("chat");
            showContent("creativeContainer");
            hideContent("survivalContainer");
            hideContent("factionContainer");
            hideContent("gameContainer");
            hideContent("cosmeticsContainer");
            hideContent("chatContainer");
            break;

        case 'game':
            setNewColor(to);
            resetColor("survival");
            resetColor("faction");
            resetColor("creative");
            resetColor("cosmetics");
            resetColor("chat");
            showContent("gameContainer");
            hideContent("survivalContainer");
            hideContent("factionContainer");
            hideContent("creativeContainer");
            hideContent("cosmeticsContainer");
            hideContent("chatContainer");
            break;
        
        case 'cosmetics':
            setNewColor(to);
            resetColor("survival");
            resetColor("faction");
            resetColor("creative");
            resetColor("game");
            resetColor("chat");
            showContent("cosmeticsContainer");
            hideContent("survivalContainer");
            hideContent("factionContainer");
            hideContent("creativeContainer");
            hideContent("gameContainer");
            hideContent("chatContainer");
            break;

        case 'chat':
            setNewColor(to);
            resetColor("survival");
            resetColor("faction");
            resetColor("creative");
            resetColor("game");
            resetColor("cosmetics");
            showContent("chatContainer");
            hideContent("survivalContainer");
            hideContent("factionContainer");
            hideContent("creativeContainer");
            hideContent("gameContainer");
            hideContent("cosmeticsContainer");
            break;

        case 'options':
            resetColor("survival");
            resetColor("faction");
            resetColor("creative");
            resetColor("game");
            resetColor("cosmetics");
            resetColor("chat");
            break;
        
        default:
            break;
    }
}

//Change l'apparence des bouttons

function setNewColor(to) {

    buttonChoosen = document.getElementById(to);
    buttonChoosen.style.color = "#f0f8ff";
    buttonChoosen.style.backgroundColor = "green";

}

function resetColor(who) {

    otherButton = document.getElementById(who);
    otherButton.style.color = "#212020";
    otherButton.style.backgroundColor = "#f0f8ff";
}


//Affiche et retire les conteneur via le menu

function showContent(selected) {

    containerSelected = document.getElementById(selected);
    containerSelected.style.display = "block";

}

function hideContent(unselected) {

    containerUnselected = document.getElementById(unselected);
    containerUnselected.style.display = "none";

}


// change d'onglets dans le tab mini-jeux

function changeGameTab(selectedTab) {
    switch (selectedTab) {
        case 'pvpKit':
            showContent('pvpKitContainer');
            hideContent('iceFight');
            break;
        
        //case 'iceFight':
            //showContent('iceFight');
           //Change hideContent('pvpKitContainer');
          //  break;

        default:
            break;
    }
}



/*##################################################*/
/*========Les chats de faction et général===========*/
/*##################################################*/


function sendGeneralMessage() {
    
    var generalMessage = document.getElementById("generalMessage").value;

    if(generalMessage == "") {
        showInvalidInputs();
    }
    else{
        return;
    }
    
}


function sendFactionMessage() {

    var factionMessage = document.getElementById("factionMessage").value;
    if(factionMessage == "") {
        showInvalidInputs();
    }
    else {
        return;
    }

}


/*##################################################*/
/*Mise en place des différentes alert box & snackbar*/
/*##################################################*/


function transactionSubmit() {

    var recipient = document.getElementById("recipient");
    var amount = document.getElementById("amount");

    if(recipient.value == "" || amount.value == "") {
        showInvalidInputs();
    }
    else {
        askTransactionConfirmation();
    }

}

function askTransactionConfirmation() {

     var confirmSnackbar = document.getElementById("transactionAsk");
    confirmSnackbar.className = "show";
    setTimeout(function(){ confirmSnackbar.className = confirmSnackbar.className.replace("show", ""); }, 3000);

}

function showInvalidInputs() {

    var invalidSnackbar = document.getElementById("transactionUnchecked");
    invalidSnackbar.className = "show";
    setTimeout(function(){ invalidSnackbar.className = invalidSnackbar.className.replace("show", ""); }, 3000);

}

function showTransactionConfirmation() {

    var validSnackbar = document.getElementById("transactionChecked");
    validSnackbar.className = "show";
    setTimeout(function(){ validSnackbar.className = validSnackbar.className.replace("show", ""); }, 3000);


}

function myFunction() {
    // Get the snackbar DIV
    var x = document.getElementById("snackbar");
  
    // Add the "show" class to DIV
    x.className = "show";
  
    // After 3 seconds, remove the show class from DIV
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
  } 