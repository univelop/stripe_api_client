// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './mandate_acss_debit_default_for.dart';
import './mandate_acss_debit_payment_schedule.dart';
import './mandate_acss_debit_transaction_type.dart';

/// auto generated
class MandateAcssDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  List of Stripe products where this mandate can be selected automatically.
  Iterable<MandateAcssDebitDefaultFor>? defaultFor;

  ///  Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
  String? intervalDescription;

  ///  Payment schedule for the mandate.
  MandateAcssDebitPaymentSchedule? paymentSchedule;

  ///  Transaction type of the mandate.
  MandateAcssDebitTransactionType? transactionType;

  /// Instantiates a new [MandateAcssDebit] and sets the default values.
  MandateAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandateAcssDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return MandateAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_for'] = (node) => defaultFor =
        node.getCollectionOfEnumValues<MandateAcssDebitDefaultFor>(
            (stringValue) => MandateAcssDebitDefaultFor.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['interval_description'] =
        (node) => intervalDescription = node.getStringValue();
    deserializerMap['payment_schedule'] = (node) => paymentSchedule =
        node.getEnumValue<MandateAcssDebitPaymentSchedule>((stringValue) =>
            MandateAcssDebitPaymentSchedule.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction_type'] = (node) => transactionType =
        node.getEnumValue<MandateAcssDebitTransactionType>((stringValue) =>
            MandateAcssDebitTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<MandateAcssDebitDefaultFor>(
        'default_for', defaultFor, (e) => e?.value);
    writer.writeStringValue('interval_description', intervalDescription);
    writer.writeEnumValue<MandateAcssDebitPaymentSchedule>(
        'payment_schedule', paymentSchedule, (e) => e?.value);
    writer.writeEnumValue<MandateAcssDebitTransactionType>(
        'transaction_type', transactionType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
