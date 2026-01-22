// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_name property
  String? accountHolderName;

  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount] and sets the default values.
  ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetailsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
