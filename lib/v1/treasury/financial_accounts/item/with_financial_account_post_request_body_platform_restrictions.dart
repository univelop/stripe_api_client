// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_platform_restrictions_inbound_flows.dart';
import './with_financial_account_post_request_body_platform_restrictions_outbound_flows.dart';

/// auto generated
/// The set of functionalities that the platform can restrict on the FinancialAccount.
class WithFinancialAccountPostRequestBodyPlatformRestrictions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The inbound_flows property
  WithFinancialAccountPostRequestBodyPlatformRestrictionsInboundFlows?
      inboundFlows;

  ///  The outbound_flows property
  WithFinancialAccountPostRequestBodyPlatformRestrictionsOutboundFlows?
      outboundFlows;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyPlatformRestrictions] and sets the default values.
  WithFinancialAccountPostRequestBodyPlatformRestrictions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyPlatformRestrictions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyPlatformRestrictions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'inbound_flows'] = (node) => inboundFlows = node.getEnumValue<
            WithFinancialAccountPostRequestBodyPlatformRestrictionsInboundFlows>(
        (stringValue) =>
            WithFinancialAccountPostRequestBodyPlatformRestrictionsInboundFlows
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'outbound_flows'] = (node) => outboundFlows = node.getEnumValue<
            WithFinancialAccountPostRequestBodyPlatformRestrictionsOutboundFlows>(
        (stringValue) =>
            WithFinancialAccountPostRequestBodyPlatformRestrictionsOutboundFlows
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithFinancialAccountPostRequestBodyPlatformRestrictionsInboundFlows>(
        'inbound_flows', inboundFlows, (e) => e?.value);
    writer.writeEnumValue<
            WithFinancialAccountPostRequestBodyPlatformRestrictionsOutboundFlows>(
        'outbound_flows', outboundFlows, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
