# AI_Lab
PDPU AI LAB


# introduction to scilab (Lab-1)

## Sigmoid

    alpha = .7
    x=-5:.1:5
    y= 1./(1+alpha*exp(-x));
    plot(x,y,"p");
  
  ![](Lab-1/Images/Sigmoid_1.PNG)
  
## Rectified Linear Unit

    alpha = 2
    x=-100:1:100;
    y=max(0,alpha*x);
    plot(x,y,"r");
    
![](Lab-1/Images/Relu_1.PNG)

## Leaky Relu
 
    alpha = 0.5;
    x=-200:200;

    for i=1:401;
        if x(i)<0 then
            y(i) = alpha.*x(i);
        else
            y(i)=x(i);
        end
    end
    plot(x,y);

![](Lab-1/Images/Leaky_RELU_1.PNG)

## Exponential Linear Unit
    
    alpha = 0.5;
    x=-20:400;

    for i=1:421;
        if x(i)<0 then
            y(i) = alpha*(exp(x(i)-1));
        else
            y(i)=x(i);
        end
    end
    plot(x,y);

![](Lab-1/Images/Exponential_linear_Unit.PNG)

## Tanh

    alpha = 0.5;
    x=-200:200;

    for i=1:401;
        if x(i)<0 then
            y(i) = alpha.*x(i);
        else
            y(i)=x(i);
        end
    end
    plot(x,y);
    
![](Lab-1/Images/Tanh.PNG)



#  Implementing basic Logic functions using Single Neuron Model (Lab-2)

1) rosen blatt Neuron
2) weights represents importance of input
3) perceptron (i.e. simple neural network)

# Exercise I
Let w1 and w2 be the weights of a perceptron (i.e. simple neural network) with two inputs x1
and x2. Let AND(x1, x2) be the "logical and" function, let OR(x1, x2) be the "logical or" 
function and let NOT(x) be the logical NOT function.
Plot constellation diagram for these logic gates. Are the data points linearly separable? If 
yes, what is its significance with respect to perceptron?

![](Logic-Gates.png)

# Exercise II
Design three single-neuron models which correspond to the logical AND, OR and NOT 
functions respectively. Assume threshold activation function at the output of the Neuron.

      x1 = input('Enter Value of x1 : ');
      x2 = input('Enter Value of x2 : ');
      x0 = 1;
      t=0:.1:1
      figure(1);
      scatter([0 0 1 1],[0 1 0 1],"fill", "s");
      for w0 = linspace(0,1,10)
          for w1 = linspace(0,1,10)
              for w2 = linspace(0,1,10)
                  if w0*x0 + w1*x1 + w2*x2 >= 1 then
                      w = [w0 w1 w2];
                      y = w0*x0
                      disp(w);
                  end
               end
          end
      end
      
  ![](Lab-2/Ex_2_And_gate.png)

### 2)

      X = [[0 0] [0 1] [1 0] [1 1]]
      Y = [0 0 0 1]

      figure(1);
      scatter([0 0 1 1],[0 1 0 1],"fill", "s");
      xlabel('x1');
      ylabel('x2');

      // w2*x2 = w1*(-1)*x1 + 1.5

      for x1 = linspace(0,2,10)
          for x2 = linspace(0,2,10)
              for w1 = linspace(0,1,10)
                  for w2 = linspace(0,1,10)
                      if  w1*x1 + w2*x2 > 1.5 then
                          if (1.5/w1 <2 )&&(1.5/w2<2) then
                              plot([0 1.5/w1],[1.5/w2 0]);
                          end
                      end
                  end
              end
          end
      end
      
 ![](Lab-2/And_2.png)
 
 
 ## OR Gate
      X = [[0 0] [0 1] [1 0] [1 1]]
      Y = [0 1 1 1]

      figure(1)
      p = scatter([ 0 0 1 1],[ 0 1 0 1],"fill", "x")
      xlabel('x1');
      ylabel('x2');

      // w2*x2 = w1*(-1)*x1 + 1.5

      for x1 = linspace(0,2,5)
          for x2 = linspace(0,2,5)
              for w1 = linspace(0,10,10)
                  for w2 = linspace(0,10,10)
                      if  w1*x1 + w2*x2 < 1 then
                          if (1/w1 <1 )&&(1/w2<1) then
                              plot([0 1/w1],[1/w2 0]);
                          end
                      end
                  end
              end
          end
      end
      
 ![](Lab-2/OR_2.png)
 
 
# Exercise III
Can we design a model that implements XOR(x1, x2) logic function with single neuron? 
Justify your answer with necessary decision graph.
### Ans
no we can't 

![Lab-2/XOR_Gate.png](Lab-2/XOR_Gate.png)



# Lab-3


### Load data

## Exercise 1: 
Download and Study both (PIMA-INDIAN-DIABETES, IRIS) dataset files from the LMS

● Observe and comment about the features/values of dataset.

      --> data = csvRead('pima-indians-diabetes.csv');
      --> number_of_time_pregnant = data(:,1);
      --> glucose = data(:,2);
      -->  blood_pressure = data(:,3);
      --> Triceps_skin_fold_thickness = data(:,4);
      --> serum_insulin = data(:,5);
      --> Body_mass_index = data(:,6);
      --> Diabetes_pedigree = data(:,7);
      --> Age = data(:,8);
      --> class_output = data(:,9);

● Iris_dataset One Hot Encoding

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
     
   ![](Lab-3/Images/Iris_data_1.PNG)

## Exercise 2: 
Implement an ANN feed-forward network and evaluate its Accuracy for Pima-Indian-Diabetes dataset. 

● Tweak parameters to improve accuracy (like learning rate and training cycles ). Report the output accuracy.



## Exercise 3: 
Implement an ANN feed-forward backpropagation network and evaluate its Accuracy for Iris Dataset.

● Tweak parameters to improve accuracy (like learning rate , minimum Error and training cycles ). Calculate and print the mean accuracy.

      data = csvRead('One-Hot-Encoding_Iris.csv',[],[],'string');
      ID = strtod(data(:,1));
      SepalLengthCm = strtod(data(:,2));
      SepalWidthCm =  strtod(data(:,3));
      PetalLengthCm = strtod(data(:,4));
      PetalWidthCm = strtod(data(:,5));

      Iris_setosa = strtod(data(:,6));
      Iris_versicolor = strtod(data(:,7));
      Iris_virginica = strtod(data(:,8));

      x = [SepalLengthCm(2:151) SepalWidthCm(2:151) PetalLengthCm(2:151) PetalWidthCm(2:151)]
      y = [Iris_setosa(2:151) Iris_versicolor(2:151) Iris_virginica(2:151)]

      [x,y] = ann_pat_shuffle(x',y');
      x = x';
      y = y';


      train_x = x(1:120,:)
      test_x = x(121:150,:)
      train_y = y(1:120,:)
      test_y = y(121:150,:)

      N = [4 4 3];
      W = ann_FF_init(N);
      learning_parameters = [0.5,0];
      W = ann_FF_Std_online(train_x',train_y',N,W,learning_parameters,30);
      output = ann_FF_run(test_x',N,W);
      err_d = ann_d_sum_of_sqr(output',test_y);

      loss = sum(err_d.*err_d)/size(test_y)(1)*100;
      acc = 100-loss;
      disp('acc :');
      disp(acc);

### output
 acc : 91.581213


## Exercise 4: 
Visit [http://playground.tensorflow.org](http://playground.tensorflow.org) and create your own ANN for classifying Non-linear pattern.

● Change the parameters and observe their impact on execution.
