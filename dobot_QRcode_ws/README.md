# dobot_QRcode_ws
## 功能
通过摄像头识别二维码，并将二维码中的指令发送到DobotClient_PTP节点，以控制越疆机械臂运动。
## 不足之处
ros启动文件结束时，节点的结束顺序无法控制，会导致客户端无法使用服务端的函数。
## 需要优化的地方
识别二维码需要文字提醒是否识别成功，以及需要等待几秒才可以继续识别下一个二维码。
## 备注
此项目是在dobot_ws项目的基础上进行加工，启动文件为qrcode功能包中的camera.launch文件。该文件可启动所有节点，包括DobotServer节点。
## 参考博客
基于OpenCV实现二维码发现与定位 https://blog.csdn.net/leansmall/article/details/80580236(无解码部分）
电脑摄像头识别二维码OpenCV程序 https://blog.csdn.net/u014201706/article/details/83513331（可行，但识别率低）
opencv二维码识别解码 https://blog.csdn.net/nick123chao/article/details/77573675 (无解码部分，在图片中框出二维码）
Zbar算法流程介绍 https://www.cnblogs.com/flyinggod/p/8709827.html
opencv+zbar二维码检测及扫描 https://blog.csdn.net/qq_40600539/article/details/79177673（包括条形码的ROI）
轮廓提取findContours和绘制drawContours https://blog.csdn.net/fengye2two/article/details/79101968(轮廓层级有误）
OpenCV中findcontours函数hierarchy轮廓层级详解 https://blog.csdn.net/qq_33810188/article/details/81285867
基于opencv3.0和zbar下条形码和二维码的识别与解码 https://www.cnblogs.com/cjqbaba/p/9073908.html(有提取二维码的部分）
