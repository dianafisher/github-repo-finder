//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Diana Fisher on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var minimumStarsSlider: UISlider!
    @IBOutlet weak var starsCountLabel: UILabel!
    
    var searchSettings: GithubRepoSearchSettings!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Hello, I have received settings \(searchSettings)")
        
        starsCountLabel.text = "\(searchSettings.minStars)"
        minimumStarsSlider.value = Float(searchSettings.minStars)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - IBAction
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true) {
            
        }
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
    }
    
    @IBAction func starSliderValueChanged(_ sender: Any) {
        let slider = sender as! UISlider
        let value = Int(slider.value)
        print("slider value \(value)")
        
        // update the label
        starsCountLabel.text = "\(value)"
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
