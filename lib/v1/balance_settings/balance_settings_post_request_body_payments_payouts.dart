// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_post_request_body_payments_payouts_schedule.dart';

/// auto generated
class BalanceSettingsPostRequestBodyPaymentsPayouts
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The minimum_balance_by_currency property
  String? minimumBalanceByCurrency;

  ///  The schedule property
  BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule? schedule;

  ///  The statement_descriptor property
  String? statementDescriptor;

  /// Instantiates a new [BalanceSettingsPostRequestBodyPaymentsPayouts] and sets the default values.
  BalanceSettingsPostRequestBodyPaymentsPayouts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsPostRequestBodyPaymentsPayouts
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceSettingsPostRequestBodyPaymentsPayouts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['minimum_balance_by_currency'] =
        (node) => minimumBalanceByCurrency = node.getStringValue();
    deserializerMap['schedule'] = (node) => schedule = node
        .getObjectValue<BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule>(
            BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue(
        'minimum_balance_by_currency', minimumBalanceByCurrency);
    writer.writeObjectValue<
            BalanceSettingsPostRequestBodyPaymentsPayoutsSchedule>(
        'schedule', schedule);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeAdditionalData(additionalData);
  }
}
