
function GRNN=functionGRNN(feat,label,kfold,nSpread)
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
  % Training the model
  net=newgrnn(xtrain',dummyvar(ytrain)',nSpread); 
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
GRNN.fold=Afold; GRNN.acc=acc; GRNN.con=confmat; 
fprintf('\n Classification Accuracy (GRNN): %g %%',acc); 
end

