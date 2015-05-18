
--[[
    --这个完全是测试lua
    --jinglijun
    --2015.2.28
]]

require "StatesTable"

waxClass{"ViewController", UIViewController}

function viewDidLoad(self)
    self.super:viewDidLoad(self)
    self:setTitle("首页")
--添加一个label
    local label = UILabel:initWithFrame(CGRect(0, 120, 320, 40))
    label:setColor(UIColor:blueColor())
    label:setText("Hello Wax!")
    label:setTextAlignment(UITextAlignmentCenter)
    local font = UIFont:fontWithName_size("Helvetica-Bold",50)
    label:setFont(font)
    self:view():addSubview(label)

--添加一个button
    local pushButton = UIButton:buttonWithType(UIButtonTypeCustom)
    pushButton:setFrame(CGRect(20, 220, 220, 40))
    pushButton:setTitle_forState("这个是按钮",UIControlStateNormal)
    pushButton:setTitle_forState("这个是按钮",UIControlStateHighlighted)
    pushButton:setTitleColor_forState(UIColor:redColor(),UIControlStateNormal)
    --pushButton:setBackgroundImage_forState(UIImage:imageNamed("taiguoguoqi"), UIControlStateNormal)
    pushButton:setBackgroundColor(UIColor:blueColor())
    pushButton:addTarget_action_forControlEvents(self,"onButtonClick:",UIControlEventTouchUpInside)
    self:view():addSubview(pushButton)


end


--button点击事件

function onButtonClick(self, sender)
    puts("button点击")
    local statesTable = StatesTable:init()
    self:navigationController():pushViewController_animated(statesTable, true)
end