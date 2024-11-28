```javascript
import fs from 'fs/promises';
      
export async function readFile() {
	return fs.readFile(
		'greeting.text',
		'utf-8'
	);
}
```
