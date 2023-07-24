/**
 * @author      WDCi ()
 * @date        Aug 2023
 * @group       
 * @description 
 * @changehistory
 * 
 */
global with sharing class <%= apiName %> implements Messaging.InboundEmailHandler {

    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();

        return result;
    }
}
