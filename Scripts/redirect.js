function redirectToPage(controller, page) {
    location.href = '/' + controller + '/' + page;
}

function redirectToLogin() {
    location.href = "/Home/Index";
}

function redirectToMainPage() {
    var currentUrl = window.location.href;
    if (currentUrl.includes("/Student/")) {
        location.href = "/Student/StudentPage";
    }
    else if (currentUrl.includes("/Instructor/")) {
        location.href = "/Instructor/InstructorPage";
    }
}

function login() {

    var ssn = document.getElementById("ssn").value;
    var password = document.getElementById("password").value;

    if (ssn === "" || password === "") {
        alert("Please enter a ssn and password");
        return;
    }

    else if (ssn === "1" && password === "1") {
        location.href = "/Student/StudentPage";
    }

    else if (ssn === "2" && password === "2") {
        location.href = "/Instructor/InstructorPage";
    }

    else {
        alert("Invalid SSN or password. Please check your credentials.");
    }
}



