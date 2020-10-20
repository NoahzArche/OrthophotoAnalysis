% Running the combined orthophoto analysis on all orthophoto tiles
% Jezero tiles naming convention

dlmwrite(['CombinedOrthophotoAnalysis' num2str(date) '.csv'],...
    {'Performing combined orthophoto analysis of all tiles'}, 'delimiter', '');
dlmwrite(['CombinedOrthophotoAnalysis' num2str(date) '.csv'], date,...
    'delimiter', '', '-append');

tile_files = dir('*.tif');
number_of_files = length(tile_files);

% turning off warnings
warning('off','images:niqe:expectFiniteFeatures')

for i = 1:number_of_files
    
    OrthophotoTile = tile_files(i).name;   
  
    OrthophotoAnalysis(OrthophotoTile);
    
end

