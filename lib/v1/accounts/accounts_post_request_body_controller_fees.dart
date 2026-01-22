// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_controller_fees_payer.dart';

/// auto generated
class AccountsPostRequestBodyControllerFees
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payer property
  AccountsPostRequestBodyControllerFeesPayer? payer;

  /// Instantiates a new [AccountsPostRequestBodyControllerFees] and sets the default values.
  AccountsPostRequestBodyControllerFees() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyControllerFees createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyControllerFees();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payer'] = (node) => payer =
        node.getEnumValue<AccountsPostRequestBodyControllerFeesPayer>(
            (stringValue) => AccountsPostRequestBodyControllerFeesPayer.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountsPostRequestBodyControllerFeesPayer>(
        'payer', payer, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
