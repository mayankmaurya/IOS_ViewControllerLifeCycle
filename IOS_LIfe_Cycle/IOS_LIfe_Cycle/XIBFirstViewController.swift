//
//  XIBFirstViewController.swift
//  IOS_LIfe_Cycle
//
//  Created by Mayank Maurya on 17/04/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class XIBFirstViewController: ILCLoggingViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func showSecondViewController(_ sender: Any) {
        
        let viewController = XIBSecondViewController(nibName: "XIBSecondViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
