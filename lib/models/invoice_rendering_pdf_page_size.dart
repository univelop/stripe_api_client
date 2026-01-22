// ignore_for_file: type=lint
/// auto generated
///  Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
enum InvoiceRenderingPdfPageSize {
  a4('a4'),
  auto('auto'),
  letter('letter');

  const InvoiceRenderingPdfPageSize(this.value);
  final String value;
}
