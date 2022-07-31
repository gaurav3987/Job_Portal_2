<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC Jobs Pte Ltd</title>
                <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

        <style>
          .form-label {
            font-family: 'Verdana', 'Georgia', 'Calibri';
            font-size: 18px;
            font-weight: 100px;
          }

          #btn {
            margin-left: auto;
            margin-right: auto;
            display: flex;
          }

          #email_inst {
            font-size: 12px;
            line-height: 50%;
          }

          #comma {
            font-size: 19px;
          }

          .errors {
            color: red;
          }
          
          body {
          background: -webkit-linear-gradient(left, #7579ff, #b224ef);
          }
        </style>

      </head>

      <body>
        <sf:form action="/sendEmails" method="post" modelAttribute="emails">

          <div class="container" style="margin-top: 25px;">
            <div class="col-md-12">
              <div class="container" style="background-color: #f8f9fa; padding: 20px; border-radius: 25px;">

                <div class="form-group" style="display:none;">
                  <label for="emailId" class="form-label">Mail Id</label>
                  <sf:input path="emailId" name="email_Id" id="emailId" class="form-control"
                    placeholder="Write Email Id" />
                  <sf:errors path="emailId" class="errors"></sf:errors>
                </div>
                <br>
                <div class="form-group">
                  <label for="reciever_emails" class="form-label">Recipient's Email</label>
                  <p class="text-muted" id="email_inst">Use(<span id="comma">,</span>) to seprate mail ids without
                    spaces</p>
                  <sf:input path="reciever_emails" type="text" name="email" id="email" class="form-control"
                    placeholder="Enter Email" />
                  <sf:errors path="reciever_emails" class="errors"></sf:errors>
                </div>
                <br>
                <div class="form-group">
                  <label for="subject" class="form-label">Subject of mail</label>
                  <sf:input path="subject" type="text" name="subject" id="subject" class="form-control"
                    placeholder="Enter Subject" />
                  <sf:errors path="subject" class="errors"></sf:errors>
                </div>

                <br>

                <div class="form-group">
                  <label for="content" class="form-label">Content of Mail</label><br>
                  <sf:textarea path="content" name="content" id="content" class="form-control" rows="5"
                    placeholder="Enter the content of the mail"></sf:textarea>
                  <sf:errors path="content" class="errors"></sf:errors>
                </div>

                <br>

                <div class="form-group" id="btn">
                  <input type="submit" value="Send Email" class="btn btn-primary" style="--bs-btn-color: #fff;
    --bs-btn-bg: #8614f7;
    --bs-btn-border-color: #9326ff;
    --bs-btn-hover-color: #fff;
    --bs-btn-hover-bg: #9326ff;
    --bs-btn-hover-border-color: #9326ff;
    --bs-btn-focus-shadow-rgb: 49,132,253;
    --bs-btn-active-color: #fff;
    --bs-btn-active-bg: #9326ff;
    --bs-btn-active-border-color: #9326ff;
    --bs-btn-active-shadow: inset 0 3px 5pxrgba(0, 0, 0, 0.125);
    --bs-btn-disabled-color: #fff;
    --bs-btn-disabled-bg: #9326ff;
    --bs-btn-disabled-border-color: #9326ff;" id="btn" onclick="alert()">
                </div>
              </div>
            </div>
          </div>
        </sf:form>


      </body>
      </html>