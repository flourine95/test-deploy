<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>CKBox Image Upload Test</title>
    <!-- Add React dependencies first -->
    <script src="[https://unpkg.com/react@17/umd/react.production.min.js"></script>](https://unpkg.com/react@17/umd/react.production.min.js"></script>)
    <script src="[https://unpkg.com/react-dom@17/umd/react-dom.production.min.js"></script>](https://unpkg.com/react-dom@17/umd/react-dom.production.min.js"></script>)
    <!-- Then add CKBox -->
    <script src="[https://cdn.ckbox.io/ckbox/latest/ckbox.js"></script>](https://cdn.ckbox.io/ckbox/latest/ckbox.js"></script>)
    <style>
        .preview-image {
            max-width: 300px;
            margin: 10px 0;
        }
        .upload-button {
            padding: 10px 20px;
            background-color: #1F8ECD;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px 0;
        }
        .image-container {
            margin: 20px 0;
        }
        #ckbox-container {
            min-height: 400px;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<h2>CKBox Image Upload Test</h2>

<!-- Upload button -->
<button id="uploadButton" class="upload-button">Open Image Chooser</button>

<!-- Container for CKBox -->
<div id="ckbox-container"></div>

<!-- Image preview container -->
<div id="imageContainer" class="image-container">
    <h3>Uploaded Images:</h3>
</div>

<script>
    // Wait for all dependencies to load
    window.addEventListener('DOMContentLoaded', () => {
        // CKBox configuration
        const config = {
            tokenUrl: '${pageContext.request.contextPath}/ckbox/token',
            theme: {
                color: '#1F8ECD',
                background: '#ffffff'
            },
            allowedFileTypes: ['image/*'],
            // Add these options for better initialization
            height: '400px',
            width: '100%',
            language: 'en'
        };

        let ckboxInstance = null;

        // Initialize CKBox
        CKBox.mount('#ckbox-container', config)
            .then(instance => {
                console.log('CKBox mounted successfully');
                ckboxInstance = instance;
            })
            .catch(error => {
                console.error('Error initializing CKBox:', error);
            });

        // Handle upload button click
        document.getElementById('uploadButton').addEventListener('click', async () => {
            try {
                if (!ckboxInstance) {
                    throw new Error('CKBox not initialized');
                }

                // Open asset chooser
                const result = await ckboxInstance.openAssetChooser();

                if (result && result.assets && result.assets.length > 0) {
                    // Process each uploaded image
                    result.assets.forEach(asset => {
                        // Get image URL (prefer high quality if available)
                        const imageUrl = asset.imageUrls.high || asset.imageUrls.default;
                        const imageId = asset.id;

                        // Create image element
                        const imgElement = document.createElement('img');
                        imgElement.src = imageUrl;
                        imgElement.className = 'preview-image';
                        imgElement.setAttribute('data-image-id', imageId);

                        // Create container for this image
                        const container = document.createElement('div');
                        container.innerHTML = `
                                <p>Image ID: ${imageId}</p>
                                <p>Image URL: ${imageUrl}</p>
                                <p>Filename: ${asset.filename}</p>
                            `;
                        container.prepend(imgElement);

                        // Add to page
                        document.getElementById('imageContainer').appendChild(container);

                        // Log the upload details
                        console.log('Uploaded image:', {
                            id: imageId,
                            url: imageUrl,
                            filename: asset.filename,
                            size: asset.size
                        });
                    });
                }
            } catch (error) {
                console.error('Error uploading image:', error);
                alert('Error uploading image. Please try again.');
            }
        });
    });
</script>
</body>
</html>