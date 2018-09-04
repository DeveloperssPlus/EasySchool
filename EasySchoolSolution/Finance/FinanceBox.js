function changelbl() {

    if (document.getElementById("iconchange").className == "glyphicon glyphicon-pencil") {
        document.getElementById("DDLCommission1").style.display = 'block';
        document.getElementById("lblCommission1").style.display = 'none';
        document.getElementById("iconchange").className = "glyphicon glyphicon-ok";
    }
    else {

        document.getElementById("lblCommission1").style.display = 'block';
        document.getElementById("DDLCommission1").style.display = 'none';
        var textt = document.getElementById("DDLCommission1");
        var selectedText = textt.options[textt.selectedIndex].text;
        document.getElementById("lblCommission1").innerText = selectedText;
        document.getElementById("iconchange").className = "glyphicon glyphicon-pencil";
    }
}


function changelbl1() {

    if (document.getElementById("iconchange1").className == "glyphicon glyphicon-pencil") {
        document.getElementById("DDLCommission2").style.display = 'block';
        document.getElementById("lblCommission2").style.display = 'none';
        document.getElementById("iconchange1").className = "glyphicon glyphicon-ok";
    }
    else {

        document.getElementById("lblCommission2").style.display = 'block';
        document.getElementById("DDLCommission2").style.display = 'none';
        var textt = document.getElementById("DDLCommission2");
        var selectedText = textt.options[textt.selectedIndex].text;
        document.getElementById("lblCommission2").innerText = selectedText;
        document.getElementById("iconchange1").className = "glyphicon glyphicon-pencil";
    }
}


function changelbl2() {

    if (document.getElementById("iconchange2").className == "glyphicon glyphicon-pencil") {
        document.getElementById("DDLCommission3").style.display = 'block';
        document.getElementById("lblCommission3").style.display = 'none';
        document.getElementById("iconchange2").className = "glyphicon glyphicon-ok";
    }
    else {

        document.getElementById("lblCommission3").style.display = 'block';
        document.getElementById("DDLCommission3").style.display = 'none';
        var textt = document.getElementById("DDLCommission3");
        var selectedText = textt.options[textt.selectedIndex].text;
        document.getElementById("lblCommission3").innerText = selectedText;
        document.getElementById("iconchange2").className = "glyphicon glyphicon-pencil";
    }
}

