% Three-phase voltage phasor (Fresnel diagram)

V = 220 % Peak voltage

% Phasor angles in radians
theta_A = 0
theta_B = 2*pi/3
theta_C = 4*pi/3

% Phasor components
Va = [V*cos(theta_A), V*sin(theta_A)]
Vb = [V*cos(theta_B), V*sin(theta_B)]
Vc = [V*cos(theta_C), V*sin(theta_C)]

% Plot
figure
hold on; grid on; axis equal
quiver(0,0,Va(1),Va(2),0,'r','LineWidth',2)
quiver(0,0,Vb(1),Vb(2),0,'g','LineWidth',2)
quiver(0,0,Vc(1),Vc(2),0,'b','LineWidth',2)
xlabel('Re')
ylabel('Im')
title('Three-Phase Fresnel (Phasor) Diagram')
legend('Va','Vb','Vc')
xlim([-250 250])
ylim([-250 250])
