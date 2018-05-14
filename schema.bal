

public type Order { 
    int id,
    int petId,
    int quantity,
    string shipDate,
    string status,
    boolean complete,
};

public type Category { 
    int id,
    string name,
};

public type User { 
    int id,
    string username,
    string firstName,
    string lastName,
    string email,
    string password,
    string phone,
    int userStatus,
};

public type Tag { 
    int id,
    string name,
};

public type Pet { 
    int id,
    Category category,
    string name,
    string[] photoUrls,
    Tag[] tags,
    string status,
};

public type ApiResponse { 
    int code,
    string _type,
    string message,
};