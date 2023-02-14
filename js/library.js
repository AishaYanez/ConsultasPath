var xhttp = new XMLHttpRequest();
    function selectQuestion(value) {
            showResult(xhttp.responseXML, value);
    }

// var date = new Date();
// var getYear = date.toLocaleString("default", { year: "numeric" });    
// var getMonth = date.toLocaleString("default", { month: "2-digit" });
// var getDay = date.toLocaleString("default", { day: "2-digit" });
// var now = getYear + "-" + getMonth + "-" + getDay;
// var string1 = "//loan[xs:date(deadline)]>"+now+"]/books/book/title";

arrayPath = ["//title","//book[author='JK Rowling']/title","//book[return_date!='']/title","//loan[loan_date='2023-01-13']/librarian/employee_code","//book[author!='JK Rowling']/title","//user/name","//user/user_code","//loan/books/book[author!='JK Rowling']/../../user/name","//book[return_date='']/title","//book[return_date='']/../../user/name"]
xhttp.open("GET", "../library.xml", true);
xhttp.send(); 

function showResult(xml,value) {
    var txt = "";
    path = arrayPath[value];
    if (xml.evaluate) {
        var nodes = xml.evaluate(path, xml, null, XPathResult.ANY_TYPE, null);
        var result = nodes.iterateNext();
        while (result) {
            txt += result.childNodes[0].nodeValue + "<br>";
            result = nodes.iterateNext();
        } 
    // Code For Internet Explorer
    // } else if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
    //     xml.setProperty("SelectionLanguage", "XPath");
    //     nodes = xml.selectNodes(path);
    //     for (i = 0; i < nodes.length; i++) {
    //         txt += nodes[i].childNodes[0].nodeValue + "<br>";
    //     }
    }
    document.getElementById("contenedor").innerHTML = txt;
}