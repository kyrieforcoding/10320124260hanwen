#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class yonghu(BaseModel):
    __doc__ = u'''yonghu'''
    __tablename__ = 'yonghu'

    __loginUser__='zhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='zhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    zhaopian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='照片' )
    '''
    zhanghao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    youxiang=VARCHAR
    shouji=VARCHAR
    zhaopian=VARCHAR
    '''
    class Meta:
        db_table = 'yonghu'
        verbose_name = verbose_name_plural = '用户'
class yisheng(BaseModel):
    __doc__ = u'''yisheng'''
    __tablename__ = 'yisheng'

    __loginUser__='yishengzhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='yishengzhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yishengzhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='医生账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    yishengxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='医生姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    yishengtouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生头像' )
    '''
    yishengzhanghao=VARCHAR
    mima=VARCHAR
    yishengxingming=VARCHAR
    xingbie=VARCHAR
    youxiang=VARCHAR
    shouji=VARCHAR
    yishengtouxiang=VARCHAR
    '''
    class Meta:
        db_table = 'yisheng'
        verbose_name = verbose_name_plural = '医生'
class dengdaijiuzhen(BaseModel):
    __doc__ = u'''dengdaijiuzhen'''
    __tablename__ = 'dengdaijiuzhen'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    keshijiuzhen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='科室就诊' )
    huanzhexingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者姓名' )
    paiduishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='排队时间' )
    jiuzhenzhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊状态' )
    huanzhetouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者头像' )
    '''
    keshijiuzhen=VARCHAR
    huanzhexingming=VARCHAR
    paiduishijian=DateTime
    jiuzhenzhuangtai=VARCHAR
    huanzhetouxiang=VARCHAR
    '''
    class Meta:
        db_table = 'dengdaijiuzhen'
        verbose_name = verbose_name_plural = '等待就诊'
class zhengzaijiuzhen(BaseModel):
    __doc__ = u'''zhengzaijiuzhen'''
    __tablename__ = 'zhengzaijiuzhen'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jiuzhenbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='就诊编号' )
    keshijiuzhen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='科室就诊' )
    huanzhexingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者姓名' )
    paiduishijian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='排队时间' )
    jiuzhenzhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊状态' )
    yishengzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生账号' )
    yishengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生姓名' )
    huanzhetouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者头像' )
    '''
    jiuzhenbianhao=VARCHAR
    keshijiuzhen=VARCHAR
    huanzhexingming=VARCHAR
    paiduishijian=VARCHAR
    jiuzhenzhuangtai=VARCHAR
    yishengzhanghao=VARCHAR
    yishengxingming=VARCHAR
    huanzhetouxiang=VARCHAR
    '''
    class Meta:
        db_table = 'zhengzaijiuzhen'
        verbose_name = verbose_name_plural = '正在就诊'
class guohaojiuzhen(BaseModel):
    __doc__ = u'''guohaojiuzhen'''
    __tablename__ = 'guohaojiuzhen'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jiuzhenbianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊编号' )
    keshijiuzhen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='科室就诊' )
    huanzhexingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者姓名' )
    paiduishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='排队时间' )
    jiuzhenzhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊状态' )
    yishengzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生账号' )
    yishengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生姓名' )
    huanzhetouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者头像' )
    guohaoshijian=models.DateField   (  null=True, unique=False, verbose_name='过号时间' )
    '''
    jiuzhenbianhao=VARCHAR
    keshijiuzhen=VARCHAR
    huanzhexingming=VARCHAR
    paiduishijian=DateTime
    jiuzhenzhuangtai=VARCHAR
    yishengzhanghao=VARCHAR
    yishengxingming=VARCHAR
    huanzhetouxiang=VARCHAR
    guohaoshijian=Date
    '''
    class Meta:
        db_table = 'guohaojiuzhen'
        verbose_name = verbose_name_plural = '过号就诊'
class wanchengjiuzhen(BaseModel):
    __doc__ = u'''wanchengjiuzhen'''
    __tablename__ = 'wanchengjiuzhen'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jiuzhenbianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊编号' )
    keshijiuzhen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='科室就诊' )
    huanzhexingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者姓名' )
    paiduishijian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='排队时间' )
    jiuzhenzhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊状态' )
    yishengzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生账号' )
    yishengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生姓名' )
    huanzhetouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者头像' )
    wanchengshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='完成时间' )
    '''
    jiuzhenbianhao=VARCHAR
    keshijiuzhen=VARCHAR
    huanzhexingming=VARCHAR
    paiduishijian=VARCHAR
    jiuzhenzhuangtai=VARCHAR
    yishengzhanghao=VARCHAR
    yishengxingming=VARCHAR
    huanzhetouxiang=VARCHAR
    wanchengshijian=DateTime
    '''
    class Meta:
        db_table = 'wanchengjiuzhen'
        verbose_name = verbose_name_plural = '完成就诊'
class zhonghujiuzhen(BaseModel):
    __doc__ = u'''zhonghujiuzhen'''
    __tablename__ = 'zhonghujiuzhen'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    jiuzhenbianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊编号' )
    keshijiuzhen=models.CharField ( max_length=255, null=True, unique=False, verbose_name='科室就诊' )
    huanzhexingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者姓名' )
    paiduishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='排队时间' )
    jiuzhenzhuangtai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='就诊状态' )
    yishengzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生账号' )
    yishengxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='医生姓名' )
    huanzhetouxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='患者头像' )
    zhonghushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='重呼时间' )
    '''
    jiuzhenbianhao=VARCHAR
    keshijiuzhen=VARCHAR
    huanzhexingming=VARCHAR
    paiduishijian=DateTime
    jiuzhenzhuangtai=VARCHAR
    yishengzhanghao=VARCHAR
    yishengxingming=VARCHAR
    huanzhetouxiang=VARCHAR
    zhonghushijian=DateTime
    '''
    class Meta:
        db_table = 'zhonghujiuzhen'
        verbose_name = verbose_name_plural = '重呼就诊'
class news(BaseModel):
    __doc__ = u'''news'''
    __tablename__ = 'news'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    introduction=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    picture=models.CharField ( max_length=255,null=False, unique=False, verbose_name='图片' )
    content=models.TextField   ( null=False, unique=False, verbose_name='内容' )
    '''
    title=VARCHAR
    introduction=Text
    picture=VARCHAR
    content=Text
    '''
    class Meta:
        db_table = 'news'
        verbose_name = verbose_name_plural = '医院新闻'
