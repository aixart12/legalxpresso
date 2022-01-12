<?php
include('path.php');
include(ROOT_PATH . "/app/controllers/posts.php");
// include(ROOT_PATH . "/app/helpers/middleware.php");
// adminOnly();
usersOnly();
?>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Font Awesome -->
        <link rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
            integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
            crossorigin="anonymous">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Candal|Lora"
            rel="stylesheet">

        <!-- Custom Styling -->
        <link rel="stylesheet" href="assests/css/style.css">

        <!-- Admin Styling -->
        <link rel="stylesheet" href="assests/css/admin.css">

        <title>User Section - Add Posts</title>
    </head>

    <body>
        <?php include(ROOT_PATH . "/app/includes/adminHeader.php");?>

        <!-- Admin Page Wrapper -->
        <div class="admin-wrapper">

            <!-- Left Sidebar -->
            
            <!-- // Left Sidebar -->


            <!-- Admin Content -->
            <div class="admin-content">
    


                <div class="content">

                    <h2 class="page-title">Add Posts</h2>

                    <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>
                    <?php include(ROOT_PATH . "/app/includes/messages.php");?>
                   
                    <form action="userCreatePost.php" method="post" enctype="multipart/form-data">
                        <div>
                            <label>Title</label>
                            <input type="text" name="title" value="<?php echo $title;?>"class="text-input">
                        </div>
                        <div>
                            <label>Body</label>
                            <textarea name="body" value="<?php echo $body;?>"id="body"></textarea>
                        </div>
                        <div>
                            <label>Image</label>
                            <input type="file" name="images" class="text-input">
                        </div>
                        <div>
                            <label>Topic</label>
                            <select name="topic_id" class="text-input">
                                <option value=""></option>
                                <?php foreach ($topics as $key => $topic): ?>
                                     <?php if (!empty($topic_id) && $topic_id == $topic['id'] ): ?>
                                        <option selected value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                                    <?php else: ?>
                                        <option value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                                    <?php endif; ?>

                                <?php endforeach; ?>
                            </select>
                        </div>
                        
                        <div>
                            <button type="submit" name="user-add-post" class="btn btn-big">Add Post</button>
                        </div>
                    </form>

                </div>

            </div>
            <!-- // Admin Content -->

        </div>
        <!-- // Page Wrapper -->



        <!-- JQuery -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Ckeditor -->
        <script
            src="https://cdn.ckeditor.com/ckeditor5/12.2.0/classic/ckeditor.js"></script>
        <!-- Custom Script -->
        <script src="assests/js/scripts.js"></script>

    </body>

</html>;