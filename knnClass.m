%��knn���з���
clear
train_data=load('sample_feature.txt');    %����ѵ��������������ÿ��Ϊһ��������һ����һ������
train_label=load('train_label.txt');      %����ѵ����������𣨿�����1��2��3��4������һ��Ϊһ�����������
test_data=load('features.txt');           %����������ݵ�����
k=knnclassify(test_data,train_data,train_label,3,'cosine','random');  %kΪԤ��������
%��ź�ѵ�����ݱ�������ͬ��������ѵ�����ݺͲ������ݱ�������ͬ���У�
%����������Чֵ���߿�ֵ����Ϊ��ʧֵ���ߺ�����һ�С�
%�����ڶ������þ��������ʽ���磺
%               'euclidean'    ŷ�Ͼ��룬Ĭ�ϵ�
%             'cityblock'    ���Բ�ĺ�
%              'cosine'     �ǶȾ���
%              'correlation' ��ؾ���
%              'Hamming'      ��������
%������һ����������з��࣬����ѡ��
%               'nearest'  �����K���������
%              'random'    ����������
%              'consensus' ͶƱ����Ĭ�ϵ�