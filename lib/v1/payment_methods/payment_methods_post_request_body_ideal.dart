// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_ideal_bank.dart';

/// auto generated
/// If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
class PaymentMethodsPostRequestBodyIdeal
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank property
  PaymentMethodsPostRequestBodyIdealBank? bank;

  /// Instantiates a new [PaymentMethodsPostRequestBodyIdeal] and sets the default values.
  PaymentMethodsPostRequestBodyIdeal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyIdeal createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyIdeal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank'] = (node) => bank =
        node.getEnumValue<PaymentMethodsPostRequestBodyIdealBank>(
            (stringValue) => PaymentMethodsPostRequestBodyIdealBank.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodsPostRequestBodyIdealBank>(
        'bank', bank, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
