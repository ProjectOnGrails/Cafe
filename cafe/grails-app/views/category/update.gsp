<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Category</title>
</head>
<body>
<div id="content" role="main">
    <div class="container">
        <section>

            <h1 style="text-align: center"><u>Update Category</u></h1>
            <g:form controller="category" action="updatedata" id="${data.id}">
                <div class="mb-3">
                    <label  class="form-label">Id</label>
                        <input type="text" class="form-control" name="id"  placeholder="" value="${data.id}" disabled>
                </div>
                <div class="mb-3">
                    <label  class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" placeholder="" value="${data.name}">
                </div>
                <div class="mb-3">
                    <label  class="form-label">Description</label>
                    <g:textArea  value="${data.description}" rows="5" cols="40" name="description"/>
                </div>
                <g:submitButton value="submit" name="submit">Update</g:submitButton>
            </g:form>

        </section>
    </div>
</div>
</body>
</html>
