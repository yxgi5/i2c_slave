# i2c_slave
i2c_slave

------------------------------------

主状态有

IDLE: 初始化数据 释放总线 stop计数(start-1) 等待start->READCTRL 否则->IDLE

READCTRL: 只读进控制字 控制字i2c地址不匹配->IDLE 根据start计数 如果是restart -> RD_ST 不是则->READREG

READREG 读进存储单元地址 如果不是restart ->WR_ST

WR_ST: 如果有 restart ->READCTRL else 读进接收的数据, 写入保存位置 完毕后->IDLE

RD_ST: 串出数据->IDLE

仅实现随机读写的功能,8字节内部寻址 基本功能仿真ok 没有加采样delay

------------------------------------

取消task传递参数，增强可移植性。

------------------------------------

artix-7 和 xo2 工程验证分支。

------------------------------------

添加了16bit内部寄存器模式选择参数。