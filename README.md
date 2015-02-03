开发环境：Ubuntu14.10 + Qt5.4

初期定位做一个跨平台（Android IOS Linux WIN8.1）的135note application，主要实现待办事项记录和日常提醒功能。

方法引用网站http://segmentfault.com/blog/jk/1190000000667272

功能需求、目标：
    1、完成引用网站的基本功能；
    2、实现跨平台；
    3、实现数据加密；
    4、绑定keepass密码生成及保存功能；
    5、实现提醒功能。
    ...
目前一步一步来，有后续需求再补充...

v0.1.2:
    已知BUG：
        main.qml中Titlebar onStateChanged无法对点击做出响应。
        
    Line.qml:
        用作修饰线类
        
    ActionButton.qml:
        一个可重用的按钮，它可以是一个图标按钮，也可以是文字按钮，也可以是两者的叠加。
        图片：等比缩放，需要在定义Image对象时指定其长宽，否则等比设定无效。
        文字：文字的大小将根据按钮的大小自动缩放。

v0.1.1：
    fixed Column不显示titlebar的bug
    
v0.1:
    第一个启动版本。
    Titlebar.qml:
        显示顶栏标题。
        bug：无法显示颜色修改后的结果。
    
    TodoCpp.cpp:
        为QML层提供基础的功能接口
        函数：void TodoCpp::saveItems(const QVariantList &list)
            保存items list
        函数：QVariantList TodoCpp::getItems()
            读取items list
        
    main.qml:
        函数：function saveItems()
            保存事项记录。
        对象：Rectangle backgroundColor
            用于显示背景颜色，此处用途模糊。
        对象：Column：
            增加title标题栏并设置宽度，如果不设置宽度，Column会认为不显示此栏
        
    main.cpp:
        增加QML调用C++对象的接口：engine.rootContext()->setContextProperty("todoCpp", &cpp);
        
