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
