//
//  Created by Piyush Joshi on 12/24/16.
//  Copyright © 2016 Piyush Joshi. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {

    
    @IBOutlet weak var lastScoreLabelField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lastScoreLabelField.text = "Your last score was: 100";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
