recorder =  videorecorder;
disp('Start Speaking');
recordblocking(recorder, 5);
disp('End of recording');

%play(recorder);
x = getaudiodata(recorder);
X1=reshape(LPC(x),1,228);
load('lpcdata.mat');
[ind,x1] = KNN(X1,x);
for i = 1 : length(ind)
disp('predicted value: - ');
disp(ind(i,:));
disp('predicted language code is - ');
Z(i,:) = Y(ind(i,:),1);
if(Z(i,:) == 1)
    disp('English');
end
end
