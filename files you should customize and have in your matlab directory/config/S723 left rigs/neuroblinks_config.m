% Configuration settings that might be different for different users/computers
% Should be somewhere in path but not "neuroblinks" directory or subdirectory
DEFAULTDEVICE='arduino';
DEFAULTRIG=1;
% Rig specific settings
ALLOWEDDEVICES = {'arduino','tdt'};
ALLOWEDCAMS = {'02-2020C-07321','02-2020C-07420'};
% ALLOWEDCAMS = {};
ARDUINO_IDS = {'753303030353511051B2','85235353037351803132'};
% ARDUINO_IDS = {'75430333137351C08160','75330303035351D0D0E0'};
% ARDUINO_IDS = {'75330303035351D0D0E0'};

% NOTE: In the future this should be dynamically set based on pre and post time
metadata.cam.recdurA=1000;

% --- camera settings ----
metadata.cam.init_ExposureTime=4900;

% TDT tank -- not necessary for Arduino version
tank='behavior'; % The tank should be registered using TankMon (really only matters for TDT version)

% GUI
% -- specify the location of bottomleft corner of MainWindow & AnalysisWindow  --
ghandles.pos_mainwin=[5,50];     ghandles.size_mainwin=[840 600]; 
ghandles.pos_anawin= [570 45];    ghandles.size_anawin=[1030 840]; 
ghandles.pos_oneanawin=[5 45];    ghandles.size_oneanawin=[560 380];   
ghandles.pos_lfpwin= [570 45];    ghandles.size_lfpwin=[600 380];