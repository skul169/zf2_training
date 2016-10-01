<?php
namespace Album\Service;

interface PostServiceInterface
{
    /**
     * Should return a set of all album posts that we can iterate over.
     * Single entries of the array are supposed to be
     * implementing \Album\Model\PostInterface
     *
     * @return array|PostInterface[]
     */
    public function findAllPosts();

    /**
     * Should return a single blog post
     *
     * @param int $id
     *            Identifier of the Post that should be returned
     * @return PostInterface
     */
    public function findPost($id);
}