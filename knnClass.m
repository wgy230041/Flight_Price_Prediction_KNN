%用knn进行分类
clear
train_data=load('sample_feature.txt');    %导入训练样本的特征，每行为一个样本，一列是一个特征
train_label=load('train_label.txt');      %导入训练样本的类别（可以用1，2，3，4代表），一行为一个样本的类别
test_data=load('features.txt');           %导入测试数据的特征
k=knnclassify(test_data,train_data,train_label,3,'cosine','random');  %k为预测的类别结果
%标号和训练数据必须有相同的行数；训练数据和测试数据必须有相同的列；
%函数对于无效值或者空值会作为丢失值或者忽略这一行。
%倒数第二项设置距离矩阵形式，如：
%               'euclidean'    欧氏距离，默认的
%             'cityblock'    绝对差的和
%              'cosine'     角度距离
%              'correlation' 相关距离
%              'Hamming'      汉明距离
%倒数第一项对样本进行分类，可以选择：
%               'nearest'  最近的K个的最多数
%              'random'    随机的最多数
%              'consensus' 投票法，默认的