/**
 * @Author 		WDCi ()
 * @Date 		March 2023
 * @group 		
 * @Description 
 * @changehistory
 */
import { LightningElement, api } from 'lwc';
import { promptInfo, promptError, promptWarning, promptSuccess } from 'c/toasterUtil';
import { customLabels } from 'c/labelLoader';

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
	
	//library loader
    handleLibLoadSuccess(event) {
        this.isScriptLoaded = true;
        this.isInitSuccess = true;
        
    }

    //library loader
    handleLibLoadFail(event) {
        this.isScriptLoaded = true;
        this.isInitSuccess = false;
    }
	
	renderedCallback(){

    }

    connectedCallback(){
		
	}
	
	disconnectedCallback() {
		
	}
	
	get isLoading(){
        return this.loadedLists === 0 ? false : true;
    }
	
	toggleSpinner(loadCount){
        this.loadedLists += loadCount;

        if(this.loadedLists <= 0){
            this.loadedLists = 0;
        }
    }
	
	consoleLog(anything){
        if(this.enableDebugMode){
            console.log(anything);
        }
    }
	
}