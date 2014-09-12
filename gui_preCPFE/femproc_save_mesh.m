% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function femproc_save_mesh(mesh_to_save)
%% Function to save CPFE model mesh as a YAML file
% See in http://code.google.com/p/yamlmatlab/
% mesh_to_save: Input variables (all mesh parameters to load) to save in a YAML config. file

% authors: d.mercier@mpie.de

[fname, fpath] = uiputfile('*.yaml', 'Save mesh in a YAML config. file as');

WriteYaml(fullfile(fpath, fname), mesh_to_save);

end