<?php
namespace Album\Factory;

use Zend\ServiceManager\FactoryInterface;
use Album\Service\PostService;
use Zend\ServiceManager\ServiceLocatorInterface;

class PostServiceFactory implements FactoryInterface
{

    /**
     * Create service
     *
     * @param ServiceLocatorInterface $serviceLocator
     * @return mixed
     */
    public function createService(ServiceLocatorInterface $serviceLocator)
    {
        return new PostService(
            $serviceLocator->get('Album\Mapper\PostMapperInterface')
        );
    }
}