// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_resource_mandate_data_resource_customer_acceptance.dart';

/// auto generated
/// Data used for generating a Mandate.
class ConfirmationTokensResourceMandateData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  This hash contains details about the customer acceptance of the Mandate.
  ConfirmationTokensResourceMandateDataResourceCustomerAcceptance?
      customerAcceptance;

  /// Instantiates a new [ConfirmationTokensResourceMandateData] and sets the default values.
  ConfirmationTokensResourceMandateData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourceMandateData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmationTokensResourceMandateData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_acceptance'] = (node) => customerAcceptance =
        node.getObjectValue<
                ConfirmationTokensResourceMandateDataResourceCustomerAcceptance>(
            ConfirmationTokensResourceMandateDataResourceCustomerAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensResourceMandateDataResourceCustomerAcceptance>(
        'customer_acceptance', customerAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
