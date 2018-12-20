%CompDel takes uncompressed behavior files, compresses them and stores them
%onto the data server.
hours=0;
pause(60*60*hours)
tic;
%%Mice to be Processed
subjectlist=['GW104';'GW107';'GW115';'GW116';]; %Vertical vectors of animal ID's.

%Where is the data located (directory ABOVE individual mice)?
dataLocation='D:\Data\Greg';

%Where do you want to send the data (directory ABOVE individual mice)?
dataDestination='\\bcmcloudbk\bcm-neuro-blinklab\Wojo\Behavior';

offsets = [0];

for i=1:length(subjectlist(:,1))
    mouse=subjectlist(i,:);
    for j=1:length(offsets)
        day_offset=offsets(j);
        day = datestr(now-day_offset,'yymmdd');
        folder = fullfile(dataLocation, mouse, day);

        cd(folder)
        
        if ~exist('compressed') %%if the videos are not compressed already
            makeCompressedVideos %Compress videos
        end
        
        delete *.mat %Delete original .mat files
        cd(dataDestination)
        slash='\'; %%slash needs to be defined to work in sprintf
        if ~exist(mouse) %%if the mouse folder doesn't already exist
            mkdir(mouse) %Compress videos
        end
        
        destination=sprintf('%s%s%s%s%s',dataDestination,slash,mouse,slash,day);      
        copyfile(folder,destination) %%copy the compressed videos to the new folder
        
    end
end

toc

exit