import {JetView} from "webix-jet";

export default class QuizView extends JetView{
	config(){
		return {
            type:"space",
			rows:[
				{ type:"header", template:"Evaluation"},
				/*wjet::Settings*/
				{
					view:"iframe", 
					id:"frame-body", 
					src:"quiz/public"
				}
			]
		}
	}
}