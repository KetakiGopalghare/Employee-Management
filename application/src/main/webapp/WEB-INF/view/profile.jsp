<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/jquery-3.5.1.slim.min.js">
    <title>Employee Profile</title>
</head>

<body>

    <div class="container mt-5">
        <div>${message}</div>
        <form action="/updateemployee" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="firstName">First Name</label>
                    <input type="text" name="firstName" class="form-control" value="${message.firstName}" id="fName" placeholder="Enter First Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="lastName">Last Name</label>
                    <input type="text" name="lastName" class="form-control" value="${message.lastName}"  id="lName" placeholder="Enter Last Name">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="salary">Salary</label>
                    <input type="text" name="salary" class="form-control" value="${message.salary}" id="salary" placeholder="Enter Salary">
                </div>
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="email" name="emailId" class="form-control" value="${message.emailId}" id="email" placeholder="Enter Email">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="username">Username</label>
                    <input type="text" name="username" class="form-control" id="username" value="${message.username}" placeholder="Enter Username">
                </div>
                <div class="form-group col-md-6">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" value="${message.password}" id="password"
                        placeholder="Enter Password">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="mobileNo">Mobile Number</label>
                    <input type="text" name="mobileNumber" class="form-control" value="${message.mobileNumber}" id="mobileNo"
                        placeholder="Enter Mobile Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="role">Role : </label>
                    <select name="role" id="Role" value="${message.role}">
                        <option value="${message.role}">${message.role}</option>
                        <option value="Admin">Admin</option>
                        <option value="Employee">Employee</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="department">Department : </label>
                    <select name="department" id="department" value="${message.department}">
                        <option value="${message.department}">${message.department}</option>
                        <option value="IT">IT</option>
                        <option value="AWS">AWS</option>
                        <option value="Networking">Networking</option>
                        <option value="Admin">Admin</option>
                        <option value="Testing">Software Testing</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="gender" style="margin-left: 100px; margin-top: 10px;">Gender</label><br>
                    <select id="gender" name="gender" value="${message.gender}"
                        style="margin-left: 100px;height: 35px;border: none;border-radius: 5px; width: 200px;">
                        <option value="${message.gender}">${message.gender}</option>
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
                    <input type="date" name="birth_date" id="birth_date" value="${message.birth_date}">
                </div>
                <div class="form-group col-md-6">
                    <label for="question">Security Question : </label>
                    <select name="question" id="question" value="${message.question}">
                        <option value="${message.question}">${message.question}</option>
                        <option value="What is your pet name?">What is your pet name?</option>
                        <option value="What is your birth place?">What is your birth place?</option>
                        <option value="What is your mother's name?">What is your mother's name?</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="answer">Security Answer</label><br>
                    <input type="text" name="answer" id="answer" value="${message.answer}" placeholder="Answer">
                </div>
            </div>
            <div class="form-group col-md-6">
                <label for="status">Status : </label>
                <select name="status" id="Status" value="${message.status}">
                    <option value="${message.status}">${message.status}</option>
                    <option value="Select">Select</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                </select>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="employeeId">Employee Id</label>
                    <input type="text" name="employeeId" class="form-control" value="${message.employeeId}" id="employeeId"
                        placeholder="Enter Employee Id">
                </div>
                
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.8/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>