//
//  FirstViewController.swift
//  IOS_LIfe_Cycle
//
//  Created by Mayank Maurya on 16/04/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class FirstViewController: ILCLoggingViewController {

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        logLifeCycle()
    }
 

}
