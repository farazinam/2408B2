<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <form method="post" action="/create" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Product Name</label>
          <input type="text" name="pn" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
       
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Product Price</label>
            <input type="number" name="pp" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>

          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Product Image</label>
            <input type="file" name="pi" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
          </div>
        
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
</body>
</html>