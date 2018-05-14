import ballerina/io;
import ballerina/mime;
import ballerina/http;

//=====================================
//============Client Config============
//=====================================
public type SwaggerPetstoreClientConfig {
    string serviceUrl,
};

//=======================================
//============Client Endpoint============
//=======================================
public type SwaggerPetstoreClientEp object {
    public {
        http:Client client;
        SwaggerPetstoreClientConfig config;
    }

    public function init(SwaggerPetstoreClientConfig config) {
        endpoint http:Client httpEp {
            url: config.serviceUrl
        };

        self.client = httpEp;
        self.config = config;
    }

    public function getCallerActions() returns (SwaggerPetstoreClient) {
        return new SwaggerPetstoreClient(self);
    }
};

//==============================
//============Client============
//==============================
public type SwaggerPetstoreClient object {
    public {
        SwaggerPetstoreClientEp clientEp;
    }

    new (clientEp) {}

    public function updatePet() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->put("/pet", request = request);
    }
    
    public function addPet() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/pet", request = request);
    }
    
    public function findPetsByStatus() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/pet/findByStatus", request = request);
    }
    
    public function findPetsByTags() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/pet/findByTags", request = request);
    }
    
    public function getPetById(int petId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/pet/{petId}", request = request);
    }
    
    public function updatePetWithForm(int petId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/pet/{petId}", request = request);
    }
    
    public function deletePet(int petId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->delete("/pet/{petId}", request = request);
    }
    
    public function uploadFile(int petId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/pet/{petId}/uploadImage", request = request);
    }
    
    public function getInventory() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/store/inventory", request = request);
    }
    
    public function placeOrder() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/store/order", request = request);
    }
    
    public function getOrderById(int orderId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/store/order/{orderId}", request = request);
    }
    
    public function deleteOrder(int orderId) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->delete("/store/order/{orderId}", request = request);
    }
    
    public function createUser() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/user", request = request);
    }
    
    public function createUsersWithArrayInput() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/user/createWithArray", request = request);
    }
    
    public function createUsersWithListInput() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->post("/user/createWithList", request = request);
    }
    
    public function loginUser() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/user/login", request = request);
    }
    
    public function logoutUser() returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/user/logout", request = request);
    }
    
    public function getUserByName(string username) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->get("/user/{username}", request = request);
    }
    
    public function updateUser(string username) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->put("/user/{username}", request = request);
    }
    
    public function deleteUser(string username) returns http:Response | error {
        endpoint http:Client ep = self.clientEp.client;
        http:Request request = new;

        //Create the required request as needed
        return check ep->delete("/user/{username}", request = request);
    }
    
};
