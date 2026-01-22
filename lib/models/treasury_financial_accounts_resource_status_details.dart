// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './treasury_financial_accounts_resource_closed_status_details.dart';

/// auto generated
class TreasuryFinancialAccountsResourceStatusDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details related to the closure of this FinancialAccount
  TreasuryFinancialAccountsResourceClosedStatusDetails? closed;

  /// Instantiates a new [TreasuryFinancialAccountsResourceStatusDetails] and sets the default values.
  TreasuryFinancialAccountsResourceStatusDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TreasuryFinancialAccountsResourceStatusDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TreasuryFinancialAccountsResourceStatusDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['closed'] = (node) => closed = node
        .getObjectValue<TreasuryFinancialAccountsResourceClosedStatusDetails>(
            TreasuryFinancialAccountsResourceClosedStatusDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<TreasuryFinancialAccountsResourceClosedStatusDetails>(
            'closed', closed);
    writer.writeAdditionalData(additionalData);
  }
}
