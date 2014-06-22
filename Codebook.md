#UCI HAR Tidy Dataset Codebook

The data linked to from the course website is the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors [1].

##Source:
###Original Data Set Information from the UCI repository:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Attribute Information:
For each record in the dataset it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables.
- Features are normalized and bounded within [-1,1]. 
- Its activity label. 
- An identifier of the subject who carried out the experiment

## Tidy Dataset


## Detailed list of variables

1. activity
2. subject
3. meanOfTimeBodyAccelerometerMeanX
4. meanOfTimeBodyAccelerometerMeanY
5. meanOfTimeBodyAccelerometerMeanZ
6. meanOfTimeBodyAccelerometerStdX
7. meanOfTimeBodyAccelerometerStdY
8. meanOfTimeBodyAccelerometerStdZ
9. meanOfTimeGravityAccelerometerMeanX
10. meanOfTimeGravityAccelerometerMeanY
11. meanOfTimeGravityAccelerometerMeanZ
12. meanOfTimeGravityAccelerometerStdX
13. meanOfTimeGravityAccelerometerStdY
14. meanOfTimeGravityAccelerometerStdZ
15. meanOfTimeBodyAccelerometerJerkMeanX
16. meanOfTimeBodyAccelerometerJerkMeanY
17. meanOfTimeBodyAccelerometerJerkMeanZ
18. meanOfTimeBodyAccelerometerJerkStdX
19. meanOfTimeBodyAccelerometerJerkStdY
20. meanOfTimeBodyAccelerometerJerkStdZ
21. meanOfTimeBodyGyroscopeMeanX
22. meanOfTimeBodyGyroscopeMeanY
23. meanOfTimeBodyGyroscopeMeanZ
24. meanOfTimeBodyGyroscopeStdX
25. meanOfTimeBodyGyroscopeStdY
26. meanOfTimeBodyGyroscopeStdZ
27. meanOfTimeBodyGyroscopeJerkMeanX
28. meanOfTimeBodyGyroscopeJerkMeanY
29. meanOfTimeBodyGyroscopeJerkMeanZ
30. meanOfTimeBodyGyroscopeJerkStdX
31. meanOfTimeBodyGyroscopeJerkStdY
32. meanOfTimeBodyGyroscopeJerkStdZ
33. meanOfTimeBodyAccelerometerMagnitudeMean
34. meanOfTimeBodyAccelerometerMagnitudeStd
35. meanOfTimeGravityAccelerometerMagnitudeMean
36. meanOfTimeGravityAccelerometerMagnitudeStd
37. meanOfTimeBodyAccelerometerJerkMagnitudeMean
38. meanOfTimeBodyAccelerometerJerkMagnitudeStd
39. meanOfTimeBodyGyroscopeMagnitudeMean
40. meanOfTimeBodyGyroscopeMagnitudeStd
41. meanOfTimeBodyGyroscopeJerkMagnitudeMean
42. meanOfTimeBodyGyroscopeJerkMagnitudeStd
43. meanOfFftBodyAccelerometerMeanX
44. meanOfFftBodyAccelerometerMeanY
45. meanOfFftBodyAccelerometerMeanZ
46. meanOfFftBodyAccelerometerStdX
47. meanOfFftBodyAccelerometerStdY
48. meanOfFftBodyAccelerometerStdZ
49. meanOfFftBodyAccelerometerJerkMeanX
50. meanOfFftBodyAccelerometerJerkMeanY
51. meanOfFftBodyAccelerometerJerkMeanZ
52. meanOfFftBodyAccelerometerJerkStdX
53. meanOfFftBodyAccelerometerJerkStdY
54. meanOfFftBodyAccelerometerJerkStdZ
55. meanOfFftBodyGyroscopeMeanX
56. meanOfFftBodyGyroscopeMeanY
57. meanOfFftBodyGyroscopeMeanZ
58. meanOfFftBodyGyroscopeStdX
59. meanOfFftBodyGyroscopeStdY
60. meanOfFftBodyGyroscopeStdZ
61. meanOfFftBodyAccelerometerMagnitudeMean
62. meanOfFftBodyAccelerometerMagnitudeStd
63. meanOfFftBodyBodyAccelerometerJerkMagnitudeMean
64. meanOfFftBodyBodyAccelerometerJerkMagnitudeStd
65. meanOfFftBodyBodyGyroscopeMagnitudeMean
66. meanOfFftBodyBodyGyroscopeMagnitudeStd
67. meanOfFftBodyBodyGyroscopeJerkMagnitudeMean
68. meanOfFftBodyBodyGyroscopeJerkMagnitudeStd




## References:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012