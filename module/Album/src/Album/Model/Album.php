<?php
namespace Album\Model;

use Zend\InputFilter\InputFilter;
use Zend\InputFilter\InputFilterAwareInterface;
use Zend\InputFilter\InputFilterInterface;

/**
 * Album Input Filter
 * @author TruongNV
 *
 */
class Album implements InputFilterAwareInterface
{

    public $id;

    public $artist;

    public $title;

    protected $inputFilter;

    /**
     * set data to property
     * @param array $data
     * @return void
     */
    public function exchangeArray($data)
    {
        $this->id = (isset($data['id'])) ? $data['id'] : null;
        $this->artist = (isset($data['artist'])) ? $data['artist'] : null;
        $this->title = (isset($data['title'])) ? $data['title'] : null;
    }
    
    /**
     * Get array copy
     */
    public function getArrayCopy()
    {
        return get_object_vars($this);
    }
    
    /**
     * set Input to filter
     * @see \Zend\InputFilter\InputFilterAwareInterface::setInputFilter()
     * 
     * @param InputFilterInterface $inputFilter
     * @return void
     */
    public function setInputFilter(InputFilterInterface $inputFilter)
    {
        throw new \Exception("Not used");
    }

    /**
     * get input filter
     * @see \Zend\InputFilter\InputFilterAwareInterface::getInputFilter()
     * 
     * @return InputFilter
     */
    public function getInputFilter()
    {
        if (! $this->inputFilter) {
            $inputFilter = new InputFilter();
            
            $inputFilter->add(array(
                'name' => 'id',
                'required' => true,
                'filters' => array(
                    array(
                        'name' => 'Int'
                    )
                )
            ));
            
            $inputFilter->add(array(
                'name' => 'artist',
                'required' => true,
                'filters' => array(
                    array(
                        'name' => 'StripTags'
                    ),
                    array(
                        'name' => 'StringTrim'
                    )
                ),
                'validators' => array(
                    array(
                        'name' => 'StringLength',
                        'options' => array(
                            'encoding' => 'UTF-8',
                            'min' => 1,
                            'max' => 100
                        )
                    )
                )
            ));
            
            $inputFilter->add(array(
                'name' => 'title',
                'required' => true,
                'filters' => array(
                    array(
                        'name' => 'StripTags'
                    ),
                    array(
                        'name' => 'StringTrim'
                    )
                ),
                'validators' => array(
                    array(
                        'name' => 'StringLength',
                        'options' => array(
                            'encoding' => 'UTF-8',
                            'min' => 1,
                            'max' => 100
                        )
                    )
                )
            ));
            
            $this->inputFilter = $inputFilter;
        }
        
        return $this->inputFilter;
    }
}