import {JetView} from "webix-jet";

export default class FP4FormView extends JetView{
	config(){
		return {
			type:"space",
			rows:[
				{ type:"header", template:"Form Request FP4"},
				/*wjet::Settings*/
				{ type:"form", paddingX:20,
					"view": "form",
					"rows": [
										{ label: "<span style='font-size:20px'>FORM FP4</span>", align:"center", view:"label"},
						{
							"margin": 20,
							"cols": [
								{
									"margin": 10,
									"rows": [
										{ "label": "Change Status", "options": [
											{ "id": "1", "value": "One" },
											{ "id": "2", "value": "Two" },
											{ "id": "3", "value": "Three" }
										], "view": "select", "labelWidth": 160 },
										{ "view": "label" },
										{ "view": "text", "placeholder": "Type here...", "label": "FP4 Number", "labelWidth": 160, "id": 1607648333289 },
										{ "label": "Company", "options": [
											{ "id": "1", "value": "One" },
											{ "id": "2", "value": "Two" },
											{ "id": "3", "value": "Three" }
										], "view": "select", "labelWidth": 160, "id": 1607648333290 },
										{
											"label": "Request Type",
											"options": [
												{ "id": "1", "value": "One" },
												{ "id": "2", "value": "Two" },
												{ "id": "3", "value": "Three" }
											],
											"view": "select",
											"labelWidth": 160,
											"id": 1607648333291
										}
									],
									"id": 1607648333288
								},
								{
									"margin": 10,
									"rows": [
										{ "label": "Approval History", "options": [
											{ "id": "1", "value": "One" },
											{ "id": "2", "value": "Two" },
											{ "id": "3", "value": "Three" }
										], "view": "select", "labelWidth": 160 },
										{ "view": "label" },
										{
											"label": "Department",
											"options": [
												{ "id": "1", "value": "One" },
												{ "id": "2", "value": "Two" },
												{ "id": "3", "value": "Three" }
											],
											"view": "select",
											"labelWidth": 160,
											"id": 1607648333293
										},
										{ "label": "Date Required", "value": "2020-12-11 07:49:51", "view": "datepicker", "labelWidth": 160, "id": 1607648333294 }
									],
									"id": 1607648333292
								}
							],
							"id": 1607648333287,
							"height": 220
						},
						{ "label": "Document Name", "view": "text", "labelWidth": 160 },
						{ "label": "Reason for Application", "view": "textarea", "height": 80, "labelWidth": 160 },
						{ "view": "template", "template": "", "role": "placeholder", "borderless": 1 },
						{
							"height": 38,
							"cols": [
								{
									cols:[
										{ "label": "Attachement", "view": "label", width:160 },
										{ "label": "Upload", "view": "button" },{}
									]
								},
								{ 
									"label": "Request Approval",
									"options": [
										{ "id": "1", "value": "One" },
										{ "id": "2", "value": "Two" },
										{ "id": "3", "value": "Three" }
									],
									"view": "select",
									"height": 36,
									"labelWidth": 160,
									//"width": 515
								}
							]
						},
						{
							"height": 38,
							"cols": [
								{ "label": "Change Status", "options": [
									{ "id": "1", "value": "One" },
									{ "id": "2", "value": "Two" },
									{ "id": "3", "value": "Three" }
								], "view": "select", "labelWidth": 160 },
								{ "view": "template", "role": "placeholder", "borderless": true }
							]
						},
						{ "label": "Result Analysis", "view": "textarea", "labelWidth": 160, "height": 80 },
						{
							"cols": [
								{ "label": "SysDur PIC", "options": [
									{ "id": "1", "value": "One" },
									{ "id": "2", "value": "Two" },
									{ "id": "3", "value": "Three" }
								], "view": "select", "labelWidth": 160 },
								{ "view": "template", "role": "placeholder", "borderless": 1 }
							]
						},
						{
							"cols": [
								{ "label": "Date", "value": "2020-12-11 08:44:04", "view": "datepicker", "labelWidth": 160 },
								{ "view": "template", "role": "placeholder", "borderless": 1 }
							]
						},
						{
							"cols": [
								{ "view": "template", "role": "placeholder", "borderless": 1 },
								{view:"button", label:"Submit", width:200}
							]
						},{gravity:2}
					],
					"id": 1607648333283,
					"margin": 10,
					"scroll": "y"
				}
			]
		}
	}
}