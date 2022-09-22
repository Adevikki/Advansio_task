class ApiResponse<T> {
  final bool successful;
  final T? data;
  final String message;
  final T? error;

  ApiResponse({
    required this.successful,
    this.data,
     this.message ='',
    this.error,
  });
}
