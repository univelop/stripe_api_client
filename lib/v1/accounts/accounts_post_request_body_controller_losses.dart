// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_controller_losses_payments.dart';

/// auto generated
class AccountsPostRequestBodyControllerLosses
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payments property
  AccountsPostRequestBodyControllerLossesPayments? payments;

  /// Instantiates a new [AccountsPostRequestBodyControllerLosses] and sets the default values.
  AccountsPostRequestBodyControllerLosses() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyControllerLosses createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyControllerLosses();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payments'] = (node) => payments =
        node.getEnumValue<AccountsPostRequestBodyControllerLossesPayments>(
            (stringValue) => AccountsPostRequestBodyControllerLossesPayments
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountsPostRequestBodyControllerLossesPayments>(
        'payments', payments, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
