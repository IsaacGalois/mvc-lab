<html>

<head>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>

<body>
<div class="col-lg-6">
    <!--Bind contact object to form -->
    <form:form modelAttribute="index" action="/" method="post" cssClass="form-horizontal">

        <fieldset>
            <legend><h2>Form Input Demo</h2></legend>
            <form:hidden path="indexId"/>

            <div class="form-group">
                <label class="col-sm-2 control-label">Text:</label>
                <div class="col-sm-6">
                    <form:input path="text" class="form-control" placeholder="Text"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Password:</label>
                <div class="col-sm-6">
                    <form:input path="password" class="form-control" placeholder="Password"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <label class="col-sm-2">
                    <form:checkbox path="checkBox1" checked="checked"/>Check Box 1
                </label>
                <label class="col-sm-2">
                    <form:checkbox path="checkBox2" checked="checked"/>Check Box 2
                </label>
                <label class="col-sm-2">
                    <form:checkbox path="checkBox3" checked="checked"/>Check Box 3
                </label>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Textarea:</label>
                <div class="col-sm-6">
                    <form:textarea path="textArea" class="form-control" placeholder="Textarea"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Radios:</label>
                <div class="col-sm-6">
                    <form:radiobutton path="radio" value="Option 1" />Option 1
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-6">
                    <form:radiobutton path="radio" value="Option 2" />Option 2
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-6">
                    <form:radiobutton path="radio" value="Option 3" />Option 3
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Select:</label>
                <div class="col-sm-6">
                    <form:select path="select1" class="form-control" >
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Select:</label>
                <div class="col-sm-6">
                    <form:select multiple="true" path="select2" class="form-control" >
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                    </form:select>
                </div>
            </div>


            <!--Cancel/Save buttons-->
            <div class="form-group">
                <span class="col-sm-1 col-sm-offset-2">
                    <a href="http://localhost:8080/" type="button" class="btn" style="border: 1px solid">Cancel</a>
                </span>

                <span class="col-sm-2">
                    <form:button class="btn btn-primary">Save</form:button>
                </span>
            </div>


        </fieldset>

    </form:form>
</div>
</body>
</html>
