abstract class AppEnvironment{
  static String headerKey;
  static String apiUrl;
  static setupEnvironment(Environment env){
    switch(env){
      case Environment.development:
      {
        headerKey = "Auth";
        apiUrl = " http://www.omdbapi.com/?i=tt3896198&apikey=9b7a637d";
        break;
      }
      case Environment.production:
      {
        headerKey = "Auth";
        apiUrl = " http://www.omdbapi.com/?i=tt3896198&apikey=9b7a637d";
        break;
      }
    }
  }
}

enum Environment{development,production}