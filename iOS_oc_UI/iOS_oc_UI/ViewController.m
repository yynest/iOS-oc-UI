//
//  ViewController.m
//  iOS_oc_UI
//
//  Created by Fedora on 2024/4/17.
//


#import "ViewController.h"
#import "TextFieldVC.h"

//导入代理需要的两个协议
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *uiList;
}


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"UI元素";
    uiList = @[@"TextField",@"Button",@"Label",@"Toobar",@"StatusBar",@"NavigationBar",@"TabBar",@"ImageView",@"ScrollView",@"TableView",@"TextView",@"ViewTransition",@"Picker",@"Switch",@"Slider",@"Alert",@"Icon"];
    //表视图的初始化
    //Grouped属性，在滚动时分区头部一起移动
    UITableView *myTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //添加到父视图
    [self.view addSubview: myTableView];
    //设置两个代理
    myTableView.delegate = self;//负责外观
    myTableView.dataSource = self;//负责数据
    
    //行高
    myTableView.rowHeight = 70;
    //分割线
    myTableView.separatorColor = [UIColor blueColor];
    myTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //置顶视图
    myTableView.tableHeaderView = [[UIView alloc]init];
    //置底视图
    myTableView.tableFooterView = [[UIView alloc]init];
    //section标题的颜色
    myTableView.sectionIndexColor = [UIColor redColor];
 
}


//返回每个分区下的单元格个数，必须实现
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return uiList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0;
}

//定制每个单元格,indexPath:当前定位的单元格位置,它有两个属性:indexPath.section,indexPath.row
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //cell重用机制
    
    //定义重用标示符
    static NSString* cellId = @"CELL";
    //每次需要使用单元格的是，先根据重用标识符从重用队列中获取单元格，如果队列中没有，再进行初始化新的单元格
    //每次都会先创建一屏幕的cell，当有cell出屏幕，就会根据重用标识符添加到对应的重用队列中，当屏幕外的cell要进入屏幕，先从队列中获取，如果没有，则初始化cell
    //当重用cell时，需要对上面的控件程序赋值
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    //如果从重用队列中未获取cell，也就是Cell为空
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
        //系统提供的控件要配合不同的样式来使用
    }
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
   //选中效果
     cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //辅助视图的样式,右侧会有一个小图标
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    //设置左侧图片
    cell.imageView.image = [UIImage imageNamed:@"10.png"];
    //标题视图
    cell.textLabel.text = uiList[row];
    cell.detailTextLabel.text = @"detail详细内容";
    
 
    //为相应位置返回定制好的单元格
    return cell;
 
}
 
//注册单元格之后的写法，不用判断cell是否存在，不用初始化，直接使用
 
//需要在viewdidLoad中写下面这行注册代码
 
//注册单元格,
    //第一个参数为所使用的单元格类型
    //第二个参数为单元格的重用标示符
//    [myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
//但是无法修改cell的样式,只能使用default样式
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
// UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
// cell.detailTextLabel.text = @"asdas"; cell.textLabel.text = @"1111";// return cell;//
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    NSString *string = [NSString stringWithFormat:@"%@VC",uiList[row]];
    
    UIViewController *vc = [[NSClassFromString(string) alloc] init];
    if (vc) {
        vc.title = uiList[row];
        [self.navigationController pushViewController:vc animated:YES];
    }
    

    
}
@end
