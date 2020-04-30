
## HookLoadSample

* hook load 方法
* 在第一个加载的动态库进行hook
* ref : [Hook所有+load方法（包括Category）](https://everettjf.github.io/2018/08/19/ios-hook-really-all-load/)

## hookApp

* 在非越狱手机上进行App Hook
* 通过 yololib 在原app中注入动态库 ； 并在动态库中使用 captionHook进行 hook
* ref : [iOS冰与火之歌番外篇 在非越狱手机上进行App Hook](https://wooyun.js.org/drops/iOS%E5%86%B0%E4%B8%8E%E7%81%AB%E4%B9%8B%E6%AD%8C%E7%95%AA%E5%A4%96%E7%AF%87%20-%20%E5%9C%A8%E9%9D%9E%E8%B6%8A%E7%8B%B1%E6%89%8B%E6%9C%BA%E4%B8%8A%E8%BF%9B%E8%A1%8CApp%20Hook.html)

## CPU 占用率

* snippets : [CPUMonitor](./CodeSample/CodeSample/Monitor/CPUMonitor.m)

## 代码混淆 

* define 替换文本进行混淆
* code : [CodeConfusion](https://github.com/cAibDe/CodeConfusion)
* ref : [iOS安全攻防（二十三）：Objective-C代码混淆](https://blog.csdn.net/yiyaaixuexi/article/details/29201699)