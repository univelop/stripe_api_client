// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_closed_status_details_reasons.dart';

/// auto generated
class TreasuryFinancialAccountsResourceClosedStatusDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The array that contains reasons for a FinancialAccount closure.
  Iterable<TreasuryFinancialAccountsResourceClosedStatusDetailsReasons>?
      reasons;

  /// Instantiates a new [TreasuryFinancialAccountsResourceClosedStatusDetails] and sets the default values.
  TreasuryFinancialAccountsResourceClosedStatusDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceClosedStatusDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceClosedStatusDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['reasons'] = (node) => reasons =
        node.getCollectionOfEnumValues<
                TreasuryFinancialAccountsResourceClosedStatusDetailsReasons>(
            (stringValue) =>
                TreasuryFinancialAccountsResourceClosedStatusDetailsReasons
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            TreasuryFinancialAccountsResourceClosedStatusDetailsReasons>(
        'reasons', reasons, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
