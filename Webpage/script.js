// Assuming @trustvc/trustvc is globally available after bundle.js is loaded
const { verify, isValid } = window.trustvc || {};

if (!verify || !isValid) {
  console.error("Error: @trustvc/trustvc is not loaded properly.");
}

const fileInput = document.getElementById("documentInput");
const verifyButton = document.getElementById("verifyButton");
const resultDiv = document.getElementById("result");

verifyButton.addEventListener("click", async () => {
  const file = fileInput.files[0];

  if (!file) {
    resultDiv.textContent = "Please upload a document file.";
    resultDiv.style.color = "red";
    return;
  }

  try {
    // Read and parse the file
    const fileText = await file.text();
    const document = JSON.parse(fileText);

    // Verify the document using the verify method from @trustvc
    const fragments = await verify(document);
    const isDocumentValid = isValid(fragments);

    // Display the result
    if (isDocumentValid) {
      resultDiv.textContent = "✅ Document is valid!";
      resultDiv.style.color = "green";
    } else {
      resultDiv.textContent = "❌ Document is invalid!";
      resultDiv.style.color = "red";
    }
  } catch (error) {
    // Handle errors during verification
    console.error("Verification Error:", error.message);
    resultDiv.textContent = `Error during verification: ${error.message}`;
    resultDiv.style.color = "red";
  }
});
