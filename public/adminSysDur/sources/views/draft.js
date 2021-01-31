import {JetView} from "webix-jet";
// import {documents} from "models/documents";

export default class DraftView extends JetView{
	config(){
		return {
			type:"space",
			"rows": [
				{
					rows:[						
						{
							"css": "webix_dark",
							"view": "toolbar",
							"cols": [
								{ "view": "label", "label": "List Form Request" },
								{ "view": "button", "label": "Update Status", "autowidth": true, "name": "update" }
							]
						},
						{
							"url": "/open_picsysdur",
							ready:function(){ 
								this.adjustColumn("user_id"); 
								 this.adjustColumn("department_id"); 
								 this.adjustColumn("created_at"); 
								 this.adjustColumn("jenis"); 
								 this.adjustColumn("dokumen"); 
								 // this.adjustColumn("alasan"); 
								 this.adjustColumn("file"); 
							},
							scheme:{
								$init:function(row){
									row.user_id = (row.user || "") && row.user.name
									row.department_id = (row.department || "") && row.department.name
								}
							},
						"columns": [
							{ id:"file",	header:["Lampiran"], template:"<a target='_blank' href='uploads/#file#'>View</a>"},
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
							{ "id": "created_at", "header": "Tanggal", "sort": "string", "fillspace": false, "hidden": false },
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
								"fillspace": true,
								"hidden": false
							}
						],
						"view": "datatable",
						select:true
						}
					]
				},
				{
					rows:[						
						{
							"css": "webix_dark",
							"view": "toolbar",
							"cols": [
								{ "view": "label", "label": "List Document" },
								{ "label": "View All", "view": "button" },
								{ "label": "View Draft", "view": "button" },
								// { "label": "Revision Document", "view": "button", "name": "revisi" },
								{ "label": "Create New Document", "view": "button", "name": "new",
									click:() => this.show("forms.documentform")
								}
							]
						},
						{
							"url": "demo->5fd1ae8024ab08001840fc37",
							"columns": [
								{ "id": "no", "header": "Document No.", "sort": "string" },
								{ "id": "name", "header": "Document Name", "fillspace": true, "sort": "string" },
								{ "id": "no_rev", "header": "Rev.", "sort": "string" },
								{ "id": "date", "header": "Effective Date", "sort": "string" },
								{ "id": "department_id", "header": "Department", "sort": "string" },
								{ "id": "detail", "header": "", "sort": "string" }
							],
							"view": "datatable"
						}
					]
				},
				{
					"cols": [
						{
							"rows": [
								{
									"cols": [
										{ "label": "Send to :", "options": "demo->5fd1ae8024ab08001840fc3a", "view": "select" },
										{ "label": "Add", "view": "button", "height": 0, "width": 100, "name": "add" }
									]
								},
								{
									"url": "demo->5fd1ae8024ab08001840fc37",
									"columns": [
										{ "id": "name", "header": "Name", "fillspace": true, "sort": "string", "hidden": false },
										{ "id": "email", "header": "Email", "sort": "string", "fillspace": true, "hidden": false }
									],
									"view": "datatable"
								},
								{
									"css": "webix_dark",
									"view": "toolbar",
									"cols": [
										{ "view": "button", "label": "Send", "autowidth": true, "name": "send" }
									]
								}
							]
						},
						{gravity:2,
							"rows": [
								{ "label": "Status Approval :", "view": "label" },
								{ "url": "demo->5fd1ae8024ab08001840fc39", "view": "timeline", "scroll": "x", "layout": "x" }
							]
						}
					]
				},
				{	height:40, css:'webix_primary',
					"cols": [
						{ "label": "Create Memo Internal", "view": "button", "name": "memo" },
						{ "label": "Create Surat Edaran", "view": "button", "height": 0, "name": "edaran" },
						{ "label": "Create Surat Keputusan", "view": "button", "height": 0, "name": "keputusan" }
					],
					"borderless": false
				}
			]
		};
	}
	init(){
		// $$('tbl_document').sync(documents);
	}
}
