% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function GF2_phase = interface_map_set_phase_number(GF2_struct)
%% Function used to set the map interface
% authors: d.mercier@mpie.de / c.zambaldi@mpie.de

% Get data from encapsulation
gui = guidata(gcf);

GF2  = GF2_struct.data;
sGF2 = size(GF2);

% Loop to set number of phases based on grain file type 2
for ng = 1:sGF2(1)
    % If only 1 phase, index = 0.
    % If 2 phases, indexes are 1 and 2.
    % So, this line of code is to have always for phase 1, index=1 !
    if GF2(ng, GF2_struct.col_idx.PHASE) == 0
        GF2(ng, GF2_struct.col_idx.PHASE) = 1;
    end
end
if any(diff(GF2(:,GF2_struct.col_idx.PHASE))~=0) == 1
    GF2_phase = 2;
else
    GF2_phase = 1;
end

if GF2_phase == 1
    set(gui.handles.NumPh, 'String', 1);
    set(gui.handles.pmlegend, 'String', ...
        {'No Legend';...
        'Legend of Phase 1'});

elseif GF2_phase == 2
    set(gui.handles.NumPh, 'String', 2);
    set(gui.handles.pmlegend, 'String', ...
        {'No Legend';...
        'Legend of Phase 1'; ...
        'Legend of Phase 2'});
end

interface_map_material_definition;

end