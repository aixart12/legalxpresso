<?php
function validatePost($user){

    $errors = array();
    
    if(empty($user['title'])){
        array_push($errors, "Titile name is Empty");
      }
    
    if(empty($user['body'])){
        array_push($errors, " Body is required");
      }
    if(empty($user['topic_id'])){
        array_push($errors, "Please select a topic");
      }
    
    
    $existingPost = selectOne('posts', ['title' => $user['title']]);
    if ($existingPost) {
        if (isset($post['update-post']) && $existingPost['id'] != $post['id']) {
            array_push($errors, 'Post with that title already exists');
        }

        if (isset($post['add-post'])) {
            array_push($errors, 'Post with that title already exists');
        }
    }
      
    return $errors;
}
    
    