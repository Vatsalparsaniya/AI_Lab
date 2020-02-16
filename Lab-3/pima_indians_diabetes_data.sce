pima = csvRead('Iris_and_pima-Indian-diabetes_dataset\pima-indians-diabetes.csv');
x = pima(:, 1:8);
y = pima(:, 9);

for i = 1:8
    for j = 1:768
        if x(j,i) == 0 then
            x(j,i) = %nan;
        end
    end
end

for i = 1:8
    for j = 1:768
        if isnan(x(j,i)) then
            x(j,i) = nanmedian(x(:, i));
        end
    end
end

[x, y] = ann_pat_shuffle(x', y');
x = x';
y = y';

x_train = x(1:650, :);
x_test = x(651:768, :);
y_train = y(1:650, :);
y_test = y(651:768, :);
N = [8 12 1];
T = 30;
l = [0.01 0];
W = ann_FF_init(N);
W = ann_FF_Std_online(x_train', y_train', N, W, l, T);
y_result = ann_FF_run(x_test', N, W);
y_result = y_result';

result = sum((y_result - y_test).^2);
result = result/size(y_test)(1);
final_result = (1 - result)*100;
disp(final_result);
