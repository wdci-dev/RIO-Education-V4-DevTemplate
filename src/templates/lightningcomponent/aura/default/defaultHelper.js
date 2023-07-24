({
    hideSpinner : function(cmp){
        let currentCount = cmp.get("v.loadingCount");
        currentCount -= 1;
        if(currentCount < 0) {
            currentCount = 0;
        }

        cmp.set("v.loadingCount", currentCount);
    },
    
    showSpinner : function(cmp){
        let currentCount = cmp.get("v.loadingCount");
        currentCount += 1;

        cmp.set("v.loadingCount", currentCount);
    },
	
	promptInfo : function(cmp, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": "info"
        });
        toastEvent.fire();
    },
	
	promptSuccess : function(cmp, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": "success"
        });
        toastEvent.fire();
    },
	
	promptWarning : function(cmp, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": "warning"
        });
        toastEvent.fire();
    },
	
	promptError : function(cmp, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": "error",
			"mode": "sticky"
        });
        toastEvent.fire();
    },

    consoleLog: function(cmp, anything){
        if(cmp.get("v.enableDebug")){
            console.log(anything);
        }
    },
})
