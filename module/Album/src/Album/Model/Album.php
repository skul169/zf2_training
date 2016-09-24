<?php
namespace Album\Model;

class Album
{
    public $id;
    public $artist;
    public $title;

    /**
     * Set data to property
     * @param unknown $data
     */
    public function exchangeArray($data)
    {
        $this->id     = (!empty($data['id'])) ? $data['id'] : null;
        $this->artist = (!empty($data['artist'])) ? $data['artist'] : null;
        $this->title  = (!empty($data['title'])) ? $data['title'] : null;
    }
}