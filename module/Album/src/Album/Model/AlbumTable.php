<?php
namespace Album\Model;

use Zend\Db\TableGateway\TableGateway;

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
    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }
}