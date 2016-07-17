clc;
clear all;
Fs=8000;
clear y1 y2 y3;
display('--------------Record English language---------------');
Dir = 'Train\english\';
files = dir(fullfile(Dir, '*.wav'));
[a] = getData(Dir);
X1 = a;
for j = 1:200
    Y1(j,:) = 1;
end

disp('---------Record Dutch language--------');
Dir = 'Train\dutch\wav\';
files = dir(fullfile(Dir, '*.wav'));
[a] = getData(Dir);
X2 = a;
for j = 1:200
    Y2(j,:) = 2;
end

disp('----------Record German language------------');
Dir = 'Train\german\wav\';
files = dir(fullfile(Dir, '*.wav'));
[a] = getData(Dir);
X3 = a;
for j = 1:200
    Y3(j,:) = 3;
end

disp('-----------Record French language------------');
Dir = 'Train\french\wav\';
files = dir(fullfile(Dir, '*.wav'));
[a] = getData(Dir);
X4 = a;
for j = 1:200
    Y4(j,:) = 4;
end

disp('-----------Record Russian language-----------');
Dir = 'Train\russian\wav\';
files = dir(fullfile(Dir, '*.wav'));
[a] = getData(Dir);
X5 = a;
for j = 1:200
    Y5(j,:) = 5;
end

X = vertcat(X1,X2,X3,X4,X5);
Y = vertcat(Y1,Y2,Y3,Y4,Y5);

save('lpcdata.mat','X','Y');


%_-------------------------------------------------------------------------
