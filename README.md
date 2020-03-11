# LightLM
Shared Tasks in NLPCC 2020. 

Task 1 - Light Pre-Training Chinese Language Model for NLP Task

注册地址：

https://www.cluebenchmarks.com/nlpcc.html

NLPCC 2020 网站：

http://tcci.ccf.org.cn/conference/2020/cfpt.php

## Task overview

**Task 1 - Light Pre-Training Chinese Language Model for NLP Task**

The goal of this task is to train a light language model which is still as powerful as the other normal models. Each model will be tested on many different downstream NLP tasks. We would take the number of parameters, accuracy and inference time as the metrics to measure the performance of a model. To meet the challenge of the lack of Chinese corpus, we will provide a big Chinese corpus for this task and will release them for all the researchers later.

这个任务的目标是训练一个和正常大小的语言模型效果相似的轻量级的语言模型。每个提交上来的模型都会在多个不同的下游NLP任务上评估性能。我们将会综合考虑模型参数数量，模型准确率以及模型推理时间，这些将一起作为模型的评估标准。

为了满足很多参赛者对中文语料缺乏的情况，我们提供了目前为止最大中文语料库作为这个任务的补充资源。这些语料将会在之后公布给大家。

## **How to Participate**

Registration online with the following steps:

(1.1) Visit www.CLUEbenchmark.com, and click the button 【注册】 at the top right corner of the page. After that, please log in. 

(1.2) After selecting the【NLPCC测评】in the top navigation bar, please register our task in 【比赛注册】.

任务注册方式：

(1.1)  访问[www.CLUEbenchmark.com](http://www.CLUEbenchmark.com)， 右上角点击【注册】并登录。

(1.2) 进入【NLPCC测评】tab页，选中【注册栏】后进行比赛注册，并点击提交。

##  **Important dates**

2020/03/10：announcement of shared tasks and call for participation;

2020/03/10：registration open;

2020/03/25：release of detailed task guidelines & training data;

2020/05/01：registration deadline;

2020/05/15：release of test data;

2020/05/20：participants’ results submission deadline;

2020/05/30：evaluation results release and call for system reports and conference paper;

2020/06/30：conference paper submission deadline (only for shared tasks);

2020/07/30：conference paper accept/reject notification;

2020/08/10：camera-ready paper submission deadline;

## Reference

Information in this page we refered to:

[1] http://tcci.ccf.org.cn/conference/2019/taskdata.php

[2] 

## NOTE

Any question, please contact us via CLUEbenchmark@163.com or just open an issue.



# Timeline for this task

- [ ] 首先把任务详细说明列出-2020.3.15

- [ ] 整理出baseline，以及对应的数据和评估脚本-2020.3.20

- [ ] 测试系统，评测，并走通流程-2020.3.25

- [ ] 撰写相关评测文档 并对作者提交结果进行check



## TODOLIST:

- [ ] clue主页的小模型榜单需要做清理/或者单独开辟出榜单，周榜冠军会在nlpcc tab界面给出每周的冠军队伍名字以及对应的得分

- [ ] 榜单上需要明确模型的参数量级。以及对应的human performance，现在需要自己去查找。【将human和nomal size的模型的性能也都放到小模型上面】

- [ ] 榜单需要给出一个英文版本的说明和操作指南