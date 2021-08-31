---
categories: C++
tags: STL
title: STL选讲
description: C++ STL选讲  Standard Template Library
abbrlink: 5df74a9a
cover: 'https://7.dusays.com/2021/05/23/d03421b945271.jpg'
sticky: 3
copyright: true
---

### STL是什么

STL是建立在模板函数和类模板基础之上的功能强大的库，包括：
	—— 1）常用算法函数（如统计、排序、查找等）
	—— 2）容器

​	容器：存放数据的数据结构，例如数组、队列、栈、链表、树、图等，分为：
​		——顺序容器：是指数据逻辑上、物理上都是按顺序存放的。 

​				常见的有：vector、queue、stack、deque。 

​		——关联容器：存放的数据逻辑上有一定关联，但不一定是按顺序存放的 

​				常见的有set、multiset、map、multimap

​	迭代器(iterator):类似于C++中的指针，你可以把它看作是容器的数据存取员，通过它可以依次存取容器中的元素。不同的容器需要不同的迭代器，但这些迭代器的使用方法却类似。

<!-- more -->

### sort

#### 定义及简单变量类型数组排序

​	我们学过选择排序、冒泡排序、插入排序等各种排序算法，其实STL给我们提 供了排序函数sort，我们可以直接使用它！例如： 

```c++
int a[100010],n; 
cin>>n; 
for(int i=0;i<n;i++)
    cin>>a[i]; //需要排序，可以直接调用STL排序函数 
sort(a,a+n); //将a数组下标[0,n)区间元素（左闭右开）排序，默认按从小到大顺序排列 
for(int i=0;i<n;i++)
    cout<<a[i]<<" ";
```

​	sort是STL里的一个排序函数，包含在<algorithm>头文件中，它是利用快速 排序算法实现并进行优化的，具有非常高的效率，其时间复杂度为O(nlogn) 

```c++
sort(a,a+n,greater<int>()); 
//greater<int>()表示C++内置类型从大到小排序，尖括号里面int表示数组元素的数据类型
//如果是其他类型，就写相应的变量类型,如double等
//相对应还有less<int>()表示从小到大排序，这是系统默认的，可以省略。同样也可以使用函数来代替
//例如:
bool cmp(int a,int b)
{
	return a > b;//降序排列
}
sort(x,x+n,cmp);
```

#### sort对结构体排序

​	sort除了对简单变量类型数组进行排序外，还可以对自定义的结构体数组进行排序。 

​	只是要提供结构体比较大小的函数，因为C++不知道自定义的结构体变量 谁大谁小。我们可以通过在结构体内添加比较大小的函数来实现！

##### 结构体成员函数介绍

​	结构体内其实除了定义“成员变量” ，将这些成员变量组合在一起之外，它的功 能非常强大，还可以在结构体内定义函数，我们称其为“成员函数”。

​	成员函数主要完成跟结构体相关的功能，它可以直接调用结构体的成员变量，还 可以通过形参接受调用者传递进来的参数。例如：

```c++
struct Student{ 
    string Name; 
    int Chinese,Math,English,sum; 
    int GetSum(){ 
        sum=Chinese+Math+English; 
        return sum; 
    } 
}
int main(){ 
    Student stu; 
    stu.Chinese=120; 
    stu.Math=130; 
    stu.English=90; 
    cout<<stu.GetSum()<<endl; 
}
>>输出 340
```

##### 运算符重载

​	为了完成结构体比较大小的功能，我们可以在结构体里面定义一个比较大小的函数 。因为STL提供的算法函数、容器一般是调用小于运算符比较大小，所以我们这里重载 小于运算符，这样结构体就可以直接用小于运算符比较大小了。例如：

```c++
struct node{ 
    int x,y; 
    bool operator<(node const &a)const { //重载<运算符 
        return x<a.x; 
    } 
};
//operator	相当于函数名，固定格式，照样子写即可
//const &a	表示形参是常变量，函数中不允许修改形参
//后一个const	表示该函数是常函数，不允 许修改结构体成员变量的值
```

##### 运算符重载函数的调用

例如：

```c++
...//结构体与上文一样

node a,b; 
a.x=12;
a.y=3; 
b.x=8;
b.y=9; 
if(a<b)
    cout<<"a<b"; 
else 
    cout<<"a>=b"; 
>>输出 "a>=b"
```

​	重载运算符我们可以把它看作是一类特殊的成员函数,a<b本质是a.operator<(b)，这里小于运算符是a的成员函数。所以重载运算符时传递的参数 只有一个。 

```c++
struct node{ 
    int x,y; 
    bool operator<(node const &a)const { 
        return x<a.x;//从小到大排
    } 
};
node p;
sort(p,p+n);

//同样也可以写函数排序

bool cmp(node a,node b)
{
	return a.x < b.x;
}
sort(p, p+n, cmp);
```

补充: 初始化成员变量

```c++
struct node{ 
    double x,y; 
    node(int _x=0,int _y=0):x(_x),y(_y){} //构造函数，完成成员变量初始化 
}
```



### vector

#### vector的定义

​	vector是一种顺序容器，可以把它看作数组，是长度可变的动态数组。它的 储存空间根据存入数据多少自动分配，包含在<vector>头文件中。

例如：

```c++
vector<double>a; vector<string>a; vector<Node>a;//Node为自定义的结构体 
//定义时初始化： 
    vector<int>a(10);//定义初始大小为10个元素的vector，初始值为0 
	vector<int>a(10,2);//定义时给定大小为10，每个元素初始化为2 
//定义时用数组初始化： 
	int b[10]={1,2,3,4,5,6,9,10,12,32}; 		
	vector<int>a(b+1,b+8);//用数组初始化，参数为迭代器，数组元素就是其地址 
//vector数组： 
	vector<int>a[100];//vector数组，相当于二维数组 
//特别注意：
	vector<int>a(10)和vector<int>a[10]的区别 
```

#### vector的引用

##### 下标[]访问

略

##### 迭代器访问

```c++
vector<int> ::iterator it;  //定义一个可以访问整型的vector的迭代器。 
vector<int>a; 
............................. 
for( it=a.begin(); it!=a.end();  it++ ) 		cout<< *it <<" "; 
```

​	a.begin()返回指向第一个元素的迭代器；a.end()返回指向最后一个元素 下一个元素位置的迭代器（左闭右开）；
​	it!=a.end(); 为结束条件，迭代器一般不比较大小，关联容器的迭代器不 能比较大小，只能判断是否相等；迭代器相当于指针，对于简单变量类型 *it就是 迭代器指向的数据元素的值。

#### 成员函数

1. push_back()   在vector的最后添加一个数据元素，复杂度O(1)
2. pop_back()   删除最后一个数据元素.复杂度O(1) 
3. begin ()     返回指向容器第一个元素的迭代器 .例如：it=a.begin();
4. end ()    返回指向容器尾端的迭代器.例如：it=a.end();
5. size ()     返回vector中数据元素的个数, 复杂度O(1).
	例如：for(int i=0; i<a.size(); i++) cout<<a[i]<<" ";
6. resize (n)   重设容器数据元素为n个，它改变size()的返回值.如果n大于当前元素个数，则新增元素用默认值初始化，已有的元素不受影响. 如果n比当前数据元素个数小，则多余的舍弃，仅改变size()返回值
7. erase    删除;可以删除单个数据元素，也可以删除一个左闭右开区间内的元素
   例如：c.erase (pos);     //删除迭代器pos指向位置的元素 c.erase(bg,ed); // 删除迭代器[bg,ed)区间的数据 
8. clear ()         清空当前的vector，将size()归零，复杂度O(1).
9. rbegin()       返回指向最后一个元素的迭代器，用于逆向访问容器，这时要定义逆向迭代器，例如：vector<int>::reverse_iterator it;
10. rend()          返回指向第一个元素前一个位置的迭代器，逆向访问的结束位置
11. empty()     判断容器是否为空,若为空返回true，否则返回false
12. insert ()     插入一个元素。 vector采用分块储存技术，时间复杂度O(log(size()) 
    例如：c.insert(pos,elem); // 在迭代器pos指向元素前面插入elem. 				   
    c.insert(pos,ncount,elem);//在迭代器pos前插入ncount个elem           
    c.insert(pos,first,end);//在迭代器pos前插入区间[first,end)的元素，first和end也是迭代器，表示的区间是左闭右开。
