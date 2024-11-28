import fs from 'fs/promises';
      
export async function readFile() {
	return fs.readFile(
		'filename.txt', // Replace here
		'utf-8'
	);
}
