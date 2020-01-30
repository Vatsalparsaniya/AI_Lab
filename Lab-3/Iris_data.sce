data = csvRead('Iris_and_pima-Indian-diabetes_dataset\Iris.csv',[],[],'string');
ID = strtod(data(:,1));
SepalLengthCm = strtod(data(:,2));
SepalWidthCm =  strtod(data(:,3));
PetalLengthCm = strtod(data(:,4));
PetalWidthCm = strtod(data(:,5));
Species = data(:,6);

figure(1);

subplot(4,1,1);plot(ID,SepalLengthCm);
xlabel('ID');
ylabel('SepalLengthCm');
subplot(4,1,2);plot(ID,SepalWidthCm);
xlabel('ID');
ylabel('SepalWidthCm');
subplot(4,1,3);plot(ID,PetalLengthCm);
xlabel('ID');
ylabel('PetalLengthCm');
subplot(4,1,4);plot(ID,PetalWidthCm);
xlabel('ID');
ylabel('PetalWidthCm');

Iris_setosa = zeros(length(ID),1);
Iris_versicolor = zeros(length(ID),1);
Iris_virginica = zeros(length(ID),1);

for i=1:length(ID)
    if Species(i) == 'Iris-setosa'
        Iris_setosa(i) = 1;
    end
    if Species(i) == 'Iris-versicolor'
        Iris_versicolor(i) = 1;
    end
    if Species(i) == 'Iris-virginica'
        Iris_virginica(i) = 1;
    end
end


M = [ID,SepalLengthCm,SepalWidthCm,PetalLengthCm,PetalWidthCm,Iris_setosa,Iris_versicolor,Iris_virginica]
csvWrite(M,'One-Hot-Encoding_Iris.csv',',');
