<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>To Do List Web Attempt</title>

    <meta charset="utf-8"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="<s:url value='/resources/css/common.css'/>" rel="stylesheet">

</head>

<body>
<div class="container">
    <div class="piece">
        <div class="page-header">
            <h1>${content.title} for ${user.user_login}</h1>
        </div>
        <form:form class="form-horizontal" modelAttribute="content" role="form" action="/add" method="post">

            <c:forEach items="${content.items}" var="item" varStatus="status">
                <div class="form-group">
                    <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                        <div class="input-group">
                            <span class="input-group-addon">
                                 <form:checkbox  path="items[${status.index}].delete" value="true"></form:checkbox>
                             </span>
                            <form:input path="items[${status.index}].value" type="text" class="form-control" ></form:input>
                        </div>
                    </div>
                    
                </div>
            </c:forEach>
            <div class="form-group">
            <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                        <button type="submit" id="add" class="col-lg-4 col-md-2 col-sm-3 col-xs-offset-1 btn btn-large btn-primary .btn-block">Add</button>
                        <button type="submit" id="delete" class="col-lg-4 col-md-2 col-sm-3 col-xs-offset-2 btn btn-large .btn-block">Delete</button>
                    </div>
             </div>



          <!--       <div class="form-group col-md-12">
                    <div class="col-lg-1 col-lg-offset-4 col-md-1 col-md-offset-3 col-sm-1 col-sm-offset-3">
                        <button type="submit" id="add" class="btn btn-large btn-primary">Add</button>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 ">
                        <button type="submit" id="delete" class="btn btn-large">Delete</button>
                    </div>
                </div> -->
        </form:form>
    </div>
</div>

<script src="<s:url value='/resources/js/common.js'/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</body>
</html>
