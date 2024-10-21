# AutonomousRobot
The purpose of this project is to design an autonomous robot using LEGO Mindstorms EV3 kit so that it simulates a real-life scenario of picking up a disabled passenger and dropping them off at different locations. 

Functional Requirements:

- autonomous car must stop at the red lines (stop sign)
- must pick up and drop off the end user to/from the colored zones
- have multiple sensors to detect distance, color, contact (color, gyro, ultrasonic, touch) 

Design:

Our design consists of a forklift to pick up passengers and it's bulit to fit perfectly under the hinges of the wheelchair rather than just hoping the passenger won't tip off a shovel type approach. By using an ultrasonic sensor, the car is always a minimum distance from the wall. We aim to prevent the robot from ever touching the walls by ensuring the robot turns as soonn as the minimum distance threshold is met. For extra caution, a touch sensor will be installed in the front which will cause the robot to "reset" by moving back slightly and then resuming function if it touches the wall. The design focuses on building up rather than out, which minimizes the chance that one of the robot's parts gets stuck while maneuvering around the maze. 

Matlab: 
- 





