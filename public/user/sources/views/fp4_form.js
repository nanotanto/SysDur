import {JetView} from "webix-jet";

export default class FP4FormView extends JetView{
	config(){
		return {
			type:"space",
			rows:[
				{ type:"header", template:"Form Request FP4"},
				/*wjet::Settings*/
				{
					"id": 1610522962845,
					"cols": [
						{ "autoheight": false, "view": "form", "id": 1610522963044, "elementsConfig": { "required": true, "labelPosition": "top" },
							"rows": [
								{ "label": "User ID", "view": "text", "id": 1610522963258, "name": "user_id", "labelWidth": 200 },
								{ "view": "text", "label": "Nama Lengkap Pemohon", "name": "name", "id": 1610522963045, "labelWidth": 200 },
								{
									"label": "Department",
									"options": "demo->5fd1ae8024ab08001840fc3a",
									"view": "select",
									"id": 1610522964018,
									"labelWidth": 200,
									"name": "department_id"
								},
								{
									"label": "Tanggal Permohonan",
									"value": "2021-01-13 14:29:23",
									"view": "datepicker",
									"id": 1610522964428,
									"labelWidth": 200,
									"name": "date"
								},
								{
									"label": "Jenis Permohonan",
									"options": "demo->5fd1ae8024ab08001840fc3a",
									"view": "select",
									"id": 1610522964593,
									"labelWidth": 200,
									"name": "jenis"
								},
								{
									"label": "Jumlah Dokumen",
									"options": "demo->5fd1ae8024ab08001840fc3a",
									"view": "select",
									"id": 1610522964737,
									"labelWidth": 200,
									"name": "jumlah"
								},
								{ "label": "Nama Dokumen", "view": "text", "id": 1610522964773, "labelWidth": 200, "name": "dokumen" },
								{ "label": "Alasan Permohonan", "view": "textarea", "name": "alasan" },
								{
									"height": 38,
									"cols": [
										{ "label": "Upload Attachment", "view": "button", "height": 0 },
										{ "view": "template", "role": "placeholder", "borderless": 1 }
									]
								},
								{ "view": "button", "css": "webix_primary", "label": "Submit", "id": 1610522963047 }
							],
							"type": "form",
							"borderless": 1,
							"scroll": "y"
						},
						{
							"width": 0,
							"rows": [
								{
									"url": "fp4forms_open",
									"columns": [
										{
											"id": "user_id",
											"header": "Nama Pemohon",
											"fillspace": false,
											"sort": "string",
											"hidden": false,
											"width": 150
										},
										{
											"id": "department_id",
											"header": "Department",
											"sort": "string",
											"fillspace": false,
											"hidden": false,
											"width": 150
										},
										{ "id": "date", "header": "Tanggal", "sort": "string", "fillspace": false, "hidden": false },
										{
											"id": "jenis",
											"header": "Jenis Permohonan",
											"sort": "string",
											"width": 150,
											"fillspace": false,
											"hidden": false
										},
										{
											"id": "dokumen",
											"header": "Nama Dokumen",
											"sort": "string",
											"width": 150,
											"fillspace": false,
											"hidden": false
										},
										{
											"id": "alasan",
											"header": "Alasan Permohonan",
											"sort": "string",
											"width": 250,
											"fillspace": false,
											"hidden": false
										}
									],
									"view": "datatable",
									"gravity": 3,
									"borderless": 0
								},
								{ "label": "Status Approval :", "view": "label", "borderless": 1 },
								{ "url": "demo->5fd1ae8024ab08001840fc39", "view": "timeline", "layout": "x", "borderless": 1 }
							]
						}
					]
				}
			]
		}
	}
}