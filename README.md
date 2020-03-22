# LightLM 高性能小模型测评
Shared Tasks in NLPCC 2020. 

本次测评的基线模型、代码和一键运行脚本，见<a href='https://github.com/CLUEbenchmark/CLUEPretrainedModels'>CLUEPretrainedModels</a>

Task 1 - Light Pre-Training Chinese Language Model for NLP Task

注册地址：

https://www.cluebenchmarks.com/nlpcc.html

NLPCC 2020 网站：

http://tcci.ccf.org.cn/conference/2020/cfpt.php

比赛交流群：

![img](https://github.com/CLUEbenchmark/LightLM/blob/master/img/shared_task_QA_code)

## 任务介绍 Task overview

**Task 1 - Light Pre-Training Chinese Language Model for NLP Task**

The goal of this task is to train a light language model which is still as powerful as the other normal models. Each model will be tested on many different downstream NLP tasks. We would take the number of parameters, accuracy and inference time as the metrics to measure the performance of a model. To meet the challenge of the lack of Chinese corpus, we will provide a big Chinese corpus for this task and will release them for all the researchers later.

这个任务的目标是训练一个和正常大小的语言模型效果相似的轻量级的语言模型。每个提交上来的模型都会在多个不同的下游NLP任务上评估性能。我们将会综合考虑模型参数数量，模型准确率以及模型推理时间，这些将一起作为模型的评估标准。

为了满足很多参赛者对中文语料缺乏的情况，我们提供了目前为止最大中文语料库作为这个任务的补充资源。这些语料将会在之后公布给大家。

## **如何报名 How to Participate**

Registration online with the following steps:

(1.1) Visit www.CLUEbenchmark.com, and click the button 【注册】 at the top right corner of the page. After that, please log in. 

(1.2) After selecting the【NLPCC测评】in the top navigation bar, please register our task in 【比赛注册】.

任务注册方式：

(1.1)  访问[www.CLUEbenchmark.com](http://www.CLUEbenchmark.com)， 右上角点击【注册】并登录。

(1.2) 进入【NLPCC测评】tab页，选中【注册栏】后进行比赛注册，并点击提交。

##  **关键日期 Important dates**

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

# 任务描述 Dataset Description

##### 1. CLUENER 细粒度命名实体识别 [详情](https://github.com/CLUEbenchmark/CLUENER2020) [NER数据下载]([数据下载](http://www.cluebenchmark.com/introduce.html))

```
训练集：10748
验证集集：1343

按照不同标签类别统计，训练集数据分布如下（注：一条数据中出现的所有实体都进行标注，如果一条数据出现两个地址（address）实体，那么统计地址（address）类别数据的时候，算两条数据）：
【训练集】标签数据分布如下：
地址（address）:2829
书名（book）:1131
公司（company）:2897
游戏（game）:2325
政府（government）:1797
电影（movie）:1109
姓名（name）:3661
组织机构（organization）:3075
职位（position）:3052
景点（scene）:1462

【验证集】标签数据分布如下：
地址（address）:364
书名（book）:152
公司（company）:366
游戏（game）:287
政府（government）:244
电影（movie）:150
姓名（name）:451
组织机构（organization）:344
职位（position）:425
景点（scene）:199
```

##### 2. WSC Winograd模式挑战中文版 The Winograd Schema Challenge,Chinese Version [详情](https://github.com/CLUEbenchmark/CLUE) WSC数据集下载

威诺格拉德模式挑战赛是图灵测试的一个变种，旨在判定AI系统的常识推理能力。参与挑战的计算机程序需要回答一种特殊但简易的常识问题：代词消歧问题，即对给定的名词和代词判断是否指代一致。

```
数据量：训练集(532)，验证集(104)，测试集(143) 
例子：
{"target": 
    {"span2_index": 28, 
     "span1_index": 0, 
     "span1_text": "马克", 
     "span2_text": "他"
    }, 
     "idx": 0, 
     "label": "false", 
     "text": "马克告诉皮特许多关于他自己的谎言，皮特也把这些谎言写进了他的书里。他应该多怀疑。"
}
    其中label标签，true表示指代一致，false表示指代不一致。
```

##### 3. CSL 论文关键词识别 Keyword Recognition [详情](https://github.com/CLUEbenchmark/CLUE) [CSL数据集下载](https://storage.googleapis.com/cluebenchmark/tasks/csl_public.zip) NLPCC-CSL数据集下载

[中文科技文献数据集(CSL)](https://github.com/P01son6415/chinese-scientific-literature-dataset)取自中文论文摘要及其关键词，论文选自部分中文社会科学和自然科学核心期刊。 使用tf-idf生成伪造关键词与论文真实关键词混合，构造摘要-关键词对，任务目标是根据摘要判断关键词是否全部为真实关键词。

```
    数据量：训练集(20,000)，验证集(3,000)，测试集(3,000)
    例子： 
    {"id": 1, "abst": "为解决传统均匀FFT波束形成算法引起的3维声呐成像分辨率降低的问题,该文提出分区域FFT波束形成算法.远场条件下,以保证成像分辨率为约束条件,以划分数量最少为目标,采用遗传算法作为优化手段将成像区域划分为多个区域.在每个区域内选取一个波束方向,获得每一个接收阵元收到该方向回波时的解调输出,以此为原始数据在该区域内进行传统均匀FFT波束形成.对FFT计算过程进行优化,降低新算法的计算量,使其满足3维成像声呐实时性的要求.仿真与实验结果表明,采用分区域FFT波束形成算法的成像分辨率较传统均匀FFT波束形成算法有显著提高,且满足实时性要求.", "keyword": ["水声学", "FFT", "波束形成", "3维成像声呐"], "label": "1"}
    每一条数据有四个属性，从前往后分别是 数据ID，论文摘要，关键词，真假标签。
    
```



##### 4.CMRC2018 简体中文阅读理解任务 Reading Comprehension for Simplified Chinese [详情](https://github.com/CLUEbenchmark/CLUE) [CMRC2018数据集下载](https://storage.googleapis.com/cluebenchmark/tasks/cmrc2018_public.zip)

https://hfl-rc.github.io/cmrc2018/

```
数据量：训练集(短文数2,403，问题数10,142)，试验集(短文数256，问题数1,002)，开发集(短文数848，问题数3,219)  
例子：
{
  "version": "1.0",
  "data": [
    {
        "title": "傻钱策略",
        "context_id": "TRIAL_0",
        "context_text": "工商协进会报告，12月消费者信心上升到78.1，明显高于11月的72。另据《华尔街日报》报道，2013年是1995年以来美国股市表现最好的一年。这一年里，投资美国股市的明智做法是追着“傻钱”跑。所谓的“傻钱”策略，其实就是买入并持有美国股票这样的普通组合。这个策略要比对冲基金和其它专业投资者使用的更为复杂的投资方法效果好得多。",
        "qas":[
                {
                "query_id": "TRIAL_0_QUERY_0",
                "query_text": "什么是傻钱策略？",
                "answers": [
                     "所谓的“傻钱”策略，其实就是买入并持有美国股票这样的普通组合",
                     "其实就是买入并持有美国股票这样的普通组合",
                     "买入并持有美国股票这样的普通组合"
                    ]
                },
                {
                "query_id": "TRIAL_0_QUERY_1",
                "query_text": "12月的消费者信心指数是多少？",
                "answers": [
                    "78.1",
                    "78.1",
                    "78.1"
                    ]
                },
                {
                "query_id": "TRIAL_0_QUERY_2",
                "query_text": "消费者信心指数由什么机构发布？",
                "answers": [
                    "工商协进会",
                    "工商协进会",
                    "工商协进会"
                    ]
                }
            ]
        }
    ]
}
```

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
- [ ] https://github.com/CLUEbenchmark/DistilBert 蒸馏模型可以提上日程，提供baseline，会参照huggerface来进行



