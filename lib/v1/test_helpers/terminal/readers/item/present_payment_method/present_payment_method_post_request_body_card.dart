// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Simulated data for the card payment method.
class PresentPaymentMethodPostRequestBodyCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cvc property
  String? cvc;

  ///  The exp_month property
  int? expMonth;

  ///  The exp_year property
  int? expYear;

  ///  The number property
  String? number;

  /// Instantiates a new [PresentPaymentMethodPostRequestBodyCard] and sets the default values.
  PresentPaymentMethodPostRequestBodyCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PresentPaymentMethodPostRequestBodyCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PresentPaymentMethodPostRequestBodyCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cvc'] = (node) => cvc = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('cvc', cvc);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('number', number);
    writer.writeAdditionalData(additionalData);
  }
}
