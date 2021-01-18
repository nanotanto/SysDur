export const documents = new webix.DataCollection({
	url:"documents.publish"
});

export function getRecords(){ return documents; };