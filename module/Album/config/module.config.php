<?php
return array(
    'controllers' => array(
        // 'invokables' => array(
        // 'Album\Controller\Album' => 'Album\Controller\AlbumController',
        // ),
        'factories' => array(
            'Album\Controller\Album' => 'Album\Factory\AlbumControllerFactory'
        )
    ),
    'router' => array(
        'routes' => array(
            'album' => array(
                'type' => 'segment',
                'options' => array(
                    'route' => '/album[/][:action][/:id]',
                    'constraints' => array(
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id' => '[0-9]+'
                    ),
                    'defaults' => array(
                        'controller' => 'Album\Controller\Album',
                        'action' => 'index'
                    )
                )
            )
        )
    ),
    'view_manager' => array(
        'template_path_stack' => array(
            'album' => __DIR__ . '/../view'
        )
    ),
    'service_manager' => array(
//         'invokables' => array(
//             'Album\Service\PostServiceInterface' => 'Album\Service\PostService'
//         )
        'factories' => array(
            'Album\Service\PostServiceInterface' => 'Album\Factory\PostServiceFactory'
        )
    ),
);