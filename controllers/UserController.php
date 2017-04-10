<?php
namespace app\controllers;

use Yii;
use app\models\User;
use yii\web\Controller;
use yii\data\Pagination;

class UserController extends Controller {
	
///////////action to Show All user with Pagination ///////////////

	public function actionList()
    {
        $users = user::find();

        $pagination = new Pagination([
            'defaultPageSize' => 5,
            'totalCount' => $users->count(),
        ]);

        $users = $users->orderBy('id')
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('list', [
            'users' => $users,
            'pagination' => $pagination,
        ]);
    }
	
////////action to Add new User in User Table ////////////////////////////////
	public function actionCreate()
    {
        $users = new user;

        if ($users->load(Yii::$app->request->post()) && $users->save()) {
            
			return $this->redirect(['user/list', 'id' => $users->id]);
        
		} else {
           
		   return $this->render('create', ['users' => $users]);
        }
    }
////////////// Action to Update User Data ..If successed return to users list ////////////////////////
     public function actionUpdate($id){

		 $Users = User::find()->where(['id' => $id])->one();
		 if($Users === null)
            throw new NotFoundHttpException(' Page Not Found .');
		
		 if($Users->load(Yii::$app->request->post()) && $Users->save()){
			 
            return $this->redirect(['list']);
        }
		
        return $this->render('update', ['Users' => $Users]);
	 }
////////////// Action to Delete User Data If successed return to users list ///////////////////////
	 public function actionDelete($id)
     {
         $Users = User::findOne($id);
        if($Users === null)
            throw new NotFoundHttpException(' Page Not Found .');
        $Users->delete();
         
        return $this->redirect(['list']);
     }  
}
