// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_filters.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_permissions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account_member1_financial_connections_prefetch.dart';

/// auto generated
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters?
      filters;

  ///  The permissions property
  Iterable<
          InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>?
      permissions;

  ///  The prefetch property
  Iterable<
          InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>?
      prefetch;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections] and sets the default values.
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnections();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        (stringValue) =>
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        (stringValue) =>
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch
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
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
