from PIL import Image
import numpy as np
import cv2
from matplotlib import pyplot as plt

ctrl = cv2.imread('IMG_2253 2.png')
expt = cv2.imread('IMG_2253.png')
PVC = cv2.imread('IMG_2384.png')

ctrli = Image.open('IMG_2253 2.png')
expti = Image.open('IMG_2253.png')
PVCi = Image.open('IMG_2384.png')
PVCi.show()
rgb_PVCi = PVCi.convert('RGB')
print(rgb_PVCi.size)
# r, g, b = rgb_PVCi.getpixel((1000, 2500))
# print(r, g, b)

ctrl_arr = np.array(ctrl)
expt_arr = np.array(expt)
expt_arr = np.array(PVC)
# print(expt[2448.77, 1023.92, 1])
# print(expt_arr([1000, 2500, 2]))
# print(expt_arr)

sobel_filter = np.array([[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]])
prewitt_filter = np.array([[-1, 0, 1], [-1, 0, 1], [-1, 0, 1]])
prewitt_filter_t = np.transpose(prewitt_filter)
gray = cv2.cvtColor(PVC, cv2.COLOR_BGR2GRAY)
PVC = cv2.GaussianBlur(gray, (3, 3), 0)
laplacian = cv2.Laplacian(PVC, cv2.CV_64F)
sobelx = cv2.Sobel(PVC, cv2.CV_64F, 1, 0, ksize=5)
sobely = cv2.Sobel(PVC, cv2.CV_64F, 0, 1, ksize=5)
img_prewittx = cv2.filter2D(PVC, -1, prewitt_filter)
img_prewitty = cv2.filter2D(PVC, -1, prewitt_filter_t)
plt.imshow(img_prewittx, cmap='gray')
plt.show()
