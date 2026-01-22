// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
class PaymentMethodsPostRequestBodyBacsDebit
    implements AdditionalDataHolder, Parsable {
  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The sort_code property
  String? sortCode;

  /// Instantiates a new [PaymentMethodsPostRequestBodyBacsDebit] and sets the default values.
  PaymentMethodsPostRequestBodyBacsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBodyBacsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodsPostRequestBodyBacsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['sort_code'] = (node) => sortCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('sort_code', sortCode);
    writer.writeAdditionalData(additionalData);
  }
}
