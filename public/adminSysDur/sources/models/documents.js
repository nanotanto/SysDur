export const documents = new webix.DataCollection({
	url:"documents_publish"
});

export function getRecords(){ return documents; };