// ignore_for_file: type=lint
/// auto generated
///  The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
enum ReaderStatus {
  offline('offline'),
  online('online');

  const ReaderStatus(this.value);
  final String value;
}
