// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_city.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_country.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_line1.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_line2.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_postal_code.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3_disputed_transaction_shipping_address_state.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The city property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCity?
      city;

  ///  The country property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCountry?
      country;

  ///  The line1 property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine1?
      line1;

  ///  The line2 property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine2?
      line2;

  ///  The postal_code property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode?
      postalCode;

  ///  The state property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressState?
      state;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress] and sets the default values.
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddress();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['city'] = (node) => city = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCity>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCity
            .createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCountry>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCountry
            .createFromDiscriminatorValue);
    deserializerMap['line1'] = (node) => line1 = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine1>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine1
            .createFromDiscriminatorValue);
    deserializerMap['line2'] = (node) => line2 = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine2>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine2
            .createFromDiscriminatorValue);
    deserializerMap['postal_code'] = (node) => postalCode = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode
            .createFromDiscriminatorValue);
    deserializerMap['state'] = (node) => state = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressState>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressState
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCity>(
        'city', city);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressCountry>(
        'country', country);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine1>(
        'line1', line1);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressLine2>(
        'line2', line2);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressPostalCode>(
        'postal_code', postalCode);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3DisputedTransactionShippingAddressState>(
        'state', state);
    writer.writeAdditionalData(additionalData);
  }
}
