function plot_fcn(SimData)

if ~nargin
    SimData.time = 0:0.2:0.4;
    SimData.signals.values(:,1) = linspace(0.5,0.7,2);
    SimData.signals.values(:,2) = linspace(16,16.5,2);
end

tim = SimData.time;
height = SimData.signals.values(:,2);
analog = SimData.signals.values(:,1);

% size of the bottom structure
lb = 10; % inches
wb = 10; % inches
th = 0.75; % inches

% size of the top structure
lt = 6; % inches
wt = 6; % inches


h = 29+th+th/2; % inches
[Xcl,Ycl,Zcl] = cylinder(1/4,20);





figure(1); clf
set(gcf,'units','normalized')
set(gcf,'Position',[447/1920 389/1080 1101/1920 528/1080]);
subplot(2,2,[1 3])
plotcube([lb wb th],[-lb/2 -wb/2 -th/2],1,[0.7 0.5 0]); % bottom surface
hold on
car = carPlot([],height(1)); % plot initial car height
surf(Xcl-lb/4,Ycl-wb/4,h*Zcl-th/4,'FaceColor',[0.7 0.5 0]); % struts
surf(Xcl-lb/4,Ycl+wb/4,h*Zcl-th/4,'FaceColor',[0.7 0.5 0]); % struts
surf(Xcl+lb/4,Ycl-wb/4,h*Zcl-th/4,'FaceColor',[0.7 0.5 0]); % struts
surf(Xcl+lb/4,Ycl+wb/4,h*Zcl-th/4,'FaceColor',[0.7 0.5 0]); % struts
plotcube([lt wt th],[-lt/2 -wt/2 h-th/2],1,[0.7 0.5 0]); % top surface
c1 = plot3(zeros(1,10),zeros(1,10),linspace(height(1),h,10),'Color',[0.8 0.6 0.8]); % string

% c2 = plot3(linspace(-5,5,10),zeros(1,10),height(1)*ones(1,10));
axis equal
axis([-10 10 -10 10 -th/2 h+1])
view([-20 8])
xlabel('X (inches)')
ylabel('Y (inches)')
zlabel('Z (inches)')

subplot(2,2,2)
p2 = plot(tim(1:2),height(1:2));
xlabel('Time (s)')
ylabel('Car Height (inches)')
axis([0 tim(end) 0 h+1])

subplot(2,2,4)
p3 = plot(tim(1:2),analog(1:2));
xlabel('Time (s)')
ylabel('Analog Measurement Volts/3.3')
axis([0 tim(end) 0 1])

for ii = 1:length(height)
    car = carPlot(car,height(ii)); % update car location
    set(c1,'ZData',linspace(height(ii),h,10)); % update string length
    set(p2,'XData',tim(1:ii),'YData',height(1:ii))
    set(p3,'XData',tim(1:ii),'YData',analog(1:ii))
    drawnow
    pause(0.01)
end



end


function handle = carPlot(handle,height)

% size of the car
lc = 2.5; % inches
wc = 1.5; % inches
hz = 5; % inches

Matz(:,1) = [hz/2;-hz/2;-hz/2;hz/2];
Matz(:,2) = [hz/2;-hz/2;-hz/2;hz/2];
Matz(:,3) = [hz/2;-hz/2;-hz/2;hz/2];
Matz(:,4) = [hz/2;-hz/2;-hz/2;hz/2];
Matz(:,5) = [hz/2;hz/2;hz/2;hz/2];
Matz(:,6) = [-hz/2;-hz/2;-hz/2;-hz/2];
Matz = Matz+height-2.125;


if ishandle(handle)
    set(handle,'ZData',Matz);
else   
    Matx(:,1) = [lc/2;lc/2;-lc/2;-lc/2];
    Matx(:,2) = [lc/2;lc/2;-lc/2;-lc/2];
    Matx(:,3) = [-lc/2;-lc/2;-lc/2;-lc/2];
    Matx(:,4) = [lc/2;lc/2;lc/2;lc/2];
    Matx(:,5) = [lc/2;-lc/2;-lc/2;lc/2];
    Matx(:,6) = [lc/2;-lc/2;-lc/2;lc/2];
    
    Maty(:,1) = [-wc/2;-wc/2;-wc/2;-wc/2];
    Maty(:,2) = [wc/2;wc/2;wc/2;wc/2];
    Maty(:,3) = [wc/2;wc/2;-wc/2;-wc/2];
    Maty(:,4) = [wc/2;wc/2;-wc/2;-wc/2];
    Maty(:,5) = [wc/2;wc/2;-wc/2;-wc/2];
    Maty(:,6) = [wc/2;wc/2;-wc/2;-wc/2];
    
    handle = patch(Matx,Maty,Matz,'k');
end

end


function plotcube(varargin)
% PLOTCUBE - Display a 3D-cube in the current axes
%
%   PLOTCUBE(EDGES,ORIGIN,ALPHA,COLOR) displays a 3D-cube in the current axes
%   with the following properties:
%   * EDGES : 3-elements vector that defines the length of cube edges
%   * ORIGIN: 3-elements vector that defines the start point of the cube
%   * ALPHA : scalar that defines the transparency of the cube faces (from 0
%             to 1)
%   * COLOR : 3-elements vector that defines the faces color of the cube
%
% Example:
%   >> plotcube([5 5 5],[ 2  2  2],.8,[1 0 0]);
%   >> plotcube([5 5 5],[10 10 10],.8,[0 1 0]);
%   >> plotcube([5 5 5],[20 20 20],.8,[0 0 1]);

% Default input arguments
inArgs = { ...
  [10 56 100] , ... % Default edge sizes (x,y and z)
  [10 10  10] , ... % Default coordinates of the origin point of the cube
  .7          , ... % Default alpha value for the cube's faces
  [1 0 0]       ... % Default Color for the cube
  };

% Replace default input arguments by input values
inArgs(1:nargin) = varargin;

% Create all variables
[edges,origin,alpha,clr] = deal(inArgs{:});

XYZ = { ...
  [0 0 0 0]  [0 0 1 1]  [0 1 1 0] ; ...
  [1 1 1 1]  [0 0 1 1]  [0 1 1 0] ; ...
  [0 1 1 0]  [0 0 0 0]  [0 0 1 1] ; ...
  [0 1 1 0]  [1 1 1 1]  [0 0 1 1] ; ...
  [0 1 1 0]  [0 0 1 1]  [0 0 0 0] ; ...
  [0 1 1 0]  [0 0 1 1]  [1 1 1 1]   ...
  };

XYZ = mat2cell(...
  cellfun( @(x,y,z) x*y+z , ...
    XYZ , ...
    repmat(mat2cell(edges,1,[1 1 1]),6,1) , ...
    repmat(mat2cell(origin,1,[1 1 1]),6,1) , ...
    'UniformOutput',false), ...
  6,[1 1 1]);


cellfun(@patch,XYZ{1},XYZ{2},XYZ{3},...
  repmat({clr},6,1),...
  repmat({'FaceAlpha'},6,1),...
  repmat({alpha},6,1)...
  );

view(3);
end



