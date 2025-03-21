sealed class ApiResponse<T> {} //using generic type with sealed class

class Success<T> extends ApiResponse<T> {
  final T data; //unknown data type
  Success(this.data);
}

class Failure<T> extends ApiResponse<T> {
  final String errorMsg;

  Failure(this.errorMsg);
}

class Loading<T> extends ApiResponse<T> {}

void handleApiResponse(ApiResponse response) {
  switch (response) {
    case Success():
      print(response.data);
      break;
    case Failure():
      print(response.errorMsg);
      break;
    case Loading():
      print('loading');
      break;
  }
}

void main() {
  ApiResponse<int> response = Loading();
  handleApiResponse(response);

  response = Success(200);
  handleApiResponse(response);

  response = Failure('Something went wrong');
  handleApiResponse(response);
}
