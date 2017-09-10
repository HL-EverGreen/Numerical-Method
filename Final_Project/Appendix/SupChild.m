
function varargout = SupChild(varargin)
% SUPCHILD MATLAB code for SupChild.fig
%      SUPCHILD, by itself, creates a new SUPCHILD or raises the existing
%      singleton*.
%
%      H = SUPCHILD returns the handle to a new SUPCHILD or the handle to
%      the existing singleton*.
%
%      SUPCHILD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUPCHILD.M with the given input arguments.
%
%      SUPCHILD('Property','Value',...) creates a new SUPCHILD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SupChild_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SupChild_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SupChild

% Last Modified by GUIDE v2.5 21-Dec-2015 02:23:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SupChild_OpeningFcn, ...
                   'gui_OutputFcn',  @SupChild_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SupChild is made visible.

function SupChild_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SupChild (see VARARGIN)

% Choose default command line output for SupChild

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SupChild wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SupChild_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

s = sprintf('欢迎使用SupChild_V5.0\n\n');
msgbox(s,'Welcome','help')

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton1,'value',1);
set(handles.radiobutton5,'value',0);






% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
set(handles.radiobutton5,'value',1);
set(handles.radiobutton1,'value',0);


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1





% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
month=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81];
cm_b=[50.4000000000000,54.8000000000000,58.7000000000000,62,64.6000000000000,66.7000000000000,68.4000000000000,69.8000000000000,71.2000000000000,72.6000000000000,74,75.3000000000000,76.5000000000000,79.8000000000000,82.7000000000000,85.6000000000000,88.5000000000000,91.1000000000000,93.3000000000000,95.4000000000000,97.5000000000000,98.8000000000000,100.600000000000,102.400000000000,104.100000000000,105.900000000000,107.700000000000,109.500000000000,111.300000000000,113,114.700000000000,116.300000000000,117.700000000000,119.200000000000,120.700000000000,122.300000000000];
cm_b_l1=[[48.6000000000000,52.7000000000000,56.5000000000000,59.7000000000000,62.3000000000000,64.4000000000000,66,67.4000000000000,68.7000000000000,70.1000000000000,71.4000000000000,72.7000000000000,73.8000000000000,76.9000000000000,79.6000000000000,82.3000000000000,85.1000000000000,87.5000000000000,89.6000000000000,91.6000000000000,93.7000000000000,94.9000000000000,96.7000000000000,98.5000000000000,100.200000000000,101.900000000000,103.600000000000,105.300000000000,107,108.700000000000,110.200000000000,111.700000000000,113.100000000000,114.400000000000,115.800000000000,117.400000000000]];
cm_b_r1=[[52.2000000000000,56.9000000000000,61,64.3000000000000,66.9000000000000,69.1000000000000,70.8000000000000,72.3000000000000,73.7000000000000,75.2000000000000,76.6000000000000,78,79.3000000000000,82.8000000000000,85.8000000000000,89,92.1000000000000,94.8000000000000,97.1000000000000,99.3000000000000,101.400000000000,102.700000000000,104.500000000000,106.400000000000,108.200000000000,110,111.900000000000,113.800000000000,115.700000000000,117.500000000000,119.200000000000,120.900000000000,122.400000000000,124,125.600000000000,127.300000000000]];
kg_b_l1=[2.93000000000000,3.99000000000000,5.05000000000000,5.97000000000000,6.64000000000000,7.14000000000000,7.51000000000000,7.83000000000000,8.09000000000000,8.35000000000000,8.58000000000000,8.80000000000000,9,9.57000000000000,10.1200000000000,10.6900000000000,11.2400000000000,11.7500000000000,12.2200000000000,12.6800000000000,13.1300000000000,13.5700000000000,14,14.4400000000000,14.8800000000000,15.3500000000000,15.8400000000000,16.3400000000000,16.8700000000000,17.3800000000000,17.8500000000000,18.3100000000000,18.7100000000000,19.1400000000000,19.6200000000000,20.2200000000000];
kg_b_r1=[3.73000000000000,5.07000000000000,6.38000000000000,7.51000000000000,8.34000000000000,8.95000000000000,9.41000000000000,9.79000000000000,10.1100000000000,10.4200000000000,10.7100000000000,10.9800000000000,11.2300000000000,11.9300000000000,12.6100000000000,13.3300000000000,14.0100000000000,14.6400000000000,15.2400000000000,15.8200000000000,16.3900000000000,16.9500000000000,17.5000000000000,18.0700000000000,18.6700000000000,19.3000000000000,19.9800000000000,20.6900000000000,21.4600000000000,22.2100000000000,22.9400000000000,23.6600000000000,24.3200000000000,25.0600000000000,25.8900000000000,26.9500000000000];

cm_g_l1=[48,51.7000000000000,55.3000000000000,58.4000000000000,61,62.9000000000000,64.5000000000000,65.9000000000000,67.2000000000000,68.5000000000000,69.8000000000000,71.1000000000000,72.3000000000000,75.6000000000000,78.5000000000000,81.2000000000000,83.8000000000000,86.2000000000000,88.4000000000000,90.5000000000000,92.5000000000000,93.8000000000000,95.6000000000000,97.4000000000000,99.2000000000000,100.900000000000,102.700000000000,104.400000000000,106,107.600000000000,109.200000000000,110.700000000000,112,113.400000000000,114.700000000000,116.100000000000];
cm_g_r1=[51.4000000000000,55.7000000000000,59.6000000000000,62.8000000000000,65.4000000000000,67.4000000000000,69.1000000000000,70.6000000000000,72.1000000000000,73.6000000000000,75,76.4000000000000,77.7000000000000,81.4000000000000,84.6000000000000,87.7000000000000,90.7000000000000,93.5000000000000,95.9000000000000,98.1000000000000,100.100000000000,101.400000000000,103.300000000000,105.100000000000,107,109,110.900000000000,112.800000000000,114.500000000000,116.200000000000,118,119.700000000000,121.200000000000,122.700000000000,124.300000000000,125.900000000000];
kg_g_l1=[2.85000000000000,3.74000000000000,4.65000000000000,5.47000000000000,6.11000000000000,6.59000000000000,6.96000000000000,7.28000000000000,7.55000000000000,7.81000000000000,8.03000000000000,8.25000000000000,8.45000000000000,9.01000000000000,9.57000000000000,10.1500000000000,10.7000000000000,11.2100000000000,11.7000000000000,12.1800000000000,12.6500000000000,13.1100000000000,13.5500000000000,14,14.4400000000000,14.8800000000000,15.3300000000000,15.7800000000000,16.2000000000000,16.6400000000000,17.0900000000000,17.5300000000000,17.9400000000000,18.3500000000000,18.7800000000000,19.2500000000000];
kg_g_r1=[3.63000000000000,4.74000000000000,5.86000000000000,6.87000000000000,7.65000000000000,8.23000000000000,8.68000000000000,9.06000000000000,9.39000000000000,9.70000000000000,9.98000000000000,10.2400000000000,10.4800000000000,11.1800000000000,11.8800000000000,12.6100000000000,13.3100000000000,13.9700000000000,14.6000000000000,15.2200000000000,15.8300000000000,16.4300000000000,17.0100000000000,17.6000000000000,18.1900000000000,18.7900000000000,19.4200000000000,20.0500000000000,20.6600000000000,21.3000000000000,21.9800000000000,22.6500000000000,23.2700000000000,23.9200000000000,24.6100000000000,25.3700000000000];


y = get(handles.popupmenu1,'value');
m = get(handles.popupmenu2,'value');
d = get(handles.popupmenu3,'value');
y = 2017-y;
n = D2M(y,m,d);

if get(handles.radiobutton1,'value')
    option=1;
else
    option=2;
end

if option==1
    f=Piecewise_itp(month,cm_b_l1,7);
    set(handles.edit5,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_b_r1,7);
    set(handles.edit7,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_b_l1,7);
    set(handles.edit8,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_b_r1,7);
    set(handles.edit9,'String',roundn(f(n),-2));
else
    f=Piecewise_itp(month,cm_g_l1,7);
    set(handles.edit5,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_g_r1,7);
    set(handles.edit7,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_g_l1,7);
    set(handles.edit8,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_g_r1,7);
    set(handles.edit9,'String',roundn(f(n),-2));
end



% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

month=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81];
cm_b_l2=[46.9000000000000,50.7000000000000,54.3000000000000,57.5000000000000,60.1000000000000,62.1000000000000,63.7000000000000,65,66.3000000000000,67.6000000000000,68.9000000000000,70.1000000000000,71.2000000000000,74,76.6000000000000,79.1000000000000,81.6000000000000,83.9000000000000,85.9000000000000,88,90,91.2000000000000,93,94.6000000000000,96.3000000000000,97.9000000000000,99.5000000000000,101.100000000000,102.800000000000,104.400000000000,105.900000000000,107.300000000000,108.600000000000,109.800000000000,111.100000000000,112.600000000000];
cm_b_r2=[54,59,63.3000000000000,66.6000000000000,69.3000000000000,71.5000000000000,73.3000000000000,74.8000000000000,76.3000000000000,77.8000000000000,79.3000000000000,80.8000000000000,82.1000000000000,85.8000000000000,89.1000000000000,92.4000000000000,95.8000000000000,98.6000000000000,101,103.200000000000,105.300000000000,106.700000000000,108.600000000000,110.400000000000,112.300000000000,114.200000000000,116.200000000000,118.200000000000,120.100000000000,122,123.800000000000,125.600000000000,127.200000000000,128.800000000000,130.500000000000,132.400000000000];
cm_b_l1=[[48.6000000000000,52.7000000000000,56.5000000000000,59.7000000000000,62.3000000000000,64.4000000000000,66,67.4000000000000,68.7000000000000,70.1000000000000,71.4000000000000,72.7000000000000,73.8000000000000,76.9000000000000,79.6000000000000,82.3000000000000,85.1000000000000,87.5000000000000,89.6000000000000,91.6000000000000,93.7000000000000,94.9000000000000,96.7000000000000,98.5000000000000,100.200000000000,101.900000000000,103.600000000000,105.300000000000,107,108.700000000000,110.200000000000,111.700000000000,113.100000000000,114.400000000000,115.800000000000,117.400000000000]];
cm_b_r1=[[52.2000000000000,56.9000000000000,61,64.3000000000000,66.9000000000000,69.1000000000000,70.8000000000000,72.3000000000000,73.7000000000000,75.2000000000000,76.6000000000000,78,79.3000000000000,82.8000000000000,85.8000000000000,89,92.1000000000000,94.8000000000000,97.1000000000000,99.3000000000000,101.400000000000,102.700000000000,104.500000000000,106.400000000000,108.200000000000,110,111.900000000000,113.800000000000,115.700000000000,117.500000000000,119.200000000000,120.900000000000,122.400000000000,124,125.600000000000,127.300000000000]];
kg_b_l1=[2.93000000000000,3.99000000000000,5.05000000000000,5.97000000000000,6.64000000000000,7.14000000000000,7.51000000000000,7.83000000000000,8.09000000000000,8.35000000000000,8.58000000000000,8.80000000000000,9,9.57000000000000,10.1200000000000,10.6900000000000,11.2400000000000,11.7500000000000,12.2200000000000,12.6800000000000,13.1300000000000,13.5700000000000,14,14.4400000000000,14.8800000000000,15.3500000000000,15.8400000000000,16.3400000000000,16.8700000000000,17.3800000000000,17.8500000000000,18.3100000000000,18.7100000000000,19.1400000000000,19.6200000000000,20.2200000000000];
kg_b_r1=[3.73000000000000,5.07000000000000,6.38000000000000,7.51000000000000,8.34000000000000,8.95000000000000,9.41000000000000,9.79000000000000,10.1100000000000,10.4200000000000,10.7100000000000,10.9800000000000,11.2300000000000,11.9300000000000,12.6100000000000,13.3300000000000,14.0100000000000,14.6400000000000,15.2400000000000,15.8200000000000,16.3900000000000,16.9500000000000,17.5000000000000,18.0700000000000,18.6700000000000,19.3000000000000,19.9800000000000,20.6900000000000,21.4600000000000,22.2100000000000,22.9400000000000,23.6600000000000,24.3200000000000,25.0600000000000,25.8900000000000,26.9500000000000];
kg_b_l2=[2.58000000000000,3.52000000000000,4.47000000000000,5.29000000000000,5.91000000000000,6.36000000000000,6.70000000000000,6.99000000000000,7.23000000000000,7.46000000000000,7.67000000000000,7.87000000000000,8.06000000000000,8.57000000000000,9.07000000000000,9.59000000000000,10.0900000000000,10.5400000000000,10.9700000000000,11.3900000000000,11.7900000000000,12.1900000000000,12.5700000000000,12.9600000000000,13.3500000000000,13.7600000000000,14.1800000000000,14.6100000000000,15.0600000000000,15.4800000000000,15.8700000000000,16.2400000000000,16.5600000000000,16.9000000000000,17.2700000000000,17.7300000000000];
kg_b_r2=[4.18000000000000,5.67000000000000,7.14000000000000,8.40000000000000,9.32000000000000,9.99000000000000,10.5000000000000,10.9300000000000,11.2900000000000,11.6400000000000,11.9500000000000,12.2600000000000,12.5400000000000,13.3200000000000,14.0900000000000,14.9000000000000,15.6700000000000,16.3800000000000,17.0600000000000,17.7200000000000,18.3700000000000,19.0200000000000,19.6500000000000,20.3200000000000,21.0100000000000,21.7600000000000,22.5700000000000,23.4300000000000,24.3800000000000,25.3200000000000,26.2400000000000,27.1700000000000,28.0300000000000,29.0100000000000,30.1300000000000,31.5600000000000];

cm_g_l1=[48,51.7000000000000,55.3000000000000,58.4000000000000,61,62.9000000000000,64.5000000000000,65.9000000000000,67.2000000000000,68.5000000000000,69.8000000000000,71.1000000000000,72.3000000000000,75.6000000000000,78.5000000000000,81.2000000000000,83.8000000000000,86.2000000000000,88.4000000000000,90.5000000000000,92.5000000000000,93.8000000000000,95.6000000000000,97.4000000000000,99.2000000000000,100.900000000000,102.700000000000,104.400000000000,106,107.600000000000,109.200000000000,110.700000000000,112,113.400000000000,114.700000000000,116.100000000000];
cm_g_r1=[51.4000000000000,55.7000000000000,59.6000000000000,62.8000000000000,65.4000000000000,67.4000000000000,69.1000000000000,70.6000000000000,72.1000000000000,73.6000000000000,75,76.4000000000000,77.7000000000000,81.4000000000000,84.6000000000000,87.7000000000000,90.7000000000000,93.5000000000000,95.9000000000000,98.1000000000000,100.100000000000,101.400000000000,103.300000000000,105.100000000000,107,109,110.900000000000,112.800000000000,114.500000000000,116.200000000000,118,119.700000000000,121.200000000000,122.700000000000,124.300000000000,125.900000000000];
kg_g_l1=[2.85000000000000,3.74000000000000,4.65000000000000,5.47000000000000,6.11000000000000,6.59000000000000,6.96000000000000,7.28000000000000,7.55000000000000,7.81000000000000,8.03000000000000,8.25000000000000,8.45000000000000,9.01000000000000,9.57000000000000,10.1500000000000,10.7000000000000,11.2100000000000,11.7000000000000,12.1800000000000,12.6500000000000,13.1100000000000,13.5500000000000,14,14.4400000000000,14.8800000000000,15.3300000000000,15.7800000000000,16.2000000000000,16.6400000000000,17.0900000000000,17.5300000000000,17.9400000000000,18.3500000000000,18.7800000000000,19.2500000000000];
kg_g_r1=[3.63000000000000,4.74000000000000,5.86000000000000,6.87000000000000,7.65000000000000,8.23000000000000,8.68000000000000,9.06000000000000,9.39000000000000,9.70000000000000,9.98000000000000,10.2400000000000,10.4800000000000,11.1800000000000,11.8800000000000,12.6100000000000,13.3100000000000,13.9700000000000,14.6000000000000,15.2200000000000,15.8300000000000,16.4300000000000,17.0100000000000,17.6000000000000,18.1900000000000,18.7900000000000,19.4200000000000,20.0500000000000,20.6600000000000,21.3000000000000,21.9800000000000,22.6500000000000,23.2700000000000,23.9200000000000,24.6100000000000,25.3700000000000];
cm_g_l2=[46.4000000000000,49.8000000000000,53.2000000000000,56.3000000000000,58.8000000000000,60.8000000000000,62.3000000000000,63.6000000000000,64.8000000000000,66.1000000000000,67.3000000000000,68.6000000000000,69.7000000000000,72.9000000000000,75.6000000000000,78.1000000000000,80.5000000000000,82.7000000000000,84.8000000000000,86.9000000000000,88.9000000000000,90.1000000000000,91.9000000000000,93.7000000000000,95.4000000000000,97,98.7000000000000,100.300000000000,101.800000000000,103.400000000000,104.900000000000,106.300000000000,107.600000000000,108.800000000000,110.100000000000,111.400000000000];
cm_g_r2=[53.2000000000000,57.8000000000000,61.8000000000000,65.1000000000000,67.7000000000000,69.8000000000000,71.5000000000000,73.1000000000000,74.7000000000000,76.2000000000000,77.7000000000000,79.2000000000000,80.5000000000000,84.3000000000000,87.7000000000000,91.1000000000000,94.3000000000000,97.3000000000000,99.8000000000000,102,104.100000000000,105.400000000000,107.200000000000,109.200000000000,111.100000000000,113.100000000000,115.200000000000,117.100000000000,118.900000000000,120.700000000000,122.600000000000,124.400000000000,126,127.600000000000,129.200000000000,130.900000000000];
kg_g_l2=[2.54000000000000,3.33000000000000,4.15000000000000,4.90000000000000,5.48000000000000,5.92000000000000,6.26000000000000,6.55000000000000,6.79000000000000,7.03000000000000,7.23000000000000,7.43000000000000,7.61000000000000,8.12000000000000,8.63000000000000,9.15000000000000,9.64000000000000,10.0900000000000,10.5200000000000,10.9400000000000,11.3600000000000,11.7700000000000,12.1600000000000,12.5500000000000,12.9300000000000,13.3200000000000,13.7100000000000,14.0800000000000,14.4400000000000,14.8000000000000,15.1800000000000,15.5400000000000,15.8700000000000,16.2100000000000,16.5500000000000,16.9200000000000];
kg_g_r2=[4.10000000000000,5.35000000000000,6.60000000000000,7.73000000000000,8.59000000000000,9.23000000000000,9.73000000000000,10.1500000000000,10.5100000000000,10.8600000000000,11.1600000000000,11.4600000000000,11.7300000000000,12.5000000000000,13.2900000000000,14.1200000000000,14.9200000000000,15.6700000000000,16.3900000000000,17.1100000000000,17.8100000000000,18.5000000000000,19.1700000000000,19.8500000000000,20.5400000000000,21.2500000000000,22,22.7500000000000,23.5000000000000,24.2800000000000,25.1200000000000,25.9600000000000,26.7400000000000,27.5700000000000,28.4600000000000,29.4200000000000];

y = get(handles.popupmenu1,'value');
m = get(handles.popupmenu2,'value');
d = get(handles.popupmenu3,'value');
y = 2017-y;
n = D2M(y,m,d);

if get(handles.radiobutton1,'value')
    option=1;
else
    option=2;
end

if option==1
    f=Piecewise_itp(month,cm_b_l2,7);
    set(handles.edit10,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_b_l1,7);
    set(handles.edit11,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_b_r1,7);
    set(handles.edit14,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_b_r2,7);
    set(handles.edit15,'String',roundn(f(n),-2));
    
    f=Piecewise_itp(month,kg_b_l2,7);
    set(handles.edit12,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_b_l1,7);
    set(handles.edit13,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_b_r1,7);
    set(handles.edit16,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_b_r2,7);
    set(handles.edit17,'String',roundn(f(n),-2));
else
    f=Piecewise_itp(month,cm_g_l2,7);
    set(handles.edit10,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_g_l1,7);
    set(handles.edit11,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_g_r1,7);
    set(handles.edit14,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,cm_g_r2,7);
    set(handles.edit15,'String',roundn(f(n),-2));
    
    f=Piecewise_itp(month,kg_g_l2,7);
    set(handles.edit12,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_g_l1,7);
    set(handles.edit13,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_g_r1,7);
    set(handles.edit16,'String',roundn(f(n),-2));
    f=Piecewise_itp(month,kg_g_r2,7);
    set(handles.edit17,'String',roundn(f(n),-2));
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
month=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81];
cm_b=[50.4000000000000,54.8000000000000,58.7000000000000,62,64.6000000000000,66.7000000000000,68.4000000000000,69.8000000000000,71.2000000000000,72.6000000000000,74,75.3000000000000,76.5000000000000,79.8000000000000,82.7000000000000,85.6000000000000,88.5000000000000,91.1000000000000,93.3000000000000,95.4000000000000,97.5000000000000,98.8000000000000,100.600000000000,102.400000000000,104.100000000000,105.900000000000,107.700000000000,109.500000000000,111.300000000000,113,114.700000000000,116.300000000000,117.700000000000,119.200000000000,120.700000000000,122.300000000000];
cm_g=[49.7000000000000,53.7000000000000,57.4000000000000,60.6000000000000,63.1000000000000,65.2000000000000,66.8000000000000,68.2000000000000,69.6000000000000,71,72.4000000000000,73.7000000000000,75,78.5000000000000,81.5000000000000,84.4000000000000,87.2000000000000,89.8000000000000,92.1000000000000,94.3000000000000,96.3000000000000,97.5000000000000,99.4000000000000,101.200000000000,103.100000000000,104.900000000000,106.700000000000,108.500000000000,110.200000000000,111.900000000000,113.500000000000,115.200000000000,116.600000000000,118,119.400000000000,121];
kg_b=[3.32000000000000,4.51000000000000,5.68000000000000,6.70000000000000,7.45000000000000,8,8.41000000000000,8.76000000000000,9.05000000000000,9.33000000000000,9.58000000000000,9.83000000000000,10.0500000000000,10.6800000000000,11.2900000000000,11.9300000000000,12.5400000000000,13.1100000000000,13.6400000000000,14.1500000000000,14.6500000000000,15.1500000000000,15.6300000000000,16.1300000000000,16.6400000000000,17.1800000000000,17.7500000000000,18.3500000000000,18.9800000000000,19.6000000000000,20.1800000000000,20.7500000000000,21.2600000000000,21.8200000000000,22.4500000000000,23.2400000000000];
kg_g=[3.21000000000000,4.20000000000000,5.21000000000000,6.13000000000000,6.83000000000000,7.36000000000000,7.77000000000000,8.11000000000000,8.41000000000000,8.69000000000000,8.94000000000000,9.18000000000000,9.40000000000000,10.0200000000000,10.6500000000000,11.3000000000000,11.9200000000000,12.5000000000000,13.0500000000000,13.5900000000000,14.1300000000000,14.6500000000000,15.1600000000000,15.6700000000000,16.1700000000000,16.6900000000000,17.2200000000000,17.7500000000000,18.2600000000000,18.7800000000000,19.3300000000000,19.8800000000000,20.3700000000000,20.8900000000000,21.4400000000000,22.0300000000000];

if get(handles.radiobutton1,'value')
    option=1;
else
    option=2;
end

if option==1
   f=CubicN_itp(month,cm_b); 
   x = 0:0.01:80; y=f(x);
   plot(x,y,'r','linewid',1.5);
   y = get(handles.popupmenu1,'value');
   m = get(handles.popupmenu2,'value');
   d = get(handles.popupmenu3,'value');
   y = 2017-y;
   n = D2M(y,m,d);
   hold on;
   plot(n,f(n),'b*');
   hold off;
else
   f=CubicN_itp(month,cm_g); 
   x = 0:0.01:80; y=f(x);
   plot(x,y,'r','linewid',1.5);
   y = get(handles.popupmenu1,'value');
   m = get(handles.popupmenu2,'value');
   d = get(handles.popupmenu3,'value');
   y = 2017-y;
   n = D2M(y,m,d);
   hold on;
   plot(n,f(n),'b*');
   hold off;
end



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
month=[0,1,2,3,4,5,6,7,8,9,10,11,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81];
cm_b=[50.4000000000000,54.8000000000000,58.7000000000000,62,64.6000000000000,66.7000000000000,68.4000000000000,69.8000000000000,71.2000000000000,72.6000000000000,74,75.3000000000000,76.5000000000000,79.8000000000000,82.7000000000000,85.6000000000000,88.5000000000000,91.1000000000000,93.3000000000000,95.4000000000000,97.5000000000000,98.8000000000000,100.600000000000,102.400000000000,104.100000000000,105.900000000000,107.700000000000,109.500000000000,111.300000000000,113,114.700000000000,116.300000000000,117.700000000000,119.200000000000,120.700000000000,122.300000000000];
cm_g=[49.7000000000000,53.7000000000000,57.4000000000000,60.6000000000000,63.1000000000000,65.2000000000000,66.8000000000000,68.2000000000000,69.6000000000000,71,72.4000000000000,73.7000000000000,75,78.5000000000000,81.5000000000000,84.4000000000000,87.2000000000000,89.8000000000000,92.1000000000000,94.3000000000000,96.3000000000000,97.5000000000000,99.4000000000000,101.200000000000,103.100000000000,104.900000000000,106.700000000000,108.500000000000,110.200000000000,111.900000000000,113.500000000000,115.200000000000,116.600000000000,118,119.400000000000,121];
kg_b=[3.32000000000000,4.51000000000000,5.68000000000000,6.70000000000000,7.45000000000000,8,8.41000000000000,8.76000000000000,9.05000000000000,9.33000000000000,9.58000000000000,9.83000000000000,10.0500000000000,10.6800000000000,11.2900000000000,11.9300000000000,12.5400000000000,13.1100000000000,13.6400000000000,14.1500000000000,14.6500000000000,15.1500000000000,15.6300000000000,16.1300000000000,16.6400000000000,17.1800000000000,17.7500000000000,18.3500000000000,18.9800000000000,19.6000000000000,20.1800000000000,20.7500000000000,21.2600000000000,21.8200000000000,22.4500000000000,23.2400000000000];
kg_g=[3.21000000000000,4.20000000000000,5.21000000000000,6.13000000000000,6.83000000000000,7.36000000000000,7.77000000000000,8.11000000000000,8.41000000000000,8.69000000000000,8.94000000000000,9.18000000000000,9.40000000000000,10.0200000000000,10.6500000000000,11.3000000000000,11.9200000000000,12.5000000000000,13.0500000000000,13.5900000000000,14.1300000000000,14.6500000000000,15.1600000000000,15.6700000000000,16.1700000000000,16.6900000000000,17.2200000000000,17.7500000000000,18.2600000000000,18.7800000000000,19.3300000000000,19.8800000000000,20.3700000000000,20.8900000000000,21.4400000000000,22.0300000000000];

if get(handles.radiobutton1,'value')
    option=1;
else
    option=2;
end

if option==1
   f=CubicN_itp(month,kg_b); 
   x = 0:0.01:80; y=f(x);
   plot(x,y,'r','linewid',1.5);
   y = get(handles.popupmenu1,'value');
   m = get(handles.popupmenu2,'value');
   d = get(handles.popupmenu3,'value');
   y = 2017-y;
   n = D2M(y,m,d);
   hold on;
   plot(n,f(n),'b*');
   hold off;
else
   f=CubicN_itp(month,kg_g); 
   x = 0:0.01:80; y=f(x);
   plot(x,y,'r','linewid',1.5);
   y = get(handles.popupmenu1,'value');
   m = get(handles.popupmenu2,'value');
   d = get(handles.popupmenu3,'value');
   y = 2017-y;
   n = D2M(y,m,d);
   hold on;
   plot(n,f(n),'b*');
   hold off;
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
% delete(hObject);
button3=questdlg('您确定要退出SupChild吗？','EXIT','Yes','No','Yes');
if strcmp(button3,'Yes')
     delete(hObject);
end;
