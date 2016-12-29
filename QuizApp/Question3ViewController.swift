//
//  Created by Piyush Joshi on 12/24/16.
//  Copyright © 2016 Piyush Joshi. All rights reserved.
//

import UIKit

import MobileCenterAnalytics

class Question3ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var currentScoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad();
        displayPlayerScore();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    // MARK - Actions events
    @IBAction func incorrectAnswerProvided(_ sender: UIButton) {
        resultLabel.text = "INCORRECT";
        disableAllButtons();
        
        // Send an event to track which which logo is the most difficult
        MSAnalytics.trackEvent("MarkedIncorrectAnswer", withProperties: ["Logo" : (self.logoImageView.accessibilityLabel)!]);
    }
    
    @IBAction func correctAnswerProvided(_ sender: UIButton) {
        resultLabel.text = "CORRECT";
        updateAndShowScore();
        disableAllButtons();
    }
    
    func updateAndShowScore() {
        MyGlobalVariables.playerScore += 10;
        displayPlayerScore();
    }
    
    func displayPlayerScore(){
        currentScoreLabel.text = "Your score : " + String(MyGlobalVariables.playerScore);
    }
    
    func disableAllButtons() {
        answer1Button.isEnabled = false;
        answer2Button.isEnabled = false;
        answer3Button.isEnabled = false;
    }
}