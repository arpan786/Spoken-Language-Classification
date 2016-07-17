function [ a ] = getData( Dir )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
files = dir(fullfile(Dir, '*.wav'));
X = [];
a = [0];
%pause();
%---------------------------------------------------------------------------

for j = 1:200
    a(j) = 0;
end

for j = 1:200
    n = files(j).name;
    disp(n);
[x,fs]=wavread(fullfile(Dir, files(j).name));
if(a(j) ~= 0)
    [a] = vertcat(a,reshape(LPC(x),1,228));
else
    [a] = reshape(LPC(x),1,228);
end

end

end

