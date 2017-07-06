# 关于 !a and a == False

> 求不骂声明：所有涉及到的代码都是一个熬夜的苦逼孩子拿VcCode手撸的，如果错了还请各位看官不要喷我。

## 背景

> 2017-07-06

今晚儒哥给我送西瓜吃，谈到之前他做对日的时候的一段代码。

``` python
a = True; // 这句是强行给的，其实可能要经过复杂的算式
if (a == True):
    print('怕不怕!')
```
_儒哥说的代码是Java，然而我好几年没写过Java了，不会，就用python代替了，如果python写的也不对，那你可以骂我了，但是请允许我回骂。。。_

## 儒哥的想法

> 变量本身就是一个Bool类型，在if条件语句中插入的也是Bool类型，还要写 `a == True`，是不正确的代码。

## 我的看法

我先亮兵器了：
> 我觉得`if (a == True)`的可读性更高。

__先别骂我，不妨往下看。__

如果是做过`iOS`开发的同学一定对这样的代码很熟悉：
``` ObjectiveC
- (UIView *)contentView
{
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
    }
    return _contentView;
}
```

每次我看到形如`if (!_contentView)`的代码时候，我都要思考一下，到底是何种情况下会走 then 呢。。。可能我是一个假程序员。

而我喜欢这种写法，并且也一直在我的程序中践行这种写法：
``` ObjectiveC
- (UIView *)contentView
{
    if (_contentView == nil) // 有的人喜欢这么写 (nil == _contentView)，个人感觉这不符合现代中国人的阅读习惯，隔古代从右至左的阅读习惯，可能更受欢迎
    {
        _contentView = [[UIView alloc] init];
    }
    return _contentView;
}
```
这里我给`swift`打个广告。如果用swift写这个懒加载的代码：
``` swift
lazy var contentView = UIView(frame:CGRect.zero)
```
四不四很简洁！？


所以那个对日的中国女同事的写法还是在一定的人群中会得到赞赏的。同时也不得不说日本人做事严谨。

## 我的错误想法

在试图解释这个问题的时候我想到了强类型和弱类型语言。我在想：强类型语言是不是不能这么写：
``` python
a = ''
if a:
    print('怕了吗')
```

因为强类型不经过强制类型转换是不能把一个类型作为另一个不同的对象处理的。但是合理明显 `string` 作为了 `Bool` 处理。但是我错了，`python`就是强类型语言：
``` python
print(1 + '2')
```
就会报错。

但是`python`却可以如上例说写，上例也就是一段`python`代码。

能不能实现把其他类型作为`Bool`类型处理是要看语言实现的。

- 参考链接
  - [强类型语言和弱类型语言](http://blog.csdn.net/gs_008/article/details/51278770)

可能我又错了。如果以后能找到类似资料再回头补充。

儒哥就说了一句话，我就写这么多抱怨，儒哥看到一定要把我挂窗帘上了。。。
