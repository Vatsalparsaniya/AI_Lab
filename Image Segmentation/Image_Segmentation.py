import numpy as np
from numpy import random

visited = []

def dfs(graph,node,label,label_image):
    global visited
    if node not in visited:
        visited.append(node)
        label_image[node[0]][node[1]] = label
        for n in graph[node]:
            dfs(graph,n,label,label_image)

image_size = 16

input_binary_image = random.randint(1,256, (image_size,image_size))
input_binary_image[input_binary_image<150] = 0
input_binary_image[input_binary_image>=150] = 1
# input_binary_image = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0],[0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0],[0,0,1,0,0,0,1,1,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0],[0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0],[0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,1],[0,0,1,0,0,0,0,0,0,0,0,0,0,1,1,1],[0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0],[0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0]]
print(input_binary_image)

graph = {(i,j):[] for i in range(image_size) for j in range(image_size)}

def get_neighbour(i,j,input_binary_image):
    neighbour = [(i-1,j-1),(i-1,j),(i-1,j+1),(i,j-1),(i,j+1),(i+1,j-1),(i+1,j),(i+1,j+1)]
    choice = []
    for n in neighbour:
        p,q = n
        if p>=0 and q>=0 and p<image_size and q<image_size and input_binary_image[p][q]:
            choice.append((p,q))
    return choice

for i in range(image_size):
        for j in range(image_size):
            if input_binary_image[i][j] == 1:
                graph[(i,j)] = get_neighbour(i,j,input_binary_image)

label_image = np.zeros((image_size,image_size))

print(graph)
label =1 
for i in range(image_size):
        for j in range(image_size):
            if input_binary_image[i][j] == 1 and (i,j) not in visited:
                dfs(graph,(i,j),label,label_image)
                label += 1
        

print(label_image)