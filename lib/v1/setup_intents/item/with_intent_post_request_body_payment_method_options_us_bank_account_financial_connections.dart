// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_financial_connections_filters.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_financial_connections_permissions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_financial_connections_prefetch.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters?
      filters;

  ///  The permissions property
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>?
      permissions;

  ///  The prefetch property
  Iterable<
          WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>?
      prefetch;

  ///  The return_url property
  String? returnUrl;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters>(
        WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch
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
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnectionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
