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
            <h1 style="text-align: center"><u>Create Item</u></h1>
            <g:form  action="save" enctype="multipart/form-data">
                <div class="mb-3">
                    <label  class="form-label">Name</label>
                    <g:textField type="text" class="form-control" id="name" name="name"/>
                </div>
                <div class="mb-3">
                    <label  class="form-label">Price</label>
                    <g:textField id="price" name="price" type="number"/>
                </div>
                <div class="mb-3">
                    <label for="imageURL"  class="form-label">Image</label>
                    <input type="file" class="form-control " id="imageURL" name="imageURL">
                </div>
                <div class="mb-3">
                    <label  class="form-label">Category</label>
                    <select name="category">
                        <option value="">Select Category</option>
                        <g:each in="${categories}" var="category">
                            <option value="${category.id}">${category.name}</option>
                        </g:each>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary" >Save</button>
            </g:form>

        </section>
    </div>
</div>
</body>
</html>
