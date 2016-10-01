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
use Album\Service\PostServiceInterface;

/**
 * Album Controller
 * @author TruongNV
 */
class AlbumController extends AbstractActionController
{
    protected $albumTable;
    
    /**
     * @var \Album\Service\PostServiceInterface
     */
    protected $postService;
    
    public function __construct(PostServiceInterface $postService)
    {
        $this->postService = $postService;
    }
    
    /**
     * List album action
     * 
     * @see \Zend\Mvc\Controller\AbstractActionController::indexAction()
     * @return ViewModel
     */
    public function indexAction()
    {
        // grab the paginator from the AlbumTable
        $paginator = $this->getAlbumTable()->fetchAll(true);

        // set the current page to what has been passed in query string, or to 1 if none set
        $paginator->setCurrentPageNumber((int) $this->params()->fromQuery('page', 1));

        // set the number of items per page to 10
        $paginator->setItemCountPerPage(10);
        
        return new ViewModel(array(
            'paginator' => $paginator
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
        $id = (int) $this->params()->fromRoute('id', 0);
        if (!$id) {
            return $this->redirect()->toRoute('album', array(
                'action' => 'add'
            ));
        }
        
        // Get the Album with the specified id. An exception is thrown
        // if it cannot be found, in which case go to the index page.
        try {
            $album = $this->getAlbumTable()->getAlbum($id);
        } catch (\Exception $ex) {
            return $this->redirect()->toRoute('album', array(
                'action' => 'index'
            ));
        }
        
        $form = new AlbumForm();
        $form->bind($album);
        
        $request = $this->getRequest();
        if ($request->isPost()) {
            $form->setInputFilter($album->getInputFilter());
            $form->setData($request->getPost());
            
            if ($form->isValid()) {
                $this->getAlbumTable()->saveAlbum($album);
                
                // Redirect to list of albums
                return $this->redirect()->toRoute('album');
            }
        }
        
        return array(
            'id' => $id,
            'form' => $form
        );
    }
    
    /**
     * delete album action
     *
     * @see \Zend\Mvc\Controller\AbstractActionController::deleteAction()
     * @return ViewModel
     */
    public function deleteAction()
    {
        $id = (int) $this->params()->fromRoute('id', 0);
        if (! $id) {
            return $this->redirect()->toRoute('album');
        }
        
        $request = $this->getRequest();
        if ($request->isPost()) {
            $del = $request->getPost('del', 'No');
            
            if ($del == 'Yes') {
                $id = (int) $request->getPost('id');
                $this->getAlbumTable()->deleteAlbum($id);
            }
            
            // Redirect to list of albums
            return $this->redirect()->toRoute('album');
        }
        
        return array(
            'id' => $id,
            'album' => $this->getAlbumTable()->getAlbum($id)
        );
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
