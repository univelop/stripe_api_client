// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_payouts_schedule.dart';

/// auto generated
class WithAccountPostRequestBodySettingsPayouts
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The debit_negative_balances property
  bool? debitNegativeBalances;

  ///  The schedule property
  WithAccountPostRequestBodySettingsPayoutsSchedule? schedule;

  ///  The statement_descriptor property
  String? statementDescriptor;

  /// Instantiates a new [WithAccountPostRequestBodySettingsPayouts] and sets the default values.
  WithAccountPostRequestBodySettingsPayouts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettingsPayouts createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodySettingsPayouts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['debit_negative_balances'] =
        (node) => debitNegativeBalances = node.getBoolValue();
    deserializerMap['schedule'] = (node) => schedule =
        node.getObjectValue<WithAccountPostRequestBodySettingsPayoutsSchedule>(
            WithAccountPostRequestBodySettingsPayoutsSchedule
                .createFromDiscriminatorValue);
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
    writer.writeObjectValue<WithAccountPostRequestBodySettingsPayoutsSchedule>(
        'schedule', schedule);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
