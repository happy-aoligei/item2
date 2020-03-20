基于EF+MVC+Bootstrap的通用后台管理系统
Framework 业务无关的底层通用机制及功能
Model基类：提供数据传输和底层的最基本的基类及接口
DAL底层：基于EF code first，提供Repository泛型方法及写历史日志
Untility：通用函数库，基本都全了
Web：复写MVC基类，及通用MVC控件
&nbsp;
通用模块Core 核心功能模块，包括缓存管理，配置管理，日志管理，服务管理......
缓存模块：提供对分布式缓存的Provider扩展
配置模块：基于正则的配置管理及CURD机制
日志模块：基于Log4net扩展
服务模块：默认使用引用Bll，可扩张调用Wcf服务，且拦截服务
上传模块：通用upload handler，及缩略图生成方式（按需生成，即时生成，延迟生成）
管道模块：通用HttpModule，用于注入通用功能到各个应用及网站
&nbsp;
应用模块三层架构 提供OA,CMS,CRM系统的原型及DAL,IBLL及BLL实现
Account：用户认证，可自己扩张到SSO单点登录
Account: 安全验证码实现
Account: 轻量级权限系统
OA：提供OA里人员，部门管理及分配的场景实例
CRM：客户管理系统原型
CMS：内容发布系统原型
&nbsp;
数据层(DAL)：
采用Code first POCO方式
提供实体设计：一对一，一对多，多对多，自引用的各种使用场景
&nbsp;
业务逻辑层(BLL)：
实现CURD方法
提供复杂查询场景
提供业务异常抛出
对后端异常进行拦截写日志
对写操作进行写历史，用于追踪
IBLL：
服务接口，可扩展用WCF发布BLL作为服务
&nbsp;
&nbsp;
前端框架及实现 MVC,Bootstrap..........
基于Bootstrap：基于&ldquo;Metronic&nbsp; Bootstrap&nbsp; Theme&rdquo;模板
MVC 4.0：CURD操作基于MVC Model Binder
Silverlight 5：OA里组织图OrgChart拖拽操作
封装Context：封装ConfigContext,CacheContext,UserContext,CookieContext..
上传控件：Uploadify使用实例
Jquery：除Metronic模板在Assets文件夹，Content文件夹加入需要的Jquery插件
提供富文本编辑器，标签，JS曲线图等实例
&nbsp;
&nbsp;
&nbsp;
源码其部署 
平台：VS2010+，Sql Server, MVC4，Silverlight5_Tools(可选)
脚本部署：新建右图5个库，并执行源码里的Deploy.sql初始化表和数据
配置更改：更改GMS.Web.Admin\Config\DaoConfig.xml下的数据库连接字符串
启动：VS IIS Express或建立IIS对应网站（主网站项目GMS.Web.Admin）
登录：初始化用户名：admin 密码：111111





