// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_financial_connections_filters.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_financial_connections_permissions.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_financial_connections_prefetch.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters?
      filters;

  ///  The permissions property
  Iterable<
          PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>?
      permissions;

  ///  The prefetch property
  Iterable<
          PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>?
      prefetch;

  ///  The return_url property
  String? returnUrl;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters
            .createFromDiscriminatorValue);
    deserializerMap[
        'permissions'] = (node) => permissions = node.getCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'prefetch'] = (node) => prefetch = node.getCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnectionsPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
