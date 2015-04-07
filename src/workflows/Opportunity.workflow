<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Opp_Closed_WON_Email_Alert</fullName>
        <description>Opp Closed WON Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opp_Closed_WON</template>
    </alerts>
    <rules>
        <fullName>Opp Closed WON</fullName>
        <actions>
            <name>Opp_Closed_WON_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>send an email alert when opp closed won</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
