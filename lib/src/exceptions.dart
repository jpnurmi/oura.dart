class OuraException implements Exception {
  const OuraException({required this.status, required this.title, this.detail});

  /// The HTTP status code generated by the origin server. Typically 400-599.
  final int status;

  /// A short, human-readable summary of the problem type.
  final String title;

  /// A human-readable explanation specific to this occurrence of the problem.
  final String? detail;

  @override
  String toString() {
    return '$runtimeType(status: $status, title: $title, detail: $detail)';
  }
}
