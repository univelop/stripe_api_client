// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_financial_account_post_request_body_features_outbound_payments_ach.dart';
import './with_financial_account_post_request_body_features_outbound_payments_us_domestic_wire.dart';

/// auto generated
class WithFinancialAccountPostRequestBodyFeaturesOutboundPayments
    implements AdditionalDataHolder, Parsable {
  ///  The ach property
  WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsAch? ach;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The us_domestic_wire property
  WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire?
      usDomesticWire;

  /// Instantiates a new [WithFinancialAccountPostRequestBodyFeaturesOutboundPayments] and sets the default values.
  WithFinancialAccountPostRequestBodyFeaturesOutboundPayments()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithFinancialAccountPostRequestBodyFeaturesOutboundPayments
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithFinancialAccountPostRequestBodyFeaturesOutboundPayments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach'] = (node) => ach = node.getObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsAch>(
        WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsAch
            .createFromDiscriminatorValue);
    deserializerMap[
        'us_domestic_wire'] = (node) => usDomesticWire = node.getObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire>(
        WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsAch>(
        'ach', ach);
    writer.writeObjectValue<
            WithFinancialAccountPostRequestBodyFeaturesOutboundPaymentsUsDomesticWire>(
        'us_domestic_wire', usDomesticWire);
    writer.writeAdditionalData(additionalData);
  }
}
