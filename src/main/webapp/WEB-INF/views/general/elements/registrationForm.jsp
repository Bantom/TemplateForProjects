<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
    <br>
    <br>
    <div class="row">
        <div class="col-md-4 col-sm-2"></div>

        <div class="col-md-4 col-sm-8">
            <form:form method="POST" modelAttribute="userForm" class="form-signin">
                <h2 class="form-signin-heading position-center">Create your account</h2>
                <br>

                <%--Firstname--%>
                <spring:bind path="firstname">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="firstname" class="form-control" placeholder="Firstname"
                                    autofocus="true"></form:input>
                        <form:errors path="firstname"></form:errors>
                    </div>
                </spring:bind>

                <%--Lastname--%>
                <spring:bind path="lastname">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="lastname" class="form-control"
                                    placeholder="Lastname"></form:input>
                        <form:errors path="lastname"></form:errors>
                    </div>
                </spring:bind>

                <%--Telephone--%>
                <spring:bind path="telephone">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="telephone" class="form-control"
                                    placeholder="Telephone"></form:input>
                        <form:errors path="telephone"></form:errors>
                    </div>
                </spring:bind>

                <%--Email--%>
                <spring:bind path="email">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="email" class="form-control"
                                    placeholder="Email"></form:input>
                        <form:errors path="email"></form:errors>
                    </div>
                </spring:bind>

                <%--Password--%>
                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                        <form:errors path="password"></form:errors>
                    </div>
                </spring:bind>

                <%--Confirm password--%>
                <spring:bind path="confirmPassword">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="confirmPassword" class="form-control"
                                    placeholder="Confirm your password"></form:input>
                        <form:errors path="confirmPassword"></form:errors>
                    </div>
                </spring:bind>

                <div class="position-center">
                    <button class="btn btn-success" type="submit">Submit</button>
                </div>
            </form:form>
        </div>

        <div class="col-md-4 col-sm-2"></div>
    </div>
</div>