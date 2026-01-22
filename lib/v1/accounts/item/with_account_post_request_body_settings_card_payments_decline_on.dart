// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithAccountPostRequestBodySettingsCardPaymentsDeclineOn
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The avs_failure property
  bool? avsFailure;

  ///  The cvc_failure property
  bool? cvcFailure;

  /// Instantiates a new [WithAccountPostRequestBodySettingsCardPaymentsDeclineOn] and sets the default values.
  WithAccountPostRequestBodySettingsCardPaymentsDeclineOn()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsCardPaymentsDeclineOn
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsCardPaymentsDeclineOn();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['avs_failure'] = (node) => avsFailure = node.getBoolValue();
    deserializerMap['cvc_failure'] = (node) => cvcFailure = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('avs_failure', value: avsFailure);
    writer.writeBoolValue('cvc_failure', value: cvcFailure);
    writer.writeAdditionalData(additionalData);
  }
}
