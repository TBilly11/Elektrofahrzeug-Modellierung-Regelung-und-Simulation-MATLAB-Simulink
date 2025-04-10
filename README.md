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
 The following picture show the step response of Longside dynamics using the PI-Controller with the speed reference <br />
 
<br />
<img src="https://i.imgur.com/urWmlIP.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

<h2>4 PMSM </h2>
 <br />
<img src="https://i.imgur.com/DesxBA5.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

The permanent magnets generate a constant magnetic field in the rotor, which follows the
 rotating field of the stator synchronously. PMSMs can be classified into different types based
 on their pole configurations, with two common types being the Leg Pole Machine with Ld= Lq
 and the Full Pole Machine with Ld = Lq.
 PMSMs can be analyzed through their mechanical and electrical components, each described
 by nonlinear differential equations.

 <br />
<img src="https://i.imgur.com/7oLM4zm.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<img src="https://i.imgur.com/WBkmfc6.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
 In this context, Ld, Lq, and RS represent the inductances and resistance of the stator,
 respectively. The symbols vS,d, vS,q, iS,d, and iS,q denote the d- and q-axis components of the
 voltage and current. Additionally, ωS denotes the motor’s electrical speed, and ψPM represents
 the rotor’s permanent magnet flux. Using the Laplace transform, these current equations can
 be expressed as follows:
 <br />
<img src="https://i.imgur.com/J4LEeQ2.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

<h2>4.1 Modelling of PMSM </h2>
 <br />
<img src="https://i.imgur.com/FURsN3b.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 <br />
<img src="https://i.imgur.com/oAyoHgC.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

<h2>4.2 Drive Control of PMSM </h2>
 Drive control is crucial for optimizing the performance and efficiency of Permanent Magnet
 Synchronous Motors (PMSMs) in various applications, including electric vehicles. By precisely
 controlling the electrical currents in the motor’s stator windings, torque production and speed
 can be adjusted to meet performance requirements. This project employs the Maximum Power
 Point Tracking (MPPT)– Zero D-axis Control (ZDC) approach. This method is chosen because
 the torque of the PMSM, when designed as a full-pole machine, can be easily controlled similarly
 to a DC machine via a component of the stator current.
 <br />
<img src="https://i.imgur.com/fSWKIDi.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
The decoupling controller has been implemented in MATLAB/Simulink as follows:

 <br />
<img src="https://i.imgur.com/wM6jsFX.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 <br />
<img src="https://i.imgur.com/YgSBYnM.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

 <br />
<img src="https://i.imgur.com/4tRn1b3.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />

The following picture illustrates the results of the q-axis current control. The blue curve represents
 the controlled current response. As shown, the controlled current reacts immediately to changes,
 rapidly rising to approximately 300 A. After exceeding this value, the controlled current
 converges towards the purple set-point curve, before gradually decreasing to a value near zero.
 This demonstrates that the control system exhibits good performance and effective regulation
 of the current.

 <br />
<img src="https://i.imgur.com/7bKME88.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />

 The following picture illustrates the position, speed, and acceleration signals of the vehicle. As the
 vehicle accelerates from a standstill, its speed increases gradually until it reaches the desired
 set-point. During this period, the distance traveled by the vehicle continues to rise, even when
 the vehicle reaches a steady speed. During a gear shift, acceleration peaks at approximately
 10.5 m/s2. As the vehicle gains speed, the acceleration decreases correspondingly. Once the
 vehicle’s speed stabilizes and remains constant, the acceleration drops to zero, since acceleration
 is the time derivative of speed, and the derivative of a constant value is zero.


 <br />
<img src="https://i.imgur.com/eWGNQpS.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />
 <br />

<h2>5 Adaptive Cruise Control </h2>

Adaptive Cruise Control (ACC) is an advanced enhancement of traditional cruise control
 systems. Unlike conventional cruise control, which maintains a fixed speed, ACC dynamically
 adjusts the vehicle’s speed to ensure a safe following distance from the vehicle ahead. This
 feature significantly enhances safety by reducing the risk of rear-end collisions. By continuously
 monitoring the distance to the preceding vehicle and automatically responding to changes in
 speed, ACC provides a collision-free driving experience. The system is designed to offer reliable,
 precise, and rapid adjustments, thereby improving overall driving comfort and reducing driver
 fatigue.
 In our approach, we model the safe distance between two vehicles, denoted as ∆x, where Vehicle
 A is our car and Vehicle B is the car in front. We calculate the position and velocity of each
 vehicle starting from time zero. The controller will engage when ∆x falls below a predefined
 threshold, and it will disengage once the distance is restored. To streamline the analysis, we
 use Laplace transforms to model the closed-loop control system based on a block diagram. By
 deriving the transfer function and reference model, we will analyze the system’s behavior and
 simulate it using MATLAB/Simulink.

 <br />
<img src="https://i.imgur.com/5Hjb31e.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />

  <br />
<img src="https://i.imgur.com/ypsTn3v.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />




 The following diagram depicts the controller with the dynamics of the controlled system:
 <br />
<img src="https://i.imgur.com/o5fBOn6.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />


 <br />
<img src="https://i.imgur.com/dCsF72y.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />


<h2>5.1 Simulations Results of the ACC </h2>

 <br />
<img src="https://i.imgur.com/0TYEbSl.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />
The following picture illustrates the controller structure and closed-loop control system for adaptive
 cruise control (ACC). In this model, the input signal ∆Xref, which corresponds to half the
 reference speed ref velocity/2, represents the currently measured distance between vehicles.
 The desired distance between the vehicles is set at 5 meters, while the initial position of vehicle
 B, XB0
 , is set at 500 meters, with a speed VB of 60 km/h.
 The system compares the actual distance between the vehicles with the reference distance to
 generate an error signal. This error signal, together with the speeds of vehicle A (VA) and the
 leading vehicle (VB), is then used in the closed-loop control system. The feedback mechanism
 dynamically adjusts the distance between the vehicles, ensuring a safe gap by taking into  account the difference in distance ∆x between the two cars. <br />
 <br />
 <br />
 Response Distance of the ACC:  <br/>
<img src="https://i.imgur.com/LQoz4FM.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />
<br />
Response speed of the ACC:  <br/>
<img src="https://i.imgur.com/hts4lN3.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />


 In this use case, the initial distances between vehicle B and vehicle A are proportional to
 time, resulting in very large distances at the start. However, to avoid interception on bends,
 the distance between the vehicles changes direction as vehicle A is faster than vehicle B.
 At this point, adaptive cruise control (ACC) is activated, and vehicle A
 maintains the reference speed (speed ref ).
 When the distance between the vehicles falls below the threshold set by the switching logic,
 distance control is activated. This mechanism automatically slows down vehicle A. 
 Interestingly, this also reduces the reference distance, as it depends on the speed
 of vehicle A (VA)
 
 <br />
<img src="https://i.imgur.com/uhPCBHN.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
 <br />
