# stat512-project

## Professor

Dr. Allessandro Selvitella

## Class and Year

 - STAT 512 - Applied Regression Analysis
 - Fall 2024

## Contents

 - Class Project
 - Dataset used for the Project
 - Deliverables and Reports for the Project

## Class Project Name

Gaussian Processes/Robot Arm Dynamics

## Class Project Description

Inverse dynamics is a technique used in animal biomechanics and robotics to determine the torque given the position, velocity, and acceleration of a body. Inverse dynamics can be used to replicate human joint movement through robot arms: a planning module decides on a trajectory that takes the robot from its start to goal states, and this specifies the desired positions, velocities and accelerations at each time. The inverse dynamics model is used to compute the torques needed to achieve this trajectory and errors are corrected using a feedback controller. Animal locomotion and robot movement are complex and models to describe them need to be highly nonlinear. Therefore, simple linear regression is expected to perform poorly in an inverse dynamics task.

In this project, you will use Gaussian Processes to learn the inverse dynamics of an anthropomorphic robot arm. This methodology, while still resembling the structure of linear regression, yields a more flexible model. In fact, a Gaussian Process can be viewed as a distribution over a space of functions describing the relationship between the observed variables.

## Class Project References

Gaussian Processes for Machine Learning (GPML) Website

<https://gaussianprocess.org/gpml/>

GPML Textbook (Chapters 2, 5, and 8)

<https://gaussianprocess.org/gpml/chapters/RW.pdf>

GPML SARCOS Dataset

<https://gaussianprocess.org/gpml/data/>

Python Documentation Discussing Guassian Processes

<https://scikit-learn.org/stable/modules/gaussian_process.html#gpc-examples>