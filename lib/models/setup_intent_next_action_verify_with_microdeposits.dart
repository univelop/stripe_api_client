// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_next_action_verify_with_microdeposits_microdeposit_type.dart';

/// auto generated
class SetupIntentNextActionVerifyWithMicrodeposits
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The timestamp when the microdeposits are expected to land.
  int? arrivalDate;

  ///  The URL for the hosted verification page, which allows customers to verify their bank account.
  String? hostedVerificationUrl;

  ///  The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
  SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType?
      microdepositType;

  /// Instantiates a new [SetupIntentNextActionVerifyWithMicrodeposits] and sets the default values.
  SetupIntentNextActionVerifyWithMicrodeposits() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentNextActionVerifyWithMicrodeposits
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentNextActionVerifyWithMicrodeposits();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['arrival_date'] =
        (node) => arrivalDate = node.getIntValue();
    deserializerMap['hosted_verification_url'] =
        (node) => hostedVerificationUrl = node.getStringValue();
    deserializerMap['microdeposit_type'] = (node) => microdepositType =
        node.getEnumValue<
                SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType>(
            (stringValue) =>
                SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('arrival_date', arrivalDate);
    writer.writeStringValue('hosted_verification_url', hostedVerificationUrl);
    writer.writeEnumValue<
            SetupIntentNextActionVerifyWithMicrodepositsMicrodepositType>(
        'microdeposit_type', microdepositType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
