--[[
    --这个完全是测试lua
    --jinglijun
    --2015.2.28
]]

    require "ViewController"

    viewController = ViewController:init()
    window = UIApplication:sharedApplication():keyWindow()


    navigationController = UINavigationController:initWithRootViewController(viewController)

    window:addSubview(navigationController:view())