// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit
    implements AdditionalDataHolder, Parsable {
  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The institution_number property
  String? institutionNumber;

  ///  The transit_number property
  String? transitNumber;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['institution_number'] =
        (node) => institutionNumber = node.getStringValue();
    deserializerMap['transit_number'] =
        (node) => transitNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('institution_number', institutionNumber);
    writer.writeStringValue('transit_number', transitNumber);
    writer.writeAdditionalData(additionalData);
  }
}
