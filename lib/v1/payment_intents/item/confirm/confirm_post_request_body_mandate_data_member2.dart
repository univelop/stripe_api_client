// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_mandate_data_member2_customer_acceptance.dart';

/// auto generated
/// This hash contains details about the Mandate to create
class ConfirmPostRequestBodyMandateDataMember2
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer_acceptance property
  ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance?
      customerAcceptance;

  /// Instantiates a new [ConfirmPostRequestBodyMandateDataMember2] and sets the default values.
  ConfirmPostRequestBodyMandateDataMember2() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyMandateDataMember2 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBodyMandateDataMember2();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_acceptance'] = (node) => customerAcceptance =
        node.getObjectValue<
                ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance>(
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmPostRequestBodyMandateDataMember2CustomerAcceptance>(
        'customer_acceptance', customerAcceptance);
    writer.writeAdditionalData(additionalData);
  }
}
