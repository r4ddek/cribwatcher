from skimage import *

image = data.coins()
edges = filter.sobel(image)
io.imshow(edges)
