


import UIKit

class View2: UIViewController {
    
    private let myTableView = UITableView()
    private var foodArray = ["Brownie","Marshmallow","Pineapple Cake","Rasmalai Cake","Froyo","Donut","Pinata"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title="Dessert's Menu"
        view.addSubview(myTableView)
        setupTableView()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationController?.setNavigationBarHidden(false, animated: true)
        myTableView.frame=CGRect(x:0,y: view.safeAreaInsets.top, width: view.frame.size.width, height: view.frame.size.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }
}

extension View2: UITableViewDataSource, UITableViewDelegate{
    
    private func setupTableView() {
        myTableView.dataSource=self
        myTableView.delegate=self
        myTableView.register(FoodCell.self, forCellReuseIdentifier: "FoodCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return foodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! FoodCell
        cell.setupCityCellWith(title: foodArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(foodArray[indexPath.row])
        
        let vc = View3()
        vc.Fname.text = foodArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}




