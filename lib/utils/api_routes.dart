class ApiRoutes {

  //global url
  static String server_url = "https://carpime.com/dashboard/api/";





//auth employee (login)
  static String employeeLogin = server_url + "employee/login";

// auth employee (forget password)
  static String employeeForgetPassword = server_url + "employee/forgetPassword";
  static String employeeCheckResetCode = server_url + "employee/checkResetCode";
  static String employeeResetPassword = server_url + "employee/resetPassword";

// auth employee (logout)
  static String employeeLogout = server_url + "employee/logout";

// auth others
  static String allBranches = server_url + "getAllBranches";

  static String getPlatesInfo = server_url + "getPlatesInfo";


// Home (client)

  static String addNewUser = server_url + "employee/addNewUser";
  static String addUserCars = server_url + "employee/addUserCars";
  static String searchForClients = server_url + "employee/searchForClient";
  static String userById = server_url + "employee/getUserById";
  static String updateClientProfile = server_url + "employee/updateUserProfile";
  static String userOrdersLog = server_url + "employee/getUserOrdersLog";
  static String updateUserCar = server_url + "employee/updateUserCar";
  static String userCarLog = server_url + "employee/getUserCarLog";


// Home (sections)
static String allSections = server_url + "employee/getAllSections";
static String servicesBySectionId = server_url + "employee/getServicesBySectionId";


// Home (cart)
static String addServicesToCart = server_url + "employee/addServiceToCart";
static String cartServices = server_url + "employee/getCartServices";
static String removeCartServices = server_url + "employee/removeCartService";
static String cartSummary = server_url + "employee/getCartSummary";
static String cancelUserOrder = server_url + "employee/cancelUserOrder";

static String cartCount = server_url + "employee/getCartCount";


// Home (orders)
static String checkUserCoupon = server_url + "employee/checkUserCoupon";
static String systemOrderDiscount = server_url + "employee/systemOrderDiscount";
static String setUserOrder = server_url + "employee/setUserOrder";
static String getUserOrders = server_url + "employee/getUserOrders";
static String setUserOrderComplete = server_url + "employee/setUserOrderComplete";
static String getOrderById = server_url + "employee/getOrderById";
static String setOrderReadyForDelivery = server_url + "employee/setOrderReadyForDelivery";


// Home (profile)
static String updateEmployeeProfile = server_url + "employee/updateEmployeeProfile";
static String changeEmployeePassword = server_url + "employee/changeEmployeePassword";


// Home (Notifications)
static String getEmployeeNotification = server_url + "employee/getEmployeeNotifications";
static String removeEmployeeNotification = server_url + "employee/removeEmployeeNotification";
  static  String updateFCMToken = server_url + "updateDeviceToken";




// chat
static String allChats = server_url + "getAllUsers";
static String setChatRoom = server_url + "setChatRoom";
static String getUpdatedChatList = server_url + "getUpdatedChatList";



// Companies
static String getBrandsByCompanyId = server_url + "getBrandsByCompanyId";
static String getAllCompanies = server_url + "getAllCompanies";


static String cancelOrder = server_url + "cancelUserOrder";

static String removeServiceFromOrder = server_url + "employee/removeServiceFromOrder";

static String addNewServiceToOrder = server_url + "employee/addNewServiceToOrder";

  static String setUserServiceCoupon = server_url + "employee/setUserServiceCoupon";
}
