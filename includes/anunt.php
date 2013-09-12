<?php
/**
 * Anunt class
 *
 * @var string
 **/
require_once("Database.php");

class Anunt {

	protected static $table_name="anunturi";
	protected static $db_fields=array('id', 'titlu', 'descriere', 'is_promoted', 'is_promoted_top', 'creat_la', 'ultima_modificare');

    public static function find_all() 
    {
	   return self::find_by_sql("SELECT * FROM ".self::$table_name);
    }
  
    public static function find_by_id($id=0) 
    {
    	global $database;
        $result_array = self::find_by_sql("SELECT * FROM ".self::$table_name." WHERE id=".$database->escape_value($id)." LIMIT 1");
		return !empty($result_array) ? array_shift($result_array) : false;
    }
  
    public static function find_by_sql($sql="") 
    {
        global $database;
        $result_set = $database->query($sql);
        $object_array = array();
        while ($row = $database->fetch_array($result_set)) {
          $object_array[] = self::instantiate($row);
        }
        return $object_array;
    }

	public static function count_all() 
    {
	  global $database;
	  $sql = "SELECT COUNT(*) FROM ".self::$table_name;
      $result_set = $database->query($sql);
	  $row = $database->fetch_array($result_set);

      return array_shift($row);
	}

	private static function instantiate($record)
    {
    $object = new self;
		
		foreach($record as $attribute=>$value){
		  if($object->has_attribute($attribute)) {
		    $object->$attribute = $value;
		  }
		}

	  return $object;
	}

	private function has_attribute($attribute) 
    {
	  return array_key_exists($attribute, $this->attributes());
	}

	protected function attributes() 
    { 
	$attributes = array();

	  foreach(self::$db_fields as $field) {
	    if(property_exists($this, $field)) {
	      $attributes[$field] = $this->$field;
	    }
	  }
	  return $attributes;
	}
	
	protected function sanitized_attributes() 
    {
	  global $database;
	  $clean_attributes = array();
	  foreach($this->attributes() as $key => $value){
	    $clean_attributes[$key] = $database->escape_value($value);
	  }

	  return $clean_attributes;
	}
	
}

//end of file Anunt.php location: /includes
