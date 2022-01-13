clc, clear
load fs_data.mat; 
% Call features & labels 
feat=f; label=l;
%---Input------------------------------------------------------------------
% feat:      features (intances x features)
% label:     labelling (labels x 1)
% kfold:     Number of cross-validation
% Hiddens:   Hidden layers (Hidden layers up to three, such as [10,10,10]) 
% Maxepochs: Maximum number of Epochs
%---Output-----------------------------------------------------------------
% A struct that contains three results as follows:
% fold: Accuracy for each fold
% acc:  Average accuracy over k-folds
% con:  Confusion matrix
%--------------------------------------------------------------------------

% (1) Perform feed-forward neural network (FFNN)
%using pattern recognition network

kfold=5; Hiddens=3; Maxepochs=60;
FFNN=functionNN(feat,label,kfold,Hiddens,Maxepochs);

%(2) Perform recurrent neural network (NN)
RNN=functionRNN(feat,label,kfold,Hiddens,Maxepochs);

%(3) Perform generalized regression neural network (NN)
nSpread=1;
GRNN=functionGRNN(feat,label,kfold,nSpread);

% (4) Perform cascade neural network
CFNN=functionCFNN(feat,label,kfold,Hiddens,Maxepochs);


