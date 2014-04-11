#Let's make a website for a store.

* DONE As a store owner, I want to create a new entry for a product with a name, price, and description.

*DONE As a shopper, I want to see a list of all the products in the store, and be able to click on them to get more information.

*DONE As a store owner, I want to make sure only I and other store employees can add, edit, and remove products. Hint: Add user authentication. Instead of letting people sign up for the site, "seed" the site with one login you create from the Rails console. Allow that user to CRUD/L additional users. Only allow unauthenticated users to list and show products; all other actions for products and all actions for users should be restricted to authenticated users.

* DONE As a store owner, I want to add product in bulk by uploading a CSV with information on them. Hint: Add a ProductUploadsController with only new and create actions.

* DONE As a store owner, I want to optionally add an image to a product.

As a store owner, after I upload a CSV, I want to see a list of any rows that couldn't be imported.

As a store owner, when I upload a CSV, I want to map the column headers of my CSV to the database fields, so that I don't have to make sure my column headers match the database field names exactly. Hint: Use the jQuery CSV plugin to parse the CSV, extract the headers, display them to the user, let them map to the database fields, and then send the mapping back as a parameter with the file upload.
