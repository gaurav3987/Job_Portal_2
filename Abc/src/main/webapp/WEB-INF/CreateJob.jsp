<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>ABC Jobs Pte Ltd</title>
            <!-- CSS only -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                crossorigin="anonymous">
            <!-- JavaScript Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                crossorigin="anonymous"></script>
            <link rel="stylesheet" href="/resources/CSS/nav_cretejob.css">
            <link rel="shortcut icon" href="/resources/Images/logo_u2.png" type="image/x-icon">
            <style>
                .text-muted {
                    font-size: 14px;
                }

                @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');

                * {
                    margin: 0;
                    padding: 0;
                    outline: none;
                    box-sizing: border-box;
                    font-family: 'Poppins', sans-serif;
                    margin-top: 6px;                
                }
                body {
                        background: linear-gradient(-135deg, #c850c0, #4158d0);
                }
                
            </style>
        </head>

        <body>

            <body>
                <div class="container" style=" max-width: 720px;
                                               left: 50%;
                                               right: 50%;
                                               background-color: white;
                                               display: flex;
                                               justify-content: center;
                                               height: 690px;
                                               margin-top: 54px;
                                               margin-left: 334px;
                                               border-radius: 20px;">
                    <div class="col-md-8">
                        <sf:form action="submitJob" method="post" modelAttribute="jobData">
                            <div class="form-group">
                                <label for="author_name" class="form-label">Name</label>
                                <sf:input type="text" name="author" class="form-control" id="name"
                                    path="author" />
                                <sf:errors path="author" class="errors"></sf:errors>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <sf:input type="email" name="email" id="email" class="form-control" path="email"
                                    />
                                <sf:errors path="email" class="errors"></sf:errors>
                            </div>
                            <div class="form-group">
                                <label for="company">Company</label>
                                <sf:input type="text" name="company" id="company" class="form-control" path="company" />
                                <sf:errors path="company" class="errors"></sf:errors>
                            </div>
                            <div class="form-group">
                                <label for="salary">Salary<span class="text-muted">(In Indian Rupee)</span></label>
                                <sf:input name="salary" id="salary" class="form-control" placeholder="in Rupees"
                                    path="salary" />
                                <sf:errors path="salary" class="errors"></sf:errors>
                            </div>
                            <div class="form-group">
                                <label for="time">Working Hours</label>
                                <sf:input type="number" name="working_hours" id="working_hours" class="form-control"
                                    path="working_hours" />
                                <sf:errors path="working_hours" class="errors"></sf:errors>
                            </div>

                            <div class="form-group" id="old_job_title">
                                <label for="job_Title">Job Title</label>

                                <sf:select class="form-control" path="job_Title">
                                    <sf:option class="text-muted" path="job_Title" value="job_Title">--Select Job
                                        Title--</sf:option>
                                    <sf:option path="job_Title" value="Software Engineer">Software Engineer</sf:option>
                                    <sf:option path="job_Title" value="Data Anaylst">Data Anaylst</sf:option>
                                    <sf:option path="job_Title" value="Frontend Develope">Frontend Developer</sf:option>
                                    <sf:option path="job_Title" value="Back end Developer">Back end Developer
                                    </sf:option>
                                    <sf:option path="job_Title" value="Java Developer">Java Developer</sf:option>
                                    <sf:option path="job_Title" value="Full Stack Web Developer">Full Stack Web
                                        Developer</sf:option>
                                    <sf:option id="other" onclick="change()" path="job_Title" value="job_Title">Any
                                        Others</sf:option>
                                </sf:select>
                                <sf:errors path="job_Title" class="errors"></sf:errors>
                            </div><a></a>
                            <div class="form-group">
                                <label for="details">Job Details</label><br>
                                <textarea name="details" id="details" cols="98" rows="5"
                                    path="details" class="form-control"></textarea>
                                <sf:errors path="details" class="errors"></sf:errors>
                            </div>

                            <div class="form-group" id="post_btn">
                                <input type="submit" value="Post Job" class="btn btn-primary" id="post" style="--bs-btn-color: #fff;
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
    --bs-btn-disabled-border-color: #9326ff;">
                            </div>

                        </sf:form>

                    </div>

                </div>

                <div style="visibility: hidden;">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias impedit cumque eligendi
                        provident
                        accusamus. Ut rerum delectus eveniet impedit consequatur fugit dignissimos et deserunt nam
                        beatae totam
                        culpa, excepturi <suscipit class="lore">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Dolore
                            fugit iure libero pariatur incidunt sunt architecto sint quis vitae, eius consectetur a
                            impedit
                            aspernatur magnam obcaecati culpa quo unde similique?Lorem ipsum dolor sit amet consectetur
                            adipisicing
                            elit. Accusantium blanditiis quibusdam distinctio esse. Natus repellat architecto neque,
                            doloribus, in
                            corrupti nemo aliquam porro, cupiditate beatae ut commodi quae dolore illo.</suscipit>
                    </p>
                </div>

            </body>

        </html>