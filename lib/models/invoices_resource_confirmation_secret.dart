// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoicesResourceConfirmationSecret
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The client_secret of the payment that Stripe creates for the invoice after finalization.
  String? clientSecret;

  ///  The type of client_secret. Currently this is always payment_intent, referencing the default payment_intent that Stripe creates during invoice finalization
  String? type_;

  /// Instantiates a new [InvoicesResourceConfirmationSecret] and sets the default values.
  InvoicesResourceConfirmationSecret() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourceConfirmationSecret createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesResourceConfirmationSecret();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
