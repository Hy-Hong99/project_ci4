<?php namespace App\Controllers;
use App\Models\PizzaModel;
class Pizza extends BaseController
{
	public function listPizza()
	{	
		$pizzaData = new PizzaModel();
		$allPizza['pizzaData'] = $pizzaData->findAll();
		return view('index',$allPizza);
	}

	//Function create pizzas
	public function addPizza()
	{	
		helper(['form']);
		$data = [];

		if($this->request->getMethod() == "post"){

				$pizzaData = new PizzaModel();
				$newData = [
					'name' => $this->request->getVar('name'),
					'ingredients' => $this->request->getVar('ingredients'),
					'price' => $this->request->getVar('price')
				];

				$pizzaData->save($newData);
				return redirect()->to('/pizza');
		}
		
	}
   
	//Function edit pizzas
   public function editPizza($id)
	{	
		$pizzaData = new PizzaModel();
		$data['edit']= $pizzaData->find($id);
		return view('index',$data);
	}

	//Function update pizzas
   public function updatePizza()
	{	
		$pizzaData = new PizzaModel();
		$pizzaData->update($_POST['id'],$_POST);
		return redirect()->to('/pizza');
	}

	//Function delete pizzas
	public function deletePizza($id)
	{	
		$pizzaData = new PizzaModel();
		$pizzaData->delete($id);
		return redirect()->to('/pizza');
	}
}
