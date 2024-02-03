# Hotel Menu
A website designed to automatically retrieve menu cards for customers/clients.

Note: The site is only optimized for mobile devices.

## Deployment Instructions 
Place your menu pictures under the /images directory. Ensure the images are named sequentially, such as 1.png, 2.png, 3.png, and so on. The site will automatically fetch the images in sequence.

Note: Only JPEG, JPG, and PNG format images are supported.

## Docker deployment

Download Image:
```
docker pull equin0x/hotel-menu-pl:latest
```
Run Image:
```
docker run -p 8080:80 equin0x/hotel-menu-pl
```
