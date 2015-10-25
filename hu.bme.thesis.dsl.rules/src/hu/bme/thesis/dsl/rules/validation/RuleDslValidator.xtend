/*
 * generated by Xtext 2.9.0.beta5
 */
package hu.bme.thesis.dsl.rules.validation

import org.eclipse.xtext.validation.Check
import hu.bme.thesis.dsl.rules.ruleDsl.Rule
import hu.bme.thesis.dsl.rules.ruleDsl.IntLiteral
import hu.bme.thesis.dsl.rules.ruleDsl.RuleDslPackage
import hu.bme.thesis.dsl.rules.ruleDsl.FloatLiteral
import hu.bme.thesis.dsl.rules.ruleDsl.BooleanLiteral
import hu.bme.thesis.dsl.rules.ruleDsl.StringLiteral

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class RuleDslValidator extends AbstractRuleDslValidator {
	
	@Check
	def checkRuleValueIsValid(Rule rule) {
		if (rule.dataparam.type.name == "int" && !(rule.value instanceof IntLiteral)) {
			error("The value must be int type", RuleDslPackage.Literals.RULE__VALUE, "invalidValue")
		} else if (rule.dataparam.type.name == "float" && !(rule.value instanceof FloatLiteral)) {
			error("The value must be float type", RuleDslPackage.Literals.RULE__VALUE, "invalidValue")
		} else if (rule.dataparam.type.name == "boolean" && !(rule.value instanceof BooleanLiteral)) {
			error("The value must be boolean type", RuleDslPackage.Literals.RULE__VALUE, "invalidValue")
		} else if (rule.dataparam.type.name == "String" && !(rule.value instanceof StringLiteral)) {
			error("The value must be String type", RuleDslPackage.Literals.RULE__VALUE, "invalidValue")
		}
	}
	
}
