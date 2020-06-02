abstract class AppEnvironment{
  static String headerKey;
  static String baseApiUrl;
  static String posterApiUrl;
  static setupEnvironment(Environment env){
    switch(env){
      case Environment.development:
      {
        headerKey = "Auth";
        baseApiUrl = "http://www.omdbapi.com/?i=tt3896198&apikey=9b7a637d&";
        posterApiUrl = "http://img.omdbapi.com/?apikey=9b7a637d&";
        break;
      }
      case Environment.production:
      {
        headerKey = "Auth";
        baseApiUrl = "http://www.omdbapi.com/?i=tt3896198&apikey=9b7a637d&";
        posterApiUrl = "http://img.omdbapi.com/?apikey=9b7a637d&";
        break;
      }
    }
  }
}

enum Environment{development,production}