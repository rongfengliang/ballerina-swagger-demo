import ballerina/grpc;
import ballerina/io;

public type EchoServiceBlockingStub object {
    
    public {
        grpc:Client clientEndpoint;
        grpc:Stub stub;
    }

    function initStub (grpc:Client clientEndpoint) {
        grpc:Stub navStub = new;
        navStub.initStub(clientEndpoint, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Echo (EchoMessage req, grpc:Headers? headers = ()) returns ((EchoResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("echoservice.EchoService/Echo", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                any result;
                grpc:Headers resHeaders;
                (result, resHeaders) = payload;
                return (<EchoResponse>result, resHeaders);
            }
        }
    }
    
};

public type EchoServiceStub object {
    
    public {
        grpc:Client clientEndpoint;
        grpc:Stub stub;
    }

    function initStub (grpc:Client clientEndpoint) {
        grpc:Stub navStub = new;
        navStub.initStub(clientEndpoint, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Echo (EchoMessage req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        return self.stub.nonBlockingExecute("echoservice.EchoService/Echo", req, listener, headers = headers);
    }
    
};


public type EchoServiceBlockingClient object {
    
    public {
        grpc:Client client;
        EchoServiceBlockingStub stub;
    }

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client client = new;
        client.init(config);
        self.client = client;
        // initialize service stub.
        EchoServiceBlockingStub stub = new;
        stub.initStub(client);
        self.stub = stub;
    }

    public function getCallerActions () returns (EchoServiceBlockingStub) {
        return self.stub;
    }
};

public type EchoServiceClient object {
    
    public {
        grpc:Client client;
        EchoServiceStub stub;
    }

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client client = new;
        client.init(config);
        self.client = client;
        // initialize service stub.
        EchoServiceStub stub = new;
        stub.initStub(client);
        self.stub = stub;
    }

    public function getCallerActions () returns (EchoServiceStub) {
        return self.stub;
    }
};


type EchoMessage {
    string message;
    
};

type EchoResponse {
    string message;
    
};


@final string DESCRIPTOR_KEY = "echoservice.userservice.proto";
map descriptorMap =
{ 
    "echoservice.userservice.proto":"0A1175736572736572766963652E70726F746F120B6563686F7365727669636522270A0B4563686F4D65737361676512180A076D65737361676518012001280952076D65737361676522280A0C4563686F526573706F6E736512180A076D65737361676518012001280952076D657373616765324A0A0B4563686F53657276696365123B0A044563686F12182E6563686F736572766963652E4563686F4D6573736167651A192E6563686F736572766963652E4563686F526573706F6E7365420D5A0B6563686F73657276696365620670726F746F33"
  
};
