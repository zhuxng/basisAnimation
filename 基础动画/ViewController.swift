//
//  ViewController.swift
//  基础动画
//
//  Created by 朱星 on 16/9/9.
//  Copyright © 2016年 zhuxing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let subLayer = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /*
        CAKeyframeAnimation  关键帧
        CATransaction  转场
        
        CAAnimationGroup  动画组
        
        CABasicAnimation  基础动画
        */
        
        subLayer.frame = CGRectMake(50, 100, 50, 50)
        subLayer.backgroundColor = UIColor.redColor().CGColor
        
        self.view.layer.addSublayer(subLayer)
        
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        创建基础动画
        
        let basicAnim = CABasicAnimation(keyPath: "transform.scale")
        //设置起始值，默认初始化的值
        basicAnim.fromValue = 1.0
        basicAnim.toValue = 6.0
        //持续时间
        basicAnim.duration = 10
        
        basicAnim.delegate = self
        
        
        //将动画添加到layer层上
        subLayer.addAnimation(basicAnim, forKey: nil)
        
        
        
        
    }
    
    
    override func animationDidStart(anim: CAAnimation) {
        print("动画开始")
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        print("动画结束")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

