<?php
namespace Album\Model;

interface PostInterface
{

    /**
     * Will return the ID of the album post
     *
     * @return int
     */
    public function getId();

    /**
     * Will return the TITLE of the album post
     *
     * @return string
     */
    public function getTitle();

    /**
     * Will return the Artist of the album post
     *
     * @return string
     */
    public function getArtist();
}