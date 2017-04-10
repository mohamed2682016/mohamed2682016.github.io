<?php use yii\helpers\Url;
       use yii\widgets\LinkPager; ?>
      
	  <div class="page-header users-header">
        <h2>
          <a  href="<?php echo Url::to(['user/create'])?>" class="btn btn-success">Add a new</a>
        </h2>
      </div>
<table class="table table-striped table-bordered table-condensed">
            <thead>
              <tr>
                <th class="header">#</th>
                <th class="yellow header headerSortDown">User Name</th>
                <th class="green header">Email</th>
                <th class="red header">Phone NO</th>
				<th class="red header">Gender</th>
                <th class="red header">Actions</th>
              </tr>
            </thead>
			
            <tbody>
	<?php foreach($users as $user):?>
                <?php
                echo '<tr text-align="center">';
                echo '<td width="20px" class="center">'.$user->id.'</td>';
                echo '<td width="80px" class="center">'.$user->name.'</td>';
				echo '<td width="80px" class="center">'.$user->email.'</td>';
				echo '<td width="80px" class="center">'.$user->mobile.'</td>';
                echo '<td width="80px" class="center">';?>
				<?php if($user->gender==0){echo'male';} elseif($user->gender==1){ echo'female';} ?>
		    <?php
				echo '</td><td width="100px" class="center ">';?>
				<a  href="<?php echo Url::to(['user/update', 'id' => $user->id]) ?>" class="btn btn-primary">Update</a>
                <a  href="<?php echo Url::to(['user/delete', 'id' => $user->id]) ?>" class="btn btn-danger">Delete</a>
                   
              <?php  echo '</td></tr>';?>
	          <?php endforeach;?>
   			 
    </tbody></table>
	<div>
	<?= LinkPager::widget(['pagination' => $pagination]) ?>
	</div>