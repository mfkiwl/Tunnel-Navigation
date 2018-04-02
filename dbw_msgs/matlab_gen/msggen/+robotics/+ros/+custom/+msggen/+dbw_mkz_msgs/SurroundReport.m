classdef SurroundReport < robotics.ros.Message
    %SurroundReport MATLAB implementation of dbw_mkz_msgs/SurroundReport
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'dbw_mkz_msgs/SurroundReport' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '17a8c9ed72da4f55d44d6d71483cf0e3' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        FRONTLEFTSIDE = uint8(0)
        FRONTLEFTCORNER = uint8(1)
        FRONTLEFTCENTER = uint8(2)
        FRONTRIGHTCENTER = uint8(3)
        FRONTRIGHTCORNER = uint8(4)
        FRONTRIGHTSIDE = uint8(5)
        REARLEFTSIDE = uint8(6)
        REARLEFTCORNER = uint8(7)
        REARLEFTCENTER = uint8(8)
        REARRIGHTCENTER = uint8(9)
        REARRIGHTCORNER = uint8(10)
        REARRIGHTSIDE = uint8(11)
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        CtaLeftAlert
        CtaRightAlert
        CtaLeftEnabled
        CtaRightEnabled
        BlisLeftAlert
        BlisRightAlert
        BlisLeftEnabled
        BlisRightEnabled
        SonarEnabled
        SonarFault
        Sonar
    end
    
    properties (Access = protected)
        Cache = struct('Header', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'BlisLeftAlert', 'BlisLeftEnabled', 'BlisRightAlert', 'BlisRightEnabled', 'CtaLeftAlert', 'CtaLeftEnabled', 'CtaRightAlert', 'CtaRightEnabled', 'Header', 'Sonar', 'SonarEnabled', 'SonarFault'} % List of non-constant message properties
        ROSPropertyList = {'blis_left_alert', 'blis_left_enabled', 'blis_right_alert', 'blis_right_enabled', 'cta_left_alert', 'cta_left_enabled', 'cta_right_alert', 'cta_right_enabled', 'header', 'sonar', 'sonar_enabled', 'sonar_fault'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = SurroundReport(msg)
            %SurroundReport Construct the message object SurroundReport
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'SurroundReport', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function ctaleftalert = get.CtaLeftAlert(obj)
            %get.CtaLeftAlert Get the value for property CtaLeftAlert
            ctaleftalert = logical(obj.JavaMessage.getCtaLeftAlert);
        end
        
        function set.CtaLeftAlert(obj, ctaleftalert)
            %set.CtaLeftAlert Set the value for property CtaLeftAlert
            validateattributes(ctaleftalert, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'CtaLeftAlert');
            
            obj.JavaMessage.setCtaLeftAlert(ctaleftalert);
        end
        
        function ctarightalert = get.CtaRightAlert(obj)
            %get.CtaRightAlert Get the value for property CtaRightAlert
            ctarightalert = logical(obj.JavaMessage.getCtaRightAlert);
        end
        
        function set.CtaRightAlert(obj, ctarightalert)
            %set.CtaRightAlert Set the value for property CtaRightAlert
            validateattributes(ctarightalert, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'CtaRightAlert');
            
            obj.JavaMessage.setCtaRightAlert(ctarightalert);
        end
        
        function ctaleftenabled = get.CtaLeftEnabled(obj)
            %get.CtaLeftEnabled Get the value for property CtaLeftEnabled
            ctaleftenabled = logical(obj.JavaMessage.getCtaLeftEnabled);
        end
        
        function set.CtaLeftEnabled(obj, ctaleftenabled)
            %set.CtaLeftEnabled Set the value for property CtaLeftEnabled
            validateattributes(ctaleftenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'CtaLeftEnabled');
            
            obj.JavaMessage.setCtaLeftEnabled(ctaleftenabled);
        end
        
        function ctarightenabled = get.CtaRightEnabled(obj)
            %get.CtaRightEnabled Get the value for property CtaRightEnabled
            ctarightenabled = logical(obj.JavaMessage.getCtaRightEnabled);
        end
        
        function set.CtaRightEnabled(obj, ctarightenabled)
            %set.CtaRightEnabled Set the value for property CtaRightEnabled
            validateattributes(ctarightenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'CtaRightEnabled');
            
            obj.JavaMessage.setCtaRightEnabled(ctarightenabled);
        end
        
        function blisleftalert = get.BlisLeftAlert(obj)
            %get.BlisLeftAlert Get the value for property BlisLeftAlert
            blisleftalert = logical(obj.JavaMessage.getBlisLeftAlert);
        end
        
        function set.BlisLeftAlert(obj, blisleftalert)
            %set.BlisLeftAlert Set the value for property BlisLeftAlert
            validateattributes(blisleftalert, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'BlisLeftAlert');
            
            obj.JavaMessage.setBlisLeftAlert(blisleftalert);
        end
        
        function blisrightalert = get.BlisRightAlert(obj)
            %get.BlisRightAlert Get the value for property BlisRightAlert
            blisrightalert = logical(obj.JavaMessage.getBlisRightAlert);
        end
        
        function set.BlisRightAlert(obj, blisrightalert)
            %set.BlisRightAlert Set the value for property BlisRightAlert
            validateattributes(blisrightalert, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'BlisRightAlert');
            
            obj.JavaMessage.setBlisRightAlert(blisrightalert);
        end
        
        function blisleftenabled = get.BlisLeftEnabled(obj)
            %get.BlisLeftEnabled Get the value for property BlisLeftEnabled
            blisleftenabled = logical(obj.JavaMessage.getBlisLeftEnabled);
        end
        
        function set.BlisLeftEnabled(obj, blisleftenabled)
            %set.BlisLeftEnabled Set the value for property BlisLeftEnabled
            validateattributes(blisleftenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'BlisLeftEnabled');
            
            obj.JavaMessage.setBlisLeftEnabled(blisleftenabled);
        end
        
        function blisrightenabled = get.BlisRightEnabled(obj)
            %get.BlisRightEnabled Get the value for property BlisRightEnabled
            blisrightenabled = logical(obj.JavaMessage.getBlisRightEnabled);
        end
        
        function set.BlisRightEnabled(obj, blisrightenabled)
            %set.BlisRightEnabled Set the value for property BlisRightEnabled
            validateattributes(blisrightenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'BlisRightEnabled');
            
            obj.JavaMessage.setBlisRightEnabled(blisrightenabled);
        end
        
        function sonarenabled = get.SonarEnabled(obj)
            %get.SonarEnabled Get the value for property SonarEnabled
            sonarenabled = logical(obj.JavaMessage.getSonarEnabled);
        end
        
        function set.SonarEnabled(obj, sonarenabled)
            %set.SonarEnabled Set the value for property SonarEnabled
            validateattributes(sonarenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'SonarEnabled');
            
            obj.JavaMessage.setSonarEnabled(sonarenabled);
        end
        
        function sonarfault = get.SonarFault(obj)
            %get.SonarFault Get the value for property SonarFault
            sonarfault = logical(obj.JavaMessage.getSonarFault);
        end
        
        function set.SonarFault(obj, sonarfault)
            %set.SonarFault Set the value for property SonarFault
            validateattributes(sonarfault, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'SurroundReport', 'SonarFault');
            
            obj.JavaMessage.setSonarFault(sonarfault);
        end
        
        function sonar = get.Sonar(obj)
            %get.Sonar Get the value for property Sonar
            javaArray = obj.JavaMessage.getSonar;
            array = obj.readJavaArray(javaArray, 'single');
            sonar = single(array);
        end
        
        function set.Sonar(obj, sonar)
            %set.Sonar Set the value for property Sonar
            validateattributes(sonar, {'numeric'}, {'vector', 'numel', 12}, 'SurroundReport', 'Sonar');
            
            javaArray = obj.JavaMessage.getSonar;
            array = obj.writeJavaArray(sonar, javaArray, 'single');
            obj.JavaMessage.setSonar(array);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.CtaLeftAlert = obj.CtaLeftAlert;
            cpObj.CtaRightAlert = obj.CtaRightAlert;
            cpObj.CtaLeftEnabled = obj.CtaLeftEnabled;
            cpObj.CtaRightEnabled = obj.CtaRightEnabled;
            cpObj.BlisLeftAlert = obj.BlisLeftAlert;
            cpObj.BlisRightAlert = obj.BlisRightAlert;
            cpObj.BlisLeftEnabled = obj.BlisLeftEnabled;
            cpObj.BlisRightEnabled = obj.BlisRightEnabled;
            cpObj.SonarEnabled = obj.SonarEnabled;
            cpObj.SonarFault = obj.SonarFault;
            cpObj.Sonar = obj.Sonar;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.CtaLeftAlert = strObj.CtaLeftAlert;
            obj.CtaRightAlert = strObj.CtaRightAlert;
            obj.CtaLeftEnabled = strObj.CtaLeftEnabled;
            obj.CtaRightEnabled = strObj.CtaRightEnabled;
            obj.BlisLeftAlert = strObj.BlisLeftAlert;
            obj.BlisRightAlert = strObj.BlisRightAlert;
            obj.BlisLeftEnabled = strObj.BlisLeftEnabled;
            obj.BlisRightEnabled = strObj.BlisRightEnabled;
            obj.SonarEnabled = strObj.SonarEnabled;
            obj.SonarFault = strObj.SonarFault;
            obj.Sonar = strObj.Sonar;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.CtaLeftAlert = obj.CtaLeftAlert;
            strObj.CtaRightAlert = obj.CtaRightAlert;
            strObj.CtaLeftEnabled = obj.CtaLeftEnabled;
            strObj.CtaRightEnabled = obj.CtaRightEnabled;
            strObj.BlisLeftAlert = obj.BlisLeftAlert;
            strObj.BlisRightAlert = obj.BlisRightAlert;
            strObj.BlisLeftEnabled = obj.BlisLeftEnabled;
            strObj.BlisRightEnabled = obj.BlisRightEnabled;
            strObj.SonarEnabled = obj.SonarEnabled;
            strObj.SonarFault = obj.SonarFault;
            strObj.Sonar = obj.Sonar;
            strObj.Header = saveobj(obj.Header);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.dbw_mkz_msgs.SurroundReport.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.dbw_mkz_msgs.SurroundReport;
            obj.reload(strObj);
        end
    end
end
