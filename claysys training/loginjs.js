document.addEventListener("DOMContentLoaded", function() {
  var loginButton = document.getElementById("loginButton");
  loginButton.addEventListener("click", function(event) {
    event.preventDefault(); // Prevent form submission

    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Perform validation
    if (username === "" || password === "") {
      alert("Please enter both username and password.");
      return;
    }

    // Validation passed
    alert("Welcome, " + username + "! You are now logged in.");
    window.location.href = "finalpage.html";
  });
});
