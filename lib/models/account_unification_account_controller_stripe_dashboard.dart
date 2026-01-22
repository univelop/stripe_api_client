// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_unification_account_controller_stripe_dashboard_type.dart';

/// auto generated
class AccountUnificationAccountControllerStripeDashboard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A value indicating the Stripe dashboard this account has access to independent of the Connect application.
  AccountUnificationAccountControllerStripeDashboardType? type_;

  /// Instantiates a new [AccountUnificationAccountControllerStripeDashboard] and sets the default values.
  AccountUnificationAccountControllerStripeDashboard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountUnificationAccountControllerStripeDashboard
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountUnificationAccountControllerStripeDashboard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<AccountUnificationAccountControllerStripeDashboardType>(
            (stringValue) =>
                AccountUnificationAccountControllerStripeDashboardType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<AccountUnificationAccountControllerStripeDashboardType>(
            'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
