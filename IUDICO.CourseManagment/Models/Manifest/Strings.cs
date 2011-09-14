﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IUDICO.CourseManagment.Models.Manifest
{
    /// <summary>
    /// Class that returns string constants.
    /// </summary>
    internal class Strings
    {
        internal const string Action = "action"; // <imsss:rollupAction>/action
        internal const string Adlcp = "adlcp";
        internal const string Adlnav = "adlnav";
        internal const string Adlseq = "adlseq";
        internal const string AdlcpNamespaceV1p2 = "http://www.adlnet.org/xsd/adlcp_rootv1p2";
        internal const string AdlcpNamespaceV1p3 = "http://www.adlnet.org/xsd/adlcp_v1p3";
        internal const string AdlnavNamespace = "http://www.adlnet.org/xsd/adlnav_v1p3";
        internal const string AdlseqNamespace = "http://www.adlnet.org/xsd/adlseq_v1p3";
        internal const string AttemptAbsoluteDurationLimit = "attemptAbsoluteDurationLimit"; // <imsss:limitConditions>/attemptAbsoluteDurationLimit
        internal const string AttemptLimit = "attemptLimit"; // <imsss:limitConditions>/attemptLimit
        internal const string AuxiliaryResources = "auxiliaryResources"; // <imsss:auxiliaryResources>
        internal const string Base = "base"; // <xml:base>
        internal const string ChildActivitySet = "childActivitySet"; // <imsss:rollupRule>/childActivitySet
        internal const string Choice = "choice"; // <imsss:controlMode>/choice
        internal const string ChoiceExit = "choiceExit"; // <imsss:controlMode>/choiceExit
        internal const string CompletionSetByContent = "completionSetByContent"; // <imsss:deliveryControls>/completionSetByContent
        internal const string CompletionThreshold = "completionThreshold"; // <adlcp:completionThreshold>
        internal const string Condition = "condition"; // <imsss:rollupCondition>/condition
        internal const string ConditionCombination = "conditionCombination"; // <imsss:rollupConditions>/conditionCombination
        internal const string ConstrainChoice = "constrainChoice"; // <adlseq:constrainedChoiceConsiderations>/constrainChoice
        internal const string ConstrainedChoiceConsiderations = "constrainedChoiceConsiderations"; // <adlseq:constrainedChoiceConsiderations>
        internal const string ControlMode = "controlMode"; // <imsss:sequencing>/controlMode
        internal const string Data = "data"; // <adlcp:data>
        internal const string DataFromLmsV1p2 = "datafromlms"; // <adlcp:datafromlms> (SCORM 1.2)
        internal const string DataFromLmsV1p3 = "dataFromLMS"; // <adlcp:dataFromLMS>
        internal const string Default = "default"; // <imscp:organizations>/default
        internal const string DeliveryControls = "deliveryControls"; // <imsss:deliveryControls>
        internal const string Dependency = "dependency"; // <imscp:dependency>
        internal const string Description = "description"; // <lom:description>
        internal const string ExitConditionRule = "exitConditionRule"; // <imsss:exitConditionRule>
        internal const string File = "file"; // <imscp:file>
        internal const string Flow = "flow"; // <imsss:controlMode>/flow
        internal const string ForwardOnly = "forwardOnly"; // <imsss:controlMode>/forwardOnly
        internal const string General = "general"; // <lom:general>
        internal const string HideLmsUi = "hideLMSUI"; // <adlnav:hideLMSUI>
        internal const string Href = "href"; // <imscp:file>/href
        internal const string Id = "ID"; // e.g. <imsss:sequencing>/ID
        internal const string IdRef = "IDRef"; // e.g. <imsss:sequencing>/IDRef
        internal const string Identifier = "identifier"; // <imscp:resource>/identifier
        internal const string IdentifierRef = "identifierref"; // e.g. <imscp:dependency>/identiferref
        internal const string Imscp = "imscp";
        internal const string Imsss = "imsss";
        internal const string ImscpNamespaceV1p2 = "http://www.imsproject.org/xsd/imscp_rootv1p1p2";
        internal const string ImscpNamespaceV1p3 = "http://www.imsglobal.org/xsd/imscp_v1p1";
        internal const string ImsssNamespace = "http://www.imsglobal.org/xsd/imsss";
        internal const string IsVisible = "isvisible"; // <imscp:item>/isvisible
        internal const string Item = "item"; // <imscp:item>
        internal const string LangString = "langstring"; // <lom:langstring> (SCORM 1.2)
        internal const string Language = "language"; // language attribute of the <lom:string>
        internal const string LimitConditions = "limitConditions"; // <imsss:limitConditions>
        internal const string Lom = "lom"; // <lom:lom>
        internal const string LomNamespaceV1p2 = "http://www.imsglobal.org/xsd/imsmd_rootv1p2p1";
        internal const string LomNamespaceV1p3 = "http://ltsc.ieee.org/xsd/LOM";
        internal const string String = "string"; // <lom:string>
        internal const string Manifest = "manifest"; // <imscp:manifest>
        internal const string MapInfo = "mapInfo"; // <imsss:mapInfo>
        internal const string MasteryScore = "masteryscore"; // <adlcp:masteryscore> (SCORM 1.2)
        internal const string MaxTimeAllowed = "maxtimeallowed"; // <adlcp:maxtimeallowed> (SCORM 1.2)
        internal const string MeasureSatisfactionIfActive = "measureSatisfactionIfActive"; // <adlseq:rollupConsiderations>/measureSatisfactionIfActive
        internal const string MeasureThreshold = "measureThreshold"; // <imsss:ruleCondition>/measureThreshold
        internal const string Metadata = "metadata"; // <imscp:metadata>
        internal const string MinimumCount = "minimumCount"; // <imsss:rollupRule>/minimumCount
        internal const string MinimumPercent = "minimumPercent"; // <imsss:rollupRule>/minimumPercent
        internal const string MinNormalizedMeasure = "minNormalizedMeasure"; // <imsss:objective>/<imsss:minNormalizedMeasure>
        internal const string MlcNamespace = "urn:schemas-microsoft-com:learning-components-manifest";
        internal const string NavigationInterface = "navigationInterface"; // <adlnav:navigationInterface>
        internal const string Objective = "objective"; // <imsss:objective>
        internal const string Objectives = "objectives"; // <imsss:objectives>
        internal const string ObjectiveId = "objectiveID"; // <imsss:objective>/objectiveID
        internal const string ObjectiveMeasureWeight = "objectiveMeasureWeight"; // <imsss:rollupRules>/objectiveMeasureWeight
        internal const string ObjectiveSetByContent = "objectiveSetByContent"; // <imsss:deliveryControls>/objectiveSetByContent
        internal const string ObjectivesGlobalToSystem = "objectivesGlobalToSystem"; // adlseq:objectivesGlobalToSystem
        internal const string Operator = "operator"; // <imsss:rollupCondition>/operator
        internal const string Organization = "organization"; // <imscp:organization>
        internal const string Organizations = "organizations"; // <imscp:organizations>
        internal const string Parameters = "parameters"; // <imscp:item>/parameters
        internal const string PostConditionRule = "postConditionRule"; // <imsss:postConditionRule>
        internal const string PreConditionRule = "preConditionRule"; // <imsss:preConditionRule>
        internal const string Prerequisites = "prerequisites"; // <adlcp:prerequisites> (SCORM 1.2)
        internal const string Presentation = "presentation"; // <adlnav:presentation>
        internal const string PreventActivation = "preventActivation"; // <adlseq:constrainedChoiceConsiderations>/preventActivation
        internal const string PrimaryObjective = "primaryObjective"; // <imsss:primaryObjective>
        internal const string RandomizationControls = "randomizationControls"; // <imsss:randomizationControls>
        internal const string RandomizationTiming = "randomizationTiming"; // <imsss:randomizationControls>/randomizationTiming
        internal const string ReadNormalizedMeasure = "readNormalizedMeasure"; // <imsss:mapInfo>/readNormalizedMeasure
        internal const string ReadSatisfiedStatus = "readSatisfiedStatus"; // <imsss:mapInfo>/readSatisfiedStatus
        internal const string ReferencedObjective = "referencedObjective"; // <imsss:ruleCondition>/referencedObjective
        internal const string ReorderChildren = "reorderChildren"; // <imsss:randomizationControls>/reorderChildren
        internal const string RequiredForCompleted = "requiredForCompleted"; // <adlseq:rollupConsiderations>/requiredForCompleted
        internal const string RequiredForIncomplete = "requiredForIncomplete"; // <adlseq:rollupConsiderations>/requiredForIncomplete
        internal const string RequiredForNotSatisfied = "requiredForNotSatisfied"; // <adlseq:rollupConsiderations>/requiredForNotSatisfied
        internal const string RequiredForSatisfied = "requiredForSatisfied"; // <adlseq:rollupConsiderations>/requiredForSatisfied
        internal const string Resource = "resource"; // <imscp:resource>
        internal const string Resources = "resources"; // <imscp:resources>
        internal const string RollupAction = "rollupAction"; // <imsss:rollupAction>
        internal const string RollupCondition = "rollupCondition"; // <imsss:rollupCondition>
        internal const string RollupConditions = "rollupConditions"; // <imsss:rollupConditions>
        internal const string RollupConsiderations = "rollupConsiderations"; // <adlseq:rollupConsiderations>
        internal const string RollupObjectiveSatisfied = "rollupObjectiveSatisfied"; // <imsss:rollupRules>/rollupObjectiveSatisfied
        internal const string RollupProgressCompletion = "rollupProgressCompletion"; // <imsss:rollupRules>/rollupProgressCompletion
        internal const string RollupRule = "rollupRule"; // <imsss:rollupRule>
        internal const string RollupRules = "rollupRules"; // <imsss:rollupRules>
        internal const string RuleAction = "ruleAction"; // <imsss:ruleAction>
        internal const string RuleCondition = "ruleCondition"; // <imsss:ruleCondition>
        internal const string RuleConditions = "ruleConditions"; // <imsss:ruleConditions>
        internal const string SharedDataGlobalToSystem = "sharedDataGlobalToSystem"; // adlcp:sharedDataGlobalToSystem
        internal const string SatisfiedByMeasure = "satisfiedByMeasure"; // <imsss:objective>/satisfiedByMeasure
        internal const string ScormTypeV1p2 = "scormtype"; // adlcp:scormtype (SCORM 1.2)
        internal const string ScormTypeV1p3 = "scormType"; // adlcp:scormType
        internal const string SelectCount = "selectCount"; // <imsss:randomizationControls>/selectCount 
        internal const string SelectionTiming = "selectionTiming"; // <imsss:randomizationControls>/selectionTiming
        internal const string Sequencing = "sequencing"; // <imsss:sequencing>
        internal const string SequencingCollection = "sequencingCollection"; // <imsss:sequencingCollection>
        internal const string SequencingRules = "sequencingRules"; // <imsss:sequencingRules>
        internal const string Structure = "structure"; // <imscp:organizations>/structure
        internal const string TargetObjectiveID = "targetObjectiveID"; // <imsss:mapInfo>/targetObjectiveID
        internal const string TimeLimitActionV1p2 = "timelimitaction"; // <adlcp:timelimitaction> (SCORM 1.2)
        internal const string TimeLimitActionV1p3 = "timeLimitAction"; // <adlcp:timeLimitAction>
        internal const string Title = "title"; // <imscp:title> or <lom:title>
        internal const string Tracked = "tracked"; // <imsss:deliveryControls>/tracked
        internal const string Type = "type"; // <imscp:resource>/type or <adlcp:prerequisites>/type (SCORM 1.2)
        internal const string UseCurrentAttemptObjectiveInfo = "useCurrentAttemptObjectiveInfo"; // <imsss:controlMode>/useCurrentAttemptObjectiveInfo
        internal const string UseCurrentAttemptProgressInfo = "useCurrentAttemptProgressInfo"; // <imsss:controlMode>/useCurrentAttemptProgressInfo
        internal const string Version = "version"; // <imsss:manifest>/version
        internal const string Webcontent = "webcontent";
        internal const string WriteNormalizedMeasure = "writeNormalizedMeasure"; // <imsss:mapInfo>/writeNormalizedMeasure
        internal const string WriteSatisfiedStatus = "writeSatisfiedStatus"; // <imsss:mapInfo>/writeSatisfiedStatus
        internal const string XmlNamespace = "http://www.w3.org/XML/1998/namespace";
        internal const string XrloType = "xrloType"; // <imsss:resource>/mls:xrloType
    }
}