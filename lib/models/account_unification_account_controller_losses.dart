// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_unification_account_controller_losses_payments.dart';

/// auto generated
class AccountUnificationAccountControllerLosses
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A value indicating who is liable when this account can't pay back negative balances from payments.
  AccountUnificationAccountControllerLossesPayments? payments;

  /// Instantiates a new [AccountUnificationAccountControllerLosses] and sets the default values.
  AccountUnificationAccountControllerLosses() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountUnificationAccountControllerLosses createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountUnificationAccountControllerLosses();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payments'] = (node) => payments =
        node.getEnumValue<AccountUnificationAccountControllerLossesPayments>(
            (stringValue) => AccountUnificationAccountControllerLossesPayments
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountUnificationAccountControllerLossesPayments>(
        'payments', payments, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
