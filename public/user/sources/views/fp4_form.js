import {JetView} from "webix-jet";

var url = window.location.protocol +"//"+ window.location.hostname+":"+window.location.port+window.location.pathname;

export default class FP4FormView extends JetView{
	config(){
		return {
			type:"space",
			rows:[
				{
					rows:[
						{ type:"header", template:"Form Request FP4"},
						/*wjet::Settings*/
						{
							"id": 1610522962845,
							"cols": [
								{ "autoheight": false, "view": "form", "id": "formrequest", "elementsConfig": { "required": false, "labelPosition": "top" },
									"rows": [
										{ "label": "Nama Lengkap Pemohon", "view": "select", 
											"options": url+"/user_id", "name": "user_id", "labelWidth": 200 },
										// { "view": "text", "label": "Nama Lengkap Pemohon", "name": "name", "id": 1610522963045, "labelWidth": 200 },
										{
											"label": "Department",
											"options": url+"/department_id",
											// url:"/department_id",
											"view": "select",
											"id": 1610522964018,
											"labelWidth": 200,
											"name": "department_id"
										},
										// {
										// 	"label": "Tanggal Permohonan",
										// 	// "value": "2021-01-13 14:29:23",
										// 	"view": "datepicker",
										// 	format:"%Y-%m-%d",
										// 	"id": 1610522964428,
										// 	"labelWidth": 200,
										// 	"name": "date"
										// },
										{
											"label": "Jenis Permohonan",
											"options": ["Penambahan Dokumen Baru","Perubahan Dokumen"],
											"view": "select",
											"id": 1610522964593,
											"labelWidth": 200,
											"name": "jenis"
										},
										{
											"label": "Jumlah Dokumen",
											"options": ["1","2","3","4",'5','6','7','8','9','10'],
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
												{ 
											      view: "uploader", id:"upl1", 
											      autosend:true, value: 'Upload file', name:"file",
											      link:"mylist",  
											      upload:"uploadfile"
											    },
											    {
											      view:"list",  id:"mylist", type:"uploader",
											      autoheight:true, borderless:true
											    }
											]
										},
										{ "view": "button", "css": "webix_primary", "label": "Submit", click: function() {										      

										      const form = $$("formrequest");
												if (form.validate()){
													var data = form.getValues();
													webix.confirm("Do you wont to save data ?").then(function(result){
														// webix.ajax().post("documents/store", data).then(() => webix.message("Saved"));
														$$("upl1").send();

														webix.send("submitForm", data);
													});
		                                        }
		                                        else
		                                        webix.message({ type:"error", text:"Form data is invalid" });
									    	}
										}
									],
									"type": "form",
									"borderless": 1,
									"scroll": "y"
								},
								{	gravity:2,
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
													"width": 200,
													"fillspace": false,
													"hidden": false
												},
												{
													"id": "dokumen",
													"header": "Nama Dokumen",
													"sort": "string",
													"width": 200,
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
										{ "url": "fp4status/"+19, "view": "timeline", "layout": "x", "borderless": 1 }
									]
								}
							]
						}
					]
				}
			]
			
		}
	}
}