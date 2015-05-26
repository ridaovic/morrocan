 <?php 
 include('db_connect.php');

                            $response = array();
                            

                            if (!empty($_POST) ) {
                                
                            
                            if (!empty($_POST['name']) && !empty($_POST['description']) )  {

                                $name=$_POST['name'];
                                $description=$_POST['description'];
                              


                               // mysql inserting a new row
                                $result = mysql_query('INSERT INTO ville(`nom` ,`historique` ) VALUES('.$name.' ,'.$description.')');
                                // check if row inserted or not
                                if ($result) {
                                    echo $result;
                                    // successfully inserted into database
                                    $response["success"] = 1;
                                    $response["message"] = "User successfully created.";

                                } else {
                                    // failed to insert row
                                    $response["success"] = 2;
                                    $response["message"] = "Oops! An error occurred.";
                                    
                                }
                                
                                }else{

                                    $response["success"] = 2;
                                    $response["message"] = "all fields are mandatory.";

                                }
                            }
                         ?>