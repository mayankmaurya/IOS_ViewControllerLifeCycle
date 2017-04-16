//
//  ViewController.swift
//  IOS_LIfe_Cycle
//
//  Created by Mayank Maurya on 16/04/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class ILCLoggingViewController: UIViewController {
    
    private static var lifeCycleStepCount:Int = 0
    func logLifeCycle(function:String = #function,line:Int = #line,fileName:String = #file,_ message:String = ""){
        //let className = fileName.components(separatedBy: "/").last?.components(separatedBy: ".").first
        let className = String(describing: type(of:self))
        ILCLoggingViewController.lifeCycleStepCount += 1
        print("\(ILCLoggingViewController.lifeCycleStepCount.description) step of life cycle===> \(className).\(function) \(message)")
        //print("\(lifeCycleStepCount.description) step of life cycle===> \(function) ...... \(message)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)

        logLifeCycle()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        logLifeCycle()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        logLifeCycle()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        logLifeCycle()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logLifeCycle()
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        logLifeCycle("size \(self.view.frame.size)")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        logLifeCycle("size \(size)")
        coordinator.animate(alongsideTransition: { (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
            self.logLifeCycle("begin animate(alongsideTransition:completion:)")
        }, completion: { context -> Void in
            self.logLifeCycle("end animate(alongsideTransition:completion:)")
        })
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        logLifeCycle("size \(self.view.frame.size)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logLifeCycle()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        logLifeCycle()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        logLifeCycle()
       // lifeCycleStepCount = 0

    }
    
    deinit {
        logLifeCycle()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

