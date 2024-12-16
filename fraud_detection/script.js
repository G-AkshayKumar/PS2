const express = require("express");
const fileUpload = require("express-fileupload");
const { verify, isValid } = require("@trustvc/trustvc");
const fs = require("fs");
const path = require("path");

const app = express();

// Middleware for handling file uploads
app.use(fileUpload());

// Serve the frontend
app.use(express.static("public"));

app.post("/verify", async (req, res) => {
  if (!req.files || !req.files.document) {
    return res.status(400).send({ success: false, message: "No file uploaded" });
  }

  // Save the uploaded file
  const uploadedFile = req.files.document;
  const filePath = path.join(__dirname, "uploads", uploadedFile.name);
  uploadedFile.mv(filePath, async (err) => {
    if (err) {
      return res.status(500).send({ success: false, message: "File upload failed" });
    }

    try {
      // Load and verify the document
      const document = JSON.parse(fs.readFileSync(filePath, "utf8"));
      const fragments = await verify(document);

      // Check if the document is valid
      const valid = isValid(fragments);

      res.send({ success: true, valid, fragments });
    } catch (error) {
      res.status(500).send({ success: false, message: error.message });
    } finally {
      // Clean up uploaded file
      fs.unlinkSync(filePath);
    }
  });
});

// Start the server
app.listen(3000, () => {
  console.log("Server running on http://localhost:3000");
});
