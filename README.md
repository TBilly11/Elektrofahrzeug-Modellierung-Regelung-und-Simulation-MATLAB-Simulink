# Elektrofahrzeug-Modellierung-Regelung-und-Simulation-MATLAB-Simulink
<h1>1 Project presentation</h1>

<br />
<img src="https://i.imgur.com/dsJSKCv.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
 The aim of this project is to develop a control system for an electric vehicle using MATLAB/Simulink.
 The initial phase focuses on modeling the longitudinal dynamics of the vehicle by applying
 Newton’s laws to balance the forces acting on it. The subsequent phase involves designing a
 cruise control system using a PI controller to effectively regulate the vehicle’s speed.
 Thethird phase of the project involves modeling the Permanent Magnet Synchronous Machine
 (PMSM). This includes accounting for various design assumptions related to both its electrical
 and mechanical aspects. The electrical modeling will be based on the differential equations
 derived from the simplified complex equivalent circuit of the PMSM, while the mechanical
 modeling will utilize the principle of conservation of angular momentum.
 
 The final phase of the project focuses on developing an adaptive cruise control system for
 the vehicle. This system aims to improve road safety by automatically adjusting the vehicle’s
 speed and ensuring it maintains a safe distance from the vehicle in front.
 By the end of the project, we will have a comprehensive simulation of the electric vehicle and
 its control systems. This will include a detailed analysis of the vehicle’s performance in various
 urban driving scenarios, providing valuable insights into the design and operation of electric
 vehicles. This project aims to contribute to the understanding of sustainable and ecological
 transportation solutions for the future.


<h1> 2 Modelling of the vehicle longside dynamics </h1>
 Longitudinal dynamics of a vehicle describe its behavior related to acceleration, braking, and
 speed regulation in the direction of travel. This encompasses how the vehicle starts moving,
 accelerates, decelerates, and maintains or adjusts its speed. The key aspects include:
 
  - Acceleration: The process by which the vehicle increases its speed, influenced by engine
 power, transmission efficiency, and traction.

  - Braking: The mechanism by which the vehicle reduces its speed, determined by the
 effectiveness of the braking system.

  - Speed Control: The methods used to maintain or adjust the vehicle’s speed to meet
 desired performance requirements.
<br />
<img src="https://i.imgur.com/0z6yt3a.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/KpVo1jO.png" height="80%" width="40%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/pQOm8Yd.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>

The equation is scaled by mF and constructed as a longitudinal dynamics model in Simulink, the model is organized into a subsystem to ensure a clear and orderly
 representation of the simulation.
<img src="https://i.imgur.com/gG45sLp.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 
 

<br />
<h2>2.1 Validation of the Longitudinal Dynamics Model</h2>
<br />
 After implementing the model in Simulink, we can now conduct tests to ensure that the system
 is operating correctly:
 <br />
   - The model was simulated with TW = 0Nm and FB = 0N over a duration of 1000 s. TW
 represents the drive torque at the wheel. As shown in Figure 3.3, the vehicle remains
 stationary since no forces are acting on it, resulting in zero values for position, speed, and
 the acceleration is zero values.<br />
<br />
<img src="https://i.imgur.com/5XcYiYJ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

   - The model was been simulated with TW = 300 Nm and FB = 0 N over a duration of 1000s <br />
   <br />
<img src="https://i.imgur.com/Q1JA47w.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 Figure illustrates that the car’s speed increases when a torque value (TW) is applied
 to the wheels, without any braking force being applied. The speed continues to rise until
 it reaches a maximum value, after which it remains constant. Initially, the applied torque
 (TW) results in a peak acceleration, but this acceleration gradually decreases over time
 until it stabilizes at zero.


    
<h2>3 Cruise control (Speed control) </h2>

 <br />
<img src="https://i.imgur.com/iiwct08.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 <br />
<img src="https://i.imgur.com/0SZkGmG.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

<br />
<img src="https://i.imgur.com/zBJJsam.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 The PI control system for Vehicle A exhibits the characteristics of a delayed second-order
 system with no overshoot and a rapid response to the reference speed of 100 km/h (27.7 m/s). This
 performance indicates that the control system is effectively tuned to provide smooth, stable,
 and prompt speed adjustments, ensuring that the vehicle maintains the desired speed efficiently
 and safely.
 The following picture show the step response of Longside dynamics using the PI-Controller with the speed reference
<br />
<img src="https://i.imgur.com/urWmlIP.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />


