// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_resource_mandate_data_resource_customer_acceptance_resource_online.dart';

/// auto generated
/// This hash contains details about the customer acceptance of the Mandate.
class ConfirmationTokensResourceMandateDataResourceCustomerAcceptance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If this is a Mandate accepted online, this hash contains details about the online acceptance.
  ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline?
      online;

  ///  The type of customer acceptance information included with the Mandate.
  String? type_;

  /// Instantiates a new [ConfirmationTokensResourceMandateDataResourceCustomerAcceptance] and sets the default values.
  ConfirmationTokensResourceMandateDataResourceCustomerAcceptance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensResourceMandateDataResourceCustomerAcceptance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensResourceMandateDataResourceCustomerAcceptance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['online'] = (node) => online = node.getObjectValue<
            ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline>(
        ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline>(
        'online', online);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
