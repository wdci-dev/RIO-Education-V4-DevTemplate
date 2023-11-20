/**
 * @author      WDCi ()
 * @date        Nov 2023
 * @group       
 * @description 
 * @changehistory
 * ISS-XXXXXX dd-mm-yyyy name - description
 */
global inherited sharing class <%= apiName %> implements Messaging.InboundEmailHandler {

    /**
     * @descripton Inbound email handler
     * @param email InboundEmail
     * @param envelope InboundEnvelope
     * @return Messaging.InboundEmailResult
     */
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();

        return result;
    }
}
