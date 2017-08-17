<div class="container">
    <br>
    <br>
    <div class="row">
        <div class="col-md-4 col-sm-3"></div>

        <div class="col-md-4 col-sm-6">
            <form method="POST" action="${contextPath}/login" class="form-signin">
                <h2 class="form-heading position-center">Authorization</h2>
                <br>
                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <input name="email" type="text" class="form-control" placeholder="Login" autofocus="true"/>
                    <br>

                    <input name="password" type="password" class="form-control" placeholder="Password"/>
                    <div class="position-center">${error}${message}</div>
                    <br>

                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="position-center">
                        <button class="btn btn-success" type="submit">Login</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-4 col-sm-3"></div>
    </div>
</div>
