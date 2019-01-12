# java-project3
----------------------------------
### 用到的技术:
spring+springmvc+mybatis+jquery<br/>
数据库:
mysql<br/>
分页:
pagehelper

### 简单的介绍:
这是一个在线考试系统，老师能登录后台进行相关操作，学生进行考试，页面做的不是特别好看，主要是熟悉crud的一些操作和框架的整合.

### 遇到的一些问题:<br/>
1.在配置好ssm环境后启动报错:```org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'sqlSessionFactoryBean' defined in class path resource [spring/spring.xml]: Invocation of init method failed; nested exception is org.springframework.core.NestedIOException: Failed to parse config resource: class path resource [spring/mybatis-config.xml]; nested exception is org.apache.ibatis.builder.BuilderException: Error parsing SQL Mapper Configuration. Cause: org.apache.ibatis.builder.BuilderException: The setting  is not known.  Make sure you spelled it correctly (case sensitive).
```<br/>答:原因是因为mybatis-config中有setting写错了，我多写了一个```<setting name="",value=""></setting>```(不知道什么时候手抽了)
<br/><br/>2.StudentDaoImpl单元测试时，student这个bean在xml中配置了但在单元测试时一直为空:
<br/>答：https://stackoverflow.com/questions/50626457/i-defined-a-bean-in-spring-xml-and-i-want-to-use-the-bean-in-the-java-code-by-us
<br/><br/>3.判断单选框是否被选中以及获得其中的值:
<br/>答:http://www.jb51.net/article/64141.htm
<br/><br/>4.mybatis报错:```org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property='subjectTitle', mode=IN, javaType=class java.lang.Object, jdbcType=null, numericScale=null, resultMapId='null', jdbcTypeName='null', expression='null'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0).
```<br/>答:报错是说参数有错误，我的select语句是这么写的```<select>select * from tb_subject where subjectTitle like '%#{subjectTitle}%'</select>```,但是这么写在mybatis中是不对的，http://w6513017.iteye.com/blog/1512761
<br/><br/>5.从数据库中随机的查数据:
http://www.jb51.net/article/42229.htm
<br/><br/>6.试卷页面我本来是想分页做的，但是我查询的时候就是用的limit，它分页时也是用的limit，就变成了```select * from tb_subject limit 20 limt 10```这样就报错了，不知道怎么办<br/>
### 能够改进的地方:
1.学生注册时忘记做验证了，你不填也能够注册进去。(最后检验的时候才发现，那为什么不改呢？？？因为我懒，嘤嘤嘤)<br/>
2.所有的验证都只是前端验证，其实应该要前后端都要验证，最少也要后端验证。(那为什么不进行后端验证呢？？？...嘤嘤嘤)<br/>
3.拓展性不够好，很多地方都写死了，就比如老师不能修改考试时间<br/>
4.没有过滤特殊字符,没有限制输入的格式长度.<br/>
能够改进的地方太多了,就不一一列举了...<br/>
### 做的比较好的地方:
1.架构分成了四层:①表现层②业务逻辑层③持久层④数据库层,写代码时思路就比较清晰.<br/>
2.修改试题 增加试题 删除试题 都是用的同一个success.jsp通过```<c:choose><c:when></c:when></c:choose>```实现.
3.这次不像<a href="https://github.com/wantao666/java-project2" target="_blank">java-project2</a>那样自己写的分页，而是用的刘增辉大神写的pagehelper,真的简单多了.

### 项目截图
0.项目目录
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/25.png?raw=true">
<br/>
1.首页
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/1.png?raw=true">
<br/>
2.注册页面
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/2.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/3.png?raw=true">
<br/>
 3.管理员登录
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/4.png?raw=true">
<br/>
 4.管理员登录首页
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/5.png?raw=true">
<br/>
 5.导入试题
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/6.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/7.png?raw=true">
<br/>
6.管理试题
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/8.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/10.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/11.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/12.png?raw=true">
<br/>
7.查看试题
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/9.png?raw=true">
<br/>
 8.查看试题
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/13.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/14.png?raw=true">
<br/>
 9.管理学生
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/15.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/16.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/17.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/18.png?raw=true">
<br/>
 10.学生登录
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/19.png?raw=true">
<br/>
 11.学生首页
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/20.png?raw=true">
<br/>
12.学生考试界面
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/21.png?raw=true">
<br/>
13.自动得出分数界面
<br/>
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/22.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/23.png?raw=true">
<img src="https://github.com/wantao666/java-project3/blob/master/result-image/24.png?raw=true">
<br/>
