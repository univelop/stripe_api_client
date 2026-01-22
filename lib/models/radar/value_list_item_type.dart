// ignore_for_file: type=lint
/// auto generated
///  The type of items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`.
enum ValueListItemType {
  cardBin('card_bin'),
  cardFingerprint('card_fingerprint'),
  caseSensitiveString('case_sensitive_string'),
  country('country'),
  customerId('customer_id'),
  email('email'),
  ipAddress('ip_address'),
  sepaDebitFingerprint('sepa_debit_fingerprint'),
  string_('string'),
  usBankAccountFingerprint('us_bank_account_fingerprint');

  const ValueListItemType(this.value);
  final String value;
}
