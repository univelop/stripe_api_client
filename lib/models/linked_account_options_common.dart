// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './linked_account_options_common_permissions.dart';
import './linked_account_options_common_prefetch.dart';
import './payment_flows_private_payment_methods_financial_connections_common_linked_account_options_filters.dart';

/// auto generated
class LinkedAccountOptionsCommon implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters?
      filters;

  ///  The list of permissions to request. The `payment_method` permission must be included.
  Iterable<LinkedAccountOptionsCommonPermissions>? permissions;

  ///  Data features requested to be retrieved upon account creation.
  Iterable<LinkedAccountOptionsCommonPrefetch>? prefetch;

  ///  For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
  String? returnUrl;

  /// Instantiates a new [LinkedAccountOptionsCommon] and sets the default values.
  LinkedAccountOptionsCommon() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LinkedAccountOptionsCommon createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LinkedAccountOptionsCommon();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters>(
        PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters
            .createFromDiscriminatorValue);
    deserializerMap['permissions'] = (node) => permissions =
        node.getCollectionOfEnumValues<LinkedAccountOptionsCommonPermissions>(
            (stringValue) => LinkedAccountOptionsCommonPermissions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['prefetch'] = (node) => prefetch =
        node.getCollectionOfEnumValues<LinkedAccountOptionsCommonPrefetch>(
            (stringValue) => LinkedAccountOptionsCommonPrefetch.values
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
            PaymentFlowsPrivatePaymentMethodsFinancialConnectionsCommonLinkedAccountOptionsFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<LinkedAccountOptionsCommonPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<LinkedAccountOptionsCommonPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
