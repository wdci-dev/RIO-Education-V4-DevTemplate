/**
 * @Author 		WDCi ()
 * @Date 		March 2023
 * @group 		
 * @Description 
 * @changehistory
 */
import { LightningElement, api } from 'lwc';
import { promptInfo, promptError, promptWarning, promptSuccess } from 'c/toasterUtil';
import { getErrorMessage, logInfo, logError } from 'c/loggingUtil';
import { customLabels } from 'c/labelLoader';

//Apex methods
import ctrlSample from '@salesforce/apex/REDU_<%= pascalCaseComponentName %>_LCTRL.sample';


export default class <%= pascalCaseComponentName %> extends LightningElement {
	
	//configurable attributes
	@api enableDebugMode = false;
	
	//internal attributes
	isScriptLoaded = false;
	isInitSuccess = false
	loadedLists = 0;
	
	//labels
	label = customLabels;
	
	//js library module 'lodash', 'stringutil', 'moment', 'fullcalendar', 'fcmoment', 'jquery'
    modules = [];
	
	/**
     * @descripton library loader
     */
    handleLibLoadSuccess(event) {
        this.isScriptLoaded = true;
        this.isInitSuccess = true;
        
    }

    /**
     * @descripton library loader
     */
    handleLibLoadFail(event) {
        this.isScriptLoaded = true;
        this.isInitSuccess = false;
    }
	
    /**
     * @descripton rendered callback
     */
	renderedCallback(){

    }

    /**
     * @descripton connected callback
     */
    connectedCallback(){
		
	}
	
    /**
     * @descripton disconnected callback
     */
	disconnectedCallback() {
		
	}
	
    /**
     * @descripton Spinner loading status
     */
	get isLoading(){
        return this.loadedLists === 0 ? false : true;
    }

    /**
     * @descripton Sample method that invoke apex controller
     */
    samplePostMethod() {
        this.toggleSpinner(1);

        try {
            
            ctrlSample({
                
            })
            .then(saveResult => {
                this.toggleSpinner(-1);
                promptSuccess(this.label.SUCCESS_LABEL, 'any message');

            })
            .catch(error => {
                promptError(this.label.ERROR_LABEL, getErrorMessage(error));
                this.toggleSpinner(-1);
                
            })            

        } catch (error) {
            this.toggleSpinner(-1);
            promptError(this.label.ERROR_LABEL, getErrorMessage(error));
        }
    }
	
    /**
     * @descripton Spinner toggler
     */
	toggleSpinner(loadCount){
        this.loadedLists += loadCount;

        if(this.loadedLists <= 0){
            this.loadedLists = 0;
        }
    }
	
    /**
     * @descripton Console log for debugging
     */
	consoleLog(anything, isJson){
        logInfo('jsLibraryLoader', anything, this.enableDebugMode, isJson);
    }
	
}