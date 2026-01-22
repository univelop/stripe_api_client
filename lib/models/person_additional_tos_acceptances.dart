// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './person_additional_tos_acceptance.dart';

/// auto generated
class PersonAdditionalTosAcceptances implements AdditionalDataHolder, Parsable {
  ///  Details on the legal guardian's acceptance of the main Stripe service agreement.
  PersonAdditionalTosAcceptance? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [PersonAdditionalTosAcceptances] and sets the default values.
  PersonAdditionalTosAcceptances() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonAdditionalTosAcceptances createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PersonAdditionalTosAcceptances();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<PersonAdditionalTosAcceptance>(
            PersonAdditionalTosAcceptance.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PersonAdditionalTosAcceptance>('account', account);
    writer.writeAdditionalData(additionalData);
  }
}
