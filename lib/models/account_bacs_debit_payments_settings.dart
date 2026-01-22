// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountBacsDebitPaymentsSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The Bacs Direct Debit display name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. The fee appears 5 business days after requesting Bacs. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
  String? displayName;

  ///  The Bacs Direct Debit Service user number for this account. For payments made with Bacs Direct Debit, this number is a unique identifier of the account with our banking partners.
  String? serviceUserNumber;

  /// Instantiates a new [AccountBacsDebitPaymentsSettings] and sets the default values.
  AccountBacsDebitPaymentsSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountBacsDebitPaymentsSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountBacsDebitPaymentsSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['service_user_number'] =
        (node) => serviceUserNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('service_user_number', serviceUserNumber);
    writer.writeAdditionalData(additionalData);
  }
}
