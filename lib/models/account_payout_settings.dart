// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer_schedule.dart';

/// auto generated
class AccountPayoutSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
  bool? debitNegativeBalances;

  ///  The schedule property
  TransferSchedule? schedule;

  ///  The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
  String? statementDescriptor;

  /// Instantiates a new [AccountPayoutSettings] and sets the default values.
  AccountPayoutSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountPayoutSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountPayoutSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['debit_negative_balances'] =
        (node) => debitNegativeBalances = node.getBoolValue();
    deserializerMap['schedule'] = (node) => schedule =
        node.getObjectValue<TransferSchedule>(
            TransferSchedule.createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('debit_negative_balances',
        value: debitNegativeBalances);
    writer.writeObjectValue<TransferSchedule>('schedule', schedule);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
