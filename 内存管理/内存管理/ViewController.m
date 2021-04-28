//
//  ViewController.m
//  内存管理
//
//  Created by 郁铭扬 on 2021/4/28.
//

#import "ViewController.h"
#warning 参考地址  https://www.jianshu.com/p/07a4bcfc9b4a
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"lalala");
}

//一、内存布局
//1、内存五大区域的介绍
/*
 栈区
 创建临时变量时由编译器自动分配，在不需要的时候自动清除的变量的存储区。里面的变量通常是局部变量、函数参数等
 在一个进程中，位于用户虚拟地址空间顶部的是用户栈，编译器用它来实现函数的调用
 和堆一样，用户栈在程序执行期间可以动态地扩展和收缩，向下增长
 </ul>
 堆区
 <ul>
 <li>通过<code>new</code>、<code>alloc</code>等分配，<code>block</code>经过<code>copy</code>后的对象。</li>
 <li>堆可以动态地扩展和收缩，向上增长。</li>
 </ul>
 <p>它们的释放系统不会主动去管，由我们的开发者去告诉系统什么时候释放这块内存(一个对象引用计数为0是系统就会销毁该内存区域对象)。</p>
 <p>一般一个 <code>new</code> 就要对应一个<code>release</code>。在<code>ARC</code>下编译器会自动在合适位置为<code>OC</code>对象添加<code>release</code>操作，会在当前线程<code>Runloop</code>退出或休眠时销毁这些对象。</p>
 <p><code>NSString</code>的对象就是<code>stack</code> 中的对象，<code>NSMutableString</code> 的对象就是<code>heap</code> 中的对象。前者创建时分配的内存长度固定且不可修改；后者是分配内存长度是可变的。两类对象的创建方法也不同，前者直接创建<code>NSString * str1=@"welcome";</code>，而后者需要先分配再初始化<code>NSMutableString * mstr1=[[NSMutableString alloc] initWithString:@"welcome"];</code>。</p>
 <h5>bss（静态区）</h5>
 <p>未初始化的全局变量和静态变量，程序运行过程内存的数据一直存在，程序结束后由系统释放。</p>
 <h5>data（常量区）</h5>
 <p>已初始化的全局变量、静态变量、常量，在程序结束后由系统释放。</p>
 （代码区）
 <p>用于存放程序运行时的代码，是被编译成二进制的程序代码。</p>
 
 */



//2、Demo演示





@end
