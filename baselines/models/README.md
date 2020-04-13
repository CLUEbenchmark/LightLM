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

提交指导：将以上的结果，打包为nlpcc-xxx.zip 进行提交。注意各个输出文件的名称是不能变的，要保留，不然系统无法识别。