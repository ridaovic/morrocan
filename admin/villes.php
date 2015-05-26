<?php require_once 'header.php'; ?>



        <div id="page-wrapper">
            <div class="container-fluid">
                <h1 class="page-header">Page des villes</h1>
                <ol class="breadcrumb">
                    <li>
                        <i class="fa fa-dashboard"></i>  <a href="index.php">Dashboard</a>
                    </li>
                    <li class="active">
                        <i class="fa fa-paper-plane"></i> Villes
                    </li>
                </ol>

                <p><a href="ville_add.php" class="btn btn-success main-add">Ajouter nouvelle ville</a></p>

                <?php if (isset($_SESSION['success'])){ 

                                    ?>
                                   
                                   <?php if ($_SESSION['success']==1){ ?>
                                         <div class="alert alert-success  alert-dismissable"><button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button><?php echo($_SESSION['message']); ?></div>                                              
                                   <?php }elseif($_SESSION['success']==0){ ?>
                                         <div class="alert alert-danger alert-dismissable"><button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button><?php echo($_SESSION['message']); ?></div>                                              
                                   <?php } ?>
                                   
                                <?php  
                                unset($_SESSION['success']);
                                unset($_SESSION['message']);} ?>


                <table class="table table-striped main-table">
                    <thead>
                        <tr>
                            <th>Identifiant</th>
                            <th>Ville</th>
                            
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                     <?php 
                                            $db = new DB_CONNECT();
                                            $result = mysql_query("SELECT * FROM ville") or die(mysql_error());
                                          
                                            
                                            if (mysql_num_rows($result) > 0) {
                                                while ($row = mysql_fetch_array($result)) {
                                                  $id=$row["ID_VILLE"];
                                                  $nom=$row["NOM"];
                                                
                                                  
                                                  ?>
                        <tr>
                                <td><?php echo($id); ?></td>
                                <td><?php echo($nom); ?></td>
                               
                                                      
                            <td>
                                <a href="ville_edit.php?id=<?php echo($id); ?>" class="btn btn-default">Edit</a>
                                <a href="ville_delete.php?id=<?php echo($id); ?>" class="btn btn-default" onclick="return confirm('vous voulez supprimer cette ville')">Supprimer</a>
                            </td>
                        </tr>
                                                <?php }
                                            }
                     ?>

                    </tbody>
                </table>
            </div>
        </div>
        <!-- /#page-wrapper -->

<?php require_once 'footer.php'; ?>
   