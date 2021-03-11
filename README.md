# ESE-448-Systems-Laboratory
Code for ESE 448 Systems Laboratory: Code is written in MATLAB and Simulink.

## Table of Contents
* [Lag Control](#Lag-Control)
* [Phase Lead Control](#Phase-Lead-Control)
* [PV Control](#PV-Control)
* [PI Control](#PI-Control)
  * [PIV Control](#PIV-Control)
  * [PI Control With Lag Compensator](#PI-Control-With-Lag-Compensator)   
* [Final Project](#Final-Project)
  * [Controller Evaluation](#Controller-Evaluation)

## Lag Control
The following files are used to design and implement a lag compensator.
* LagController.m
* Lagcontroller.slx

## Phase Lead Control
The following files are used to design and implement a phase lead compensator.
* PLcontrollerdesign.m
* OurPLcontrollerdesign.m

## PV Control
The following files are used to design and implement a PV controller.
* PVControllereDesign.m
* PVexperiment.slx

## PI Control
The following files are used to design and implement a PI Controller.
* PIcontroller.m
* PIcontrollerDesign.m

### PIV Control
The following file integrate PI control with PV control (PIV Controller)
* PIVexperiment.slx

### PI Control With Lag Compensatory
The following file integrate PI control with a lag compensator
* LagWithPIController.slx

## Final Project
The following file contains the model of a ball beam connected to a servo and controllers that control the balls position on the beam through the servo.
* FinalProject.slx

### Controller Evaluation
The following file evaluates the performance of the lag compensator, lag compensator with PI control, PV controller, and PIV controller
* Lab2Scripts.m
