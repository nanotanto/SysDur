import {JetView} from "webix-jet";

export default class DocumentsForm extends JetView{
	config(){
		return {
			type:"space",
			rows:[
				{	id:"documentform",
					view:"form", 
                    complexData:true,
					// paddingY:20, paddingX:30,
					elementsConfig:{ labelWidth:100, "required": true, "labelPosition": "top" },
					elements:[

						{ type:"header", template:"Document editor" },
						{
							"cols": [
								{
									"rows": [
										{ "label": "Request No.", 
											options:[{ "id":1, "value":"Master" },{ "id":2, "value":"Release" }], 
											"view": "select", "name": "fp4form_id" 
										},
										{ "label": "Department", options:[{ "id":1, "value":"Master" },{ "id":2, "value":"Release" }], "view": "select", "name": "department_id" },
										{ "label": "Document No.", "view": "text", "name": "no" },
										{ "label": "Document Name", "view": "text", "name": "name" },
										{ "label": "Revision No.", "view": "text", "name": "no_rev" },
										{ "label": "Description", "view": "textarea", "name": "revisi" }
									]
								},
								// { "label": "Draft Document", "view": "textarea", "gravity": 3, "name": "isi" }
								{ "label": "Draft Document", "view": "tinymce-editor", "gravity": 3, "name": "prosedur",
									cdn:"tinymce",
									config:{
										setup: function (editor) {
						                editor.on('init change', function () {
						                    editor.save();
						                });
						            },
						            plugins: [
						                "advlist autolink lists link image charmap print preview anchor",
						                "ruler pagebreak",
						                "searchreplace visualblocks code fullscreen",
						                "insertdatetime media table contextmenu paste imagetools"
						            ],
						            toolbar: "pagebreak | insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image ",
						            pagebreak_separator: "</section><section class='sheet'>",
						            image_title: true,
						            automatic_uploads: true,
						            images_upload_url: 'upload',
						            images_upload_base_path: '/',
						            file_picker_types: 'image',
						            file_picker_callback: function(cb, value, meta) {
						                var input = document.createElement('input');
						                input.setAttribute('type', 'file');
						                input.setAttribute('accept', 'image/*');
						                input.onchange = function() {
						                    var file = this.files[0];

						                    var reader = new FileReader();
						                    reader.readAsDataURL(file);
						                    reader.onload = function () {
						                        var id = 'blobid' + (new Date()).getTime();
						                        var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
						                        var base64 = reader.result.split(',')[1];
						                        var blobInfo = blobCache.create(id, file, base64);
						                        blobCache.add(blobInfo);
						                        cb(blobInfo.blobUri(), { title: file.name });
						                    };
						                };
						                input.click();
						            }
									}
								}
							]
						},
						{
							margin:10,
							cols:[
								{
									view:"button", value:"<< Back", align:"center", width:120,
									click:() => this.show("draft")
								},
								{
									view:"button", value:"Save", type:"form", align:"center", width:120,
									click:() => {
										const form = $$("documentform");
										if (form.validate()){
											var data = form.getValues();
											webix.confirm("Do you wont to save data ?").then(function(result){
												// webix.ajax().post("documents/store", data).then(() => webix.message("Saved"));
												webix.send("documents/store", data);
											});
                                        }
                                        else
                                        webix.message({ type:"error", text:"Form data is invalid" });
									}
								},
								{}
							]
						}
					],
					rules:{
						// name:webix.rules.isNotEmpty,
						// email:webix.rules.isEmail
					}
				}
			]			
		};
	}
}
