
function RNN=functionRNN(feat,label,kfold,Hiddens,Maxepochs)
% Layer
if length(Hiddens)==1
    h1=Hiddens(1); net=layrecnet(1:2,h1); 
elseif length(Hiddens)==2
    h1=Hiddens(1); h2=Hiddens(2); net=layrecnet(1:2,[h1 h2]);
elseif length(Hiddens)==3
    h1=Hiddens(1); h2=Hiddens(2); h3=Hiddens(3);
    net=layrecnet(1:2,[h1 h2 h3]);
end
rng('default'); 
% Divide data into k-folds
fold=cvpartition(label,'kfold',kfold);
% Pre
pred2=[]; ytest2=[]; Afold=zeros(kfold,1); 
% Neural network start
for i=1:kfold
  % Call index of training & testing sets
	trainIdx=fold.training(i); testIdx=fold.test(i);
  % Call training & testing features and labels
  xtrain=feat(trainIdx,:); ytrain=label(trainIdx);
  xtest=feat(testIdx,:); ytest=label(testIdx);
  % Set Maximum epochs
  net.trainParam.epochs= Maxepochs;
  % Training model
  net=train(net,xtrain',dummyvar(ytrain)');
  % Perform testing
  pred=net(xtest');
  % Confusion matrix
  [~,con]=confusion(dummyvar(ytest)',pred);
  % Get accuracy for each fold
  Afold(i)=100*sum(diag(con))/sum(con(:));
  % Store temporary result for each fold
  pred2=[pred2(1:end,:),pred]; ytest2=[ytest2(1:end);ytest];
end
% Overall confusion matrix
[~,confmat]=confusion(dummyvar(ytest2)',pred2); confmat=transpose(confmat);
% Average accuracy over k-folds
acc=mean(Afold);
% Store results 
RNN.fold=Afold; RNN.acc=acc; RNN.con=confmat; 
fprintf('\n Classification Accuracy (RNN): %g %%',acc);
end

