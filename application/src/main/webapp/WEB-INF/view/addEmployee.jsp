



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://code.jquery.com/jquery-3.5.1.slim.min.js">
  <title>Employee Form</title>
</head>
<body>

<div class="container mt-5">
  <form action="/addEmployee" method="post">
    <div class="form-row">
       <div class="form-group col-md-6">
        <label for="firstName">First Name</label>
        <input type="text" name="firstName" class="form-control" id="fName" placeholder="Enter First Name">
      </div>
      <div class="form-group col-md-6">
        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" class="form-control" id="lName" placeholder="Enter Last Name">
      </div>
    </div>
    <div class="form-row">

      
      <div class="form-group col-md-6">
        <label for="salary">Salary</label>
        <input type="text" name="salary" class="form-control" id="salary" placeholder="Enter Salary">
      </div>
     
      <div class="form-group col-md-6">
        <label for="email">Email</label>
        <input type="email" name="emailId" class="form-control" id="email" placeholder="Enter Email">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="username">Username</label>
        <input type="text" name="username" class="form-control" id="username" placeholder="Enter Username">
      </div>
      <div class="form-group col-md-6">
        <label for="password">Password</label>
        <input type="password" name="password" class="form-control" id="password" placeholder="Enter Password">
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="mobileNo">Mobile Number</label>
        <input type="text" name="mobileNumber" class="form-control" id="mobileNo" placeholder="Enter Mobile Number">
      </div>
      <div class="form-group col-md-6">
        <label for="role">Role : </label>
        <select name="role" id="Role">
            <option value="Admin">Admin</option>
            <option value="Employee">Employee</option>
        </select>
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="department">Department : </label>
        <select name="department" id="department">
            <option value="IT">IT</option>
            <option value="AWS">AWS</option>
            <option value="Networking">Networking</option>
            <option value="Admin">Admin</option>
            <option value="Testing">Software Testing</option>
        </select>
      </div>
      <div class="form-group col-md-6">
        <label for="gender" style="margin-left: 100px; margin-top: 10px;">Gender</label><br>
        <select id="gender" name="gender" style="margin-left: 100px;height: 35px;border: none;border-radius: 5px; width: 200px;"> 
          <option value="SELECT">Select</option>
                <option value="male">Male</option> 
                <option value="female">Female</option> 
                <option value="other">Other</option> 
        </select>
      </div>
    </div>
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="birth_date">Date of birth</label><br>
    <input type="date" name="birth_date" id="birth_date">
    </div>
    <div class="form-group col-md-6">
      <label for="question">Security Question : </label>
        <select name="question" id="question">
            <option value="What is your pet name?">What is your pet name?</option>
            <option value="What is your birth place?">What is your birth place?</option>
            <option value="What is your mother's name?">What is your mother's name?</option>
        </select>
    </div>
      </div>
      <div class="form-row">
        <div class="form-group col-md-6">
            <label for="answer">Security Answer</label><br>
        <input type="text" name="answer" id="answer" placeholder="Answer">
        </div>
        <div>
          ${msg}
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
