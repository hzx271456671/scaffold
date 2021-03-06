# scaffold

*scaffold*是一个基于[Yii2高级项目模版](https://github.com/yiisoft/yii2-app-advanced)工程化实现的应用程序，它将更加高效、规范和工程化的满足项目开发的需求。

*scaffold*包含五层：*app*、*pc*、*h5*、*admin*和*console*，每个层次都是独立的Yii应用程序。并且同样*Out of the box*。

此外，*scaffold*还完美融合了*Cloud Native*、*Sentry*、*fis前端工程化*等技术。

[![Yii2](https://img.shields.io/badge/Powered_by-Yii_Framework-green.svg?style=flat)](http://www.yiiframework.com/)
[![Apache--2.0](https://img.shields.io/badge/LICENSE-Apache--2.0-blue.svg)](https://github.com/yiiplus/scaffold/blob/master/LICENSE)
![Jenkins](https://img.shields.io/jenkins/s/https/jenkins.qa.ubuntu.com/view/Precise/view/All%20Precise/job/precise-desktop-amd64_default.svg)
[![DOCS](https://img.shields.io/badge/docs-passing-orange.svg)](https://github.com/yiiplus/scaffold/tree/master/docs)

## 安装
- Yii的最低PHP版本是PHP 5.4。
- 它最适合PHP 7。
- 阅读[本地容器化部署指南](https://github.com/yiiplus/scaffold/blob/master/docs/本地容器化部署指南.md)完成项目安装。

## 文档
- Yii 提供了一整套用来简化实现 RESTful 风格的 Web Service 服务的 API，点击查看[文档](https://github.com/yiiplus/scaffold/blob/master/docs/RESTFULAPI.md)
- 关于yii2与FIS3工程化结合，请访问[FIS3前端工程化指南](https://github.com/yiiplus/scaffold/blob/master/docs/FIS3前端工程化指南.md)
- admin层集成了AdminLTE模版及RBAC权限控制，请访问[ADMINLTE_RBAC](https://github.com/yiiplus/scaffold/blob/master/docs/ADMINLTE_RBAC.md)进行初始化
- 错误日志聚合平台实现，请访问此[地址](https://github.com/yiiplus/scaffold/blob/master/docs/错误日志聚合平台.md)查看文档

## 目录树
```$xslt
common
    config/              包含common配置
    mail/                包含电子邮件的查看文件
    models/              包含在admin、app、h5和pc中使用的模型类
    tests/               包含常见类的测试   
console
    config/              包含console配置
    controllers/         包含console controllers (commands)
    migrations/          包含数据库迁移
    models/              包含特定于console的模型类
    runtime/             包含运行时生成的文件
app
    assets/              包含应用程序资源，如JavaScript和CSS
    config/              包含app配置
    modules/             包含app模块
        v1/              包含app的v1版本模块
        v2/              包含app的v2版本模块
    runtime/             包含运行时生成的文件
    tests/               包含app应用程序的测试
    web/                 包含app入口脚本和资源
admin
    assets/              包含应用程序资源，如JavaScript和CSS
    config/              包含admin配置
    controllers/         包含admin controllers (commands)
    models/              包含特定于admin的模型类
    runtime/             包含运行时生成的文件
    tests/               包含test应用程序的测试
    views/               包含admin应用程序的视图文件
    web/                 包含admin入口脚本和资源
h5
    assets/              包含应用程序资源，如JavaScript和CSS
    config/              包含h5配置
    controllers/         包含h5 controllers (commands)
    fis3/                包含h5Fis3前端模块
    models/              包含特定于h5的模型类
    runtime/             包含运行时生成的文件
    tests/               包含test应用程序的测试
    views/               包含h5应用程序的视图文件
    web/                 包含h5入口脚本和资源
pc
    assets/              包含应用程序资源，如JavaScript和CSS
    config/              包含pc配置
    controllers/         包含pc controllers (commands)
    fis3/                包含pcFis3前端模块
    models/              包含特定于pc的模型类
    runtime/             包含运行时生成的文件
    tests/               包含test应用程序的测试
    views/               包含pc应用程序的视图文件
    web/                 包含pc入口脚本和资源
cloud
    local/               本地容器化部署
    tradition/           包含传统架构下使用Jenkins实现的CI\CD
    cloudnative/         包含云原生架构下，Jenkins配合Kubernetes实现在容器云下的CI\CD
vendor/                  包含相关的第三方软件包
environments/            包含基于环境的覆盖
```