# LightLM 高性能小模型测评

NLPCC 2020 测评任务 Shared Tasks in NLPCC 2020. 

高性能小模型测评 Task 1 - Light Pre-Training Chinese Language Model for NLP Task

现已可以提交到<a href='https://www.cluebenchmarks.com/nlpcc2020.html'>排行榜</a>，提交样例见：<a href='https://storage.googleapis.com/cluebenchmark/tasks/nlpcc_task1_submit_examples.zip'>提交样例</a>

注册地址：

https://www.cluebenchmarks.com/NLPCC.html

NLPCC 2020 网站：

http://tcci.ccf.org.cn/conference/2020/cfpt.php

任务guideline：

http://tcci.ccf.org.cn/conference/2020/dldoc/taskgline01.pdf

比赛交流群：

![img](https://github.com/CLUEbenchmark/LightLM/blob/master/img/shared_task_QA_code)

## 任务介绍 Task overview

**Task 1 - 高性能小模型测评 Light Pre-Training Chinese Language Model for NLP Task**

这个任务的目标是训练一个和正常大小的语言模型效果相似的轻量级的语言模型。每个提交上来的模型都会在多个不同的下游NLP任务上评估性能。我们将会综合考虑模型参数数量，模型准确率以及模型推理时间，这些将一起作为模型的评估标准。

The goal of this task is to train a light language model which is still as powerful as the other normal models. Each model will be tested on many different downstream NLP tasks. We would take the number of parameters, accuracy and inference time as the metrics to measure the performance of a model. To meet the challenge of the lack of Chinese corpus, we will provide a big Chinese corpus for this task and will release them for all the researchers later.

为了满足很多参赛者对中文语料缺乏的情况，我们提供了目前为止最大中文语料库作为这个任务的补充资源。这些语料将会在之后公布给大家。

## **如何报名 How to Participate**

任务注册方式：

(1.1)  访问[www.CLUEbenchmark.com](http://www.CLUEbenchmark.com)， 右上角点击【注册】并登录。

(1.2) 进入【NLPCC测评】tab页，选中【注册栏】后进行比赛注册，并点击提交。

Registration online with the following steps:

(1.1) Visit www.CLUEbenchmark.com, and click the button 【注册】 at the top right corner of the page. After that, please log in. 

(1.2) After selecting the【NLPCC测评】in the top navigation bar, please register our task in 【比赛注册】.

# 本次测评的基线模型、代码和一键运行脚本
baselines/models目录下提供了本次比赛中四个任务的预测脚本，使用方法如下：
```
可以进入baselines/models目录下
1. bert_wsc_csl目录下为WSC和CSL任务: bash run_classifier_clue.sh
    - 结果生成在wsc_ouput和csl_output目录下
2. bert_mrc 为 cmrc2018 任务baseline: bash run_ner_cmrc.sh
    - 结果生成为cmrc2018_predict.json
3. bert_ner 为 CLUENER任务 baseline: bash run_ner.sh
    - 结果生成在ner_output下

```
只要加载相应的模型，即可进行预测。本demo中会自动使用"RoBERTa-tiny-clue"进行预测

提交指导：将以上的结果，打包为nlpcc-xxx.zip 进行提交。注意各个输出文件的名称是不能变的，要保留，不然系统无法识别。提交示例请见example。

 CLUENER2020、WSC、CSL: 见<a href='https://github.com/CLUEbenchmark/CLUEPretrainedModels'>CLUEPretrainedModels</a>

 CMRC 2018: 见<a href='https://github.com/CLUEbenchmark/CLUE'>CLUE</a>

# 任务描述 Dataset Description

##### 1. CLUENER2020  细粒度命名实体识别 [详情](https://github.com/CLUEbenchmark/CLUENER2020) [NER数据下载]([数据下载](http://www.cluebenchmark.com/introduce.html))

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

##### 2. CLUEWSC2020: WSC Winograd模式挑战中文版，新版2020-03-25发布  <a href='https://storage.googleapis.com/cluebenchmark/tasks/cluewsc2020_public.zip'>CLUEWSC2020数据集下载</a>

Winograd Scheme Challenge（WSC）是一类代词消歧的任务。新版与原CLUE项目WSC内容不同

即判断句子中的代词指代的是哪个名词。题目以真假判别的方式出现，如：

句子：这时候放在床上枕头旁边的手机响了，我感到奇怪，因为欠费已被停机两个月，现在它突然响了。需要判断“它”指代的是“床”、“枕头”，还是“手机”？

数据来源：数据有CLUE benchmark提供，从中国现当代作家文学作品中抽取，再经语言专家人工挑选、标注。

数据形式：

     {"target": 
         {"span2_index": 37, 
         "span1_index": 5, 
         "span1_text": "床", 
         "span2_text": "它"}, 
     "idx": 261, 
     "label": "false", 
     "text": "这时候放在床上枕头旁边的手机响了，我感到奇怪，因为欠费已被停机两个月，现在它突然响了。"}
     "true"表示代词确实是指代span1_text中的名词的，"false"代表不是。

数据集大小：
- 训练集：1244
- 开发集：304

##### 3. CSL 论文关键词识别 Keyword Recognition [详情](https://github.com/CLUEbenchmark/CLUE) [CSL数据集下载](https://storage.googleapis.com/cluebenchmark/tasks/csl_public.zip)  

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

## 双周赛奖励

为了鼓励大家的参与，我们决定设立双周赛奖励，时间定在 4.19、5.3、5.17这三个节点。每只队伍只能领取不超过两次双周赛奖励。
奖励：

1. 1000元人民币整
2. CLUE周赛证书（可以在线访问）
3. 我们提供提供200G预训练语料给周赛获奖队伍

获奖要求：

1. 在4.18， 5.3， 5.16 三个时间节点早上8点前处于第一名的队伍
2. 需要在第二天的时候做一次关于小模型训练的分享，可以有选择性的分享一些比赛相关的技巧

  NOTE：

  1. 以上两点都是获奖的必要条件
  2. 如果第一名重复，则顺延

## Reference

Information in this page we refered to:

[1] http://tcci.ccf.org.cn/conference/2019/taskdata.php

## NOTE

Any question, please contact us via CLUEbenchmark@163.com or just open an issue.

## 结果：

首先感谢大家本次的参与，我们本次比赛的评定规则如下：
1. 由于测速涉及到硬件条件的限制，所以我们将依据参赛同学自己测定的速度作为模型是否符合规范的依据。
2. 最终分数评定由我们实际测算的速度和参数量按照任务指南中的公式进行计算，分数可能会存在误差，以不影响名次为可接受误差范围内。
3. 具体名次如下：
第一名：Huawei Cloud & Noah's Ark lab，得分：0.777126778
第二名：Tencent Oteam，得分：0.768969257
第三名：Xiaomi AI Lab，得分：0.758543871
结果公示三天，如果有问题可以和我们联系。
本次比赛是CLUE第一次正式举办的对外比赛，不免有很多疏漏之处，也非常感谢得到来自各个学校、公司的各位同学大神的指导和帮助。
本次比赛的其他信息会在最终的评估报告中有详细的解释。
CLUE保留对结果的最终解释权。关于奖励发放的事宜会在后续和各位获奖者沟通。
恭喜这些同学，也非常感谢各位的支持。

## **关键日期 Important dates**

- [x] 2020/03/10：announcement of shared tasks and call for participation;
- [x] 2020/03/10：registration open;
- [x] 2020/03/25：release of detailed task guidelines & training data;
- [x] 2020/04/06：release of baseline and start the competition

- [x] 2020/05/01：registration deadline;
- [x] 2020/05/15：release of test data;
- [x] 2020/05/20：participants’ results submission deadline;
- [x] 2020/05/30：evaluation results release and call for system reports and conference paper;
- [ ] 2020/06/30：conference paper submission deadline (only for shared tasks);
- [ ] 2020/07/30：conference paper accept/reject notification;
- [ ] 2020/08/10：camera-ready paper submission deadline;



