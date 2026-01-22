// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_filters.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_permissions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_prefetch.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters?
      filters;

  ///  The permissions property
  Iterable<
          WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>?
      permissions;

  ///  The prefetch property
  Iterable<
          WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>?
      prefetch;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        (stringValue) =>
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
