<?php require_once 'header.php'; ?>

<?php 
$id=$_GET['id'];

 ?>


        <div id="page-wrapper">
            <div class="container-fluid">
                <h1 class="page-header">Add / Edit Cities Page</h1>
                <ol class="breadcrumb">
                    <li>
                        <i class="fa fa-dashboard"></i>  <a href="index.php">Dashboard</a>
                    </li>
                    <li class="active">
                        <i class="fa fa-paper-plane"></i> cities
                    </li>
                </ol>

                <div class="row">
                    <div class="col-md-8">

                                    <?php 
                                    $db = new DB_CONNECT();

                            $response = array();
                            

                            if (!empty($_POST) ) {
                                
                            
                            if (!empty($_POST['name']) && !empty($_POST['description']) )  {

                                $name=$_POST['name'];
                                $description=$_POST['description'];
                              


                               // mysql inserting a new row

                                // INSERT INTO `marrocan`.`ville` (`ID_VILLE`, `NOM`, `HISTORIQUE`) VALUES (NULL, 'testrdt', 'ujhiouhj');
                                 $result = mysql_query("INSERT INTO ville (`ID_VILLE`, `NOM` ,`HISTORIQUE` ) VALUES ( NULL,'$name' ,'$description')");
                                //echo "INSERT INTO ville (`ID_VILLE`, `NOM` ,`HISTORIQUE` ) VALUES ( NULL,'name' ,'description')";
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
                           
                         ?>

                             <?php 
                                
                                if ($response["success"]==2) { ?>
                                    <div class="alert alert-danger alert-dismissable">
                                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                    <?php echo $response["message"]; ?>
                                    </div>
                                    
                                    
                                <?php }
                                elseif($response["success"]==1){ ?>
                                    <div class="alert alert-success alert-dismissable">
                                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                    <?php echo $response["message"]; ?>
                                    </div>
                                    
                                <?php }  }?>

                        <form  method="POST" class="main-form" >
                            <div class="form-group col-md-8">
                                <label for="name">Name City</label>
                                <input type="text" id="name" class='form-control' name="name">
                            </div>
                            
                            <div class=" col-md-12">
                                <label for="description">Description</label>
                                <textarea type="text" id="description" class='form-control' name="description"></textarea>
                            </div>
                            <div class="form-group col-md-8">
                                <button type="submit" class="btn btn-success main-add">Add / Edit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-wrapper -->

   <?php require_once 'footer.php'; ?>
