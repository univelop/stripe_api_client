// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ConfirmationTokensPostRequestBodyPaymentMethodDataPayto
    implements AdditionalDataHolder, Parsable {
  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bsb_number property
  String? bsbNumber;

  ///  The pay_id property
  String? payId;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodDataPayto] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodDataPayto()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodDataPayto
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodDataPayto();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['bsb_number'] = (node) => bsbNumber = node.getStringValue();
    deserializerMap['pay_id'] = (node) => payId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('bsb_number', bsbNumber);
    writer.writeStringValue('pay_id', payId);
    writer.writeAdditionalData(additionalData);
  }
}
