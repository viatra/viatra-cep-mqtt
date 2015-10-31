/*
 * generated by Xtext 2.9.0.beta5
 */
package org.eclipse.viatra.cep.mqtt.midl.formatting2

import com.google.inject.Inject
import org.eclipse.viatra.cep.mqtt.midl.mIDL.BooleanParameter
import org.eclipse.viatra.cep.mqtt.midl.mIDL.Criterion
import org.eclipse.viatra.cep.mqtt.midl.mIDL.DataParameter
import org.eclipse.viatra.cep.mqtt.midl.mIDL.DoubleParameter
import org.eclipse.viatra.cep.mqtt.midl.mIDL.IntParameter
import org.eclipse.viatra.cep.mqtt.midl.mIDL.MqttSetup
import org.eclipse.viatra.cep.mqtt.midl.mIDL.Payload
import org.eclipse.viatra.cep.mqtt.midl.mIDL.Sensor
import org.eclipse.viatra.cep.mqtt.midl.mIDL.StringParameter
import org.eclipse.viatra.cep.mqtt.midl.services.MIDLGrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument

class MIDLFormatter extends AbstractFormatter2 {
	
	@Inject extension MIDLGrammarAccess

	def dispatch void format(MqttSetup mqttSetup, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		format(mqttSetup, document);
		for (Payload messages : mqttSetup.payloads) {
			format(messages, document);
		}
		for (Sensor sensors : mqttSetup.getSensors()) {
			format(sensors, document);
		}
	}

	def dispatch void format(Payload message, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (DataParameter dataParameters : message.getDataParameters()) {
			format(dataParameters, document);
		}
//		for (MessageParameter messageParameters : message.getMessageParameters()) {
//			format(messageParameters, document);
//		}
	}

	def dispatch void format(IntParameter intParameter, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Criterion criteria : intParameter.getCriteria()) {
			format(criteria, document);
		}
	}

	def dispatch void format(DoubleParameter doubleParameter, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Criterion criteria : doubleParameter.getCriteria()) {
			format(criteria, document);
		}
	}

	def dispatch void format(StringParameter stringParameter, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Criterion criteria : stringParameter.getCriteria()) {
			format(criteria, document);
		}
	}

	def dispatch void format(BooleanParameter booleanParameter, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Criterion criteria : booleanParameter.getCriteria()) {
			format(criteria, document);
		}
	}
}
