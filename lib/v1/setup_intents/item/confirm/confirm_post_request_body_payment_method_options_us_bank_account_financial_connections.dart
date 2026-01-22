// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_financial_connections_filters.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_financial_connections_permissions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_financial_connections_prefetch.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters?
      filters;

  ///  The permissions property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>?
      permissions;

  ///  The prefetch property
  Iterable<
          ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>?
      prefetch;

  ///  The return_url property
  String? returnUrl;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters>(
        ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
