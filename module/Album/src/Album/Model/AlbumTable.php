<?php
namespace Album\Model;

use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Select;
use Zend\Db\ResultSet\ResultSet;
use Zend\Paginator\Adapter\DbSelect;
use Zend\Paginator\Paginator;

/**
 * Album Table
 * @author TruongNV
 *
 */
class AlbumTable
{
    protected $tableGateway;

    /**
     * Construct function
     * @param TableGateway $tableGateway
     * @return void
     */
    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
    }

    /**
     * Get all data of album table
     * @return \Zend\Db\ResultSet\ResultSet
     */
    public function fetchAll($paginated = false)
    {
        if ($paginated) {
            // create a new Select object for the table album
            $select = new Select('album');

            // create a new result set based on the Album entity
            $resultSetPrototype = new ResultSet();
            $resultSetPrototype->setArrayObjectPrototype(new Album());

            // create a new pagination adapter object
            $paginatorAdapter = new DbSelect(
                // our configured select object
                $select, 
                // the adapter to run it against
                $this->tableGateway->getAdapter(), 
                // the result set to hydrate
                $resultSetPrototype
            );

            $paginator = new Paginator($paginatorAdapter);
            return $paginator;
        }

        $resultSet = $this->tableGateway->select();
        return $resultSet;
        
    }

    /**
     * Get An Album
     * @param int $id
     * @throws \Exception
     * @return ArrayObject|NULL
     */
    public function getAlbum($id)
    {
        $id  = (int) $id;
        $rowset = $this->tableGateway->select(array('id' => $id));
        $row = $rowset->current();
        if (!$row) {
            throw new \Exception("Could not find row $id");
        }
        return $row;
    }

    /**
     * Save album to database
     * @param Album $album
     * @throws \Exception
     */
    public function saveAlbum(Album $album)
    {
        $data = array(
            'artist' => $album->artist,
            'title'  => $album->title,
        );

        $id = (int) $album->id;
        if ($id == 0) {
            $this->tableGateway->insert($data);
        } else {
            if ($this->getAlbum($id)) {
                $this->tableGateway->update($data, array('id' => $id));
            } else {
                throw new \Exception('Album id does not exist');
            }
        }
    }

    /**
     * Delete an album
     * @param int $id
     */
    public function deleteAlbum($id)
    {
        $this->tableGateway->delete(array('id' => (int) $id));
    }
}