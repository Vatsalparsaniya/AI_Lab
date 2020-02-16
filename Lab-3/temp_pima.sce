pima = csvRead('Iris_and_pima-Indian-diabetes_dataset\pima-indians-diabetes.csv');
x_temp = pima(:, 1:8);
y_temp = pima(:, 9);
x =[]
y =[]
for i = 1:768 
    number = 0
    for j = 1:8
        if x_temp(i,j)==0 then
            number = number +1;    
        end
    end
    if number < 2;
        x = [x; x_temp(i,j)];
        y = [y; y_temp(i)];
    end
end


