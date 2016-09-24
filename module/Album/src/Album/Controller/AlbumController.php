<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Album\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Album\Form\AlbumForm;
use Album\Model\Album;

/**
 * Album Controller
 * @author TruongNV
 */
class AlbumController extends AbstractActionController
{
    protected $albumTable;
    
    /**
     * List album action
     * 
     * @see \Zend\Mvc\Controller\AbstractActionController::indexAction()
     * @return ViewModel
     */
    public function indexAction()
    {
        return new ViewModel(array(
            'albums' => $this->getAlbumTable()->fetchAll()
        ));
    }
    
    /**
     * add album action
     * 
     * @see \Zend\Mvc\Controller\AbstractActionController::addAction()
     * @return ViewModel
     */
    public function addAction()
    {
        $form = new AlbumForm();
        $form->get('submit')->setValue('Add');
        
        $request = $this->getRequest();
        if ($request->isPost()) {
            $album = new Album();
            $form->setInputFilter($album->getInputFilter());
            $form->setData($request->getPost());
            
            if ($form->isValid()) {
                $album->exchangeArray($form->getData());
                $this->getAlbumTable()->saveAlbum($album);
                
                // Điều hướng tới danh sách bộ sưu tập
                return $this->redirect()->toRoute('album');
            }
        }

        return array(
            'form' => $form
        );
    }
    
    /**
     * edit album action
     *
     * @see \Zend\Mvc\Controller\AbstractActionController::editAction()
     * @return ViewModel
     */
    public function editAction()
    {
        //return new ViewModel();
    }
    
    /**
     * delete album action
     *
     * @see \Zend\Mvc\Controller\AbstractActionController::deleteAction()
     * @return ViewModel
     */
    public function deleteAction()
    {
        //return new ViewModel();
    }
    
    /**
     * Get install AlbumTable and set to property
     * @return \Album\Model\AlbumTable
     */
    public function getAlbumTable()
    {
        if (!$this->albumTable) {
            $sm = $this->getServiceLocator();
            $this->albumTable = $sm->get('Album\Model\AlbumTable');
        }
        return $this->albumTable;
    }
}
