# Imba with firestore

Install firebase using npm

```text
npm install firebase
```

import into your imba project

```text
const firebase = require("firebase")
```

Grab firebaseConfig data object from your project database settings.

```text
const firebaseConfig = {
	apiKey: "123...",
	authDomain: "XYZ.firebaseapp.com",
	databaseURL: "https://XYZ.firebaseio.com"
}
```

Initialize firebase with that config

```text
firebase.initializeApp(firebaseConfig)
const db = firebase.firestore!
const docRef = db.doc('samples
```

\`\`\`

