<?php
namespace Album\Service;

use Album\Mapper\PostMapperInterface;
class PostService implements PostServiceInterface
{
    /**
     * @var \Album\Mapper\PostMapperInterface
     */
    protected $postMapper;
    
    public function __construct(PostMapperInterface $postMapper)
    {
        $this->postMapper = $postMapper;
    }
    
    /**
     * {@inheritDoc}
     */
    public function findAllPosts()
    {
        $this->postMapper->findAll();
    }
    
    /**
     * {@inheritDoc}
     */
    public function findPost($id)
    {
        $this->postMapper->find($id);
    }
}