% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function handles = set_stress_tensor(x0, h0, wu, hu, callback)
%% Function used to set stress tensor in the map interface
% x0: origin of x coordinate
% h0: origin of y coordinate
% hu: heigth unit
% wu: width unit

% author: d.mercier@mpie.de

handles.ST_s11 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0 h0 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s12 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0+0.04 h0 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s13 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0+0.08 h0 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s21 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0 h0-0.025 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s22 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0+0.04 h0-0.025 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s23 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0+0.08 h0-0.025 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s31 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0 h0-0.05 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s32 = uicontrol('Parent', gcf, 'Units', 'normalized', ...
    'Position', [x0+0.04 h0-0.05 wu hu], 'String', '0', 'Style', 'edit');
handles.ST_s33 = uicontrol('Parent', gcf, 'Units', 'normalized',  ...
    'Position', [x0+0.08 h0-0.05 wu hu], 'String', '1', 'Style', 'edit');

% Stress is symmetric
set([handles.ST_s21, handles.ST_s31, handles.ST_s32], ...
    'Enable','off');

% Set properties
set([handles.ST_s11, handles.ST_s12, handles.ST_s13, ...
    handles.ST_s21, handles.ST_s22, handles.ST_s23, ...
    handles.ST_s31, handles.ST_s32, handles.ST_s33], ...
    'BackgroundColor', [0.9 0.9 0.9], ...
    'Callback', callback);

end