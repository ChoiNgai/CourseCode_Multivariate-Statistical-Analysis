import numpy as np
from matplotlib import pyplot as plt
from scipy.cluster.hierarchy import dendrogram, linkage

data = np.loadtxt('data.txt')
print(data)
z = linkage(data, "average") #数据处理：用average算法，即类平均法

fig,ax = plt.subplots(figsize=(8,8))
dendrogram(z, leaf_font_size=14)    #画图
plt.title("Hierachial Clustering Dendrogram")
plt.xlabel("Cluster label")
plt.ylabel("Distance")
plt.axhline(y = 10)   # 画一条分类线
plt.show()

