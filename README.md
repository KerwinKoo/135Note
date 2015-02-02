初期定位做一个跨平台的135note application，主要实现待办事项记录和日常提醒功能。

方法引用网站http://segmentfault.com/blog/jk/1190000000667272

功能需求、目标：
    1、完成引用网站的基本功能；
    2、实现跨平台；
    3、实现数据加密；
    4、绑定keepass密码生成及保存功能；
    5、实现提醒功能。
    ...
目前一步一步来，有后续需求再补充...
    
v0.1:
    第一个启动版本。
    TodoCpp.cpp:
        为QML层提供基础的功能接口
        函数：void TodoCpp::saveItems(const QVariantList &list)
        保存items list
        函数：QVariantList TodoCpp::getItems()
        读取items list
        
    main.cpp:
        增加QML调用C++对象的接口：engine.rootContext()->setContextProperty("todoCpp", &cpp);
        
