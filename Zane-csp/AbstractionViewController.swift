//
//  AbstractionViewController.swift
//  Zane-csp
//
//  Created by Weber, Zane on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{
    private (set) lazy var orderedAbstractionViews : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel : "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate"),
            ]
    }()
    
    //Helper method to retrieve the correct view controller
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    //mark:- required protocol methd for uipageviewcontroller data sorce
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore
        viewontroller: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
            else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
            else
        {
            return nil
        }
        
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_pageViewController: UIPageViewController, viewControllerAfter
        viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
            else
        {
            return orderedAbstractionViews.first
        }
        
        return orderedAbstractionViews[nextIndex]
    }
    
    public func presentationCount(for pageViewController:UIPageViewController) -> Int
    {
        return orderedAbstractionViews.count
    }
    
    public func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        return orderedAbstractioViews.count
    }
    
    public func presentationIndex(for ageViewController: UIPageViewController) -> Int
    {
        guard let firstViewController = viewControllers?.first, let firstViewControllerIndex =
            orderedAbstractionViews.index(of: firstViewController)
            else
        {
            return 0
        }
        
        return firstViewControllerIndex
    }
}
