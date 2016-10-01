<?php
namespace Album\Service;

use Album\Model\Post;
class PostService implements PostServiceInterface
{
    protected $data = array(
        array(
            'id'    => 1,
            'title' => 'Hello World #1',
            'artist'  => 'This is our first blog post!'
        ),
        array(
            'id'     => 2,
            'title' => 'Hello World #2',
            'artist'  => 'This is our second blog post!'
        ),
        array(
            'id'     => 3,
            'title' => 'Hello World #3',
            'artist'  => 'This is our third blog post!'
        ),
        array(
            'id'     => 4,
            'title' => 'Hello World #4',
            'artist'  => 'This is our fourth blog post!'
        ),
        array(
            'id'     => 5,
            'title' => 'Hello World #5',
            'artist'  => 'This is our fifth blog post!'
        )
    );
    
    /**
     * {@inheritDoc}
     */
    public function findAllPosts()
    {
        $allPosts = array();
    
        foreach ($this->data as $index => $post) {
            $allPosts[] = $this->findPost($index);
        }
    
        return $allPosts;
    }
    
    /**
     * {@inheritDoc}
     */
    public function findPost($id)
    {
        $postData = $this->data[$id];
    
        $model = new Post();
        $model->setId($postData['id']);
        $model->setTitle($postData['title']);
        $model->setArtist($postData['artist']);
    
        return $model;
    }
}