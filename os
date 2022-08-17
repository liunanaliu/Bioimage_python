import os
path = 'images/'
print(os.listdir(path))

for image in os.listdir(path):#iterate all files
    print(image)    
    
print(os.walk('.'))#make a generator

for root, dirs, files in os.walk('.'):
    #print(root) #for root dictionary name
    path = root.split(os.sep) #spllit at separator including / or \
    #print(path)#for names of files in each dictionary
    #print(files)
    print((len(path)-1)* '---',os.path.basename(root))#distinguish subfiles from distinct folders
    for file in files:
        print(len(path)*'---',file)

for root, dirs, files in os.walk('.'):
    for name in dirs:
        print(os.path.join(root,name))#for path of dictionaries
    for name in files:
        print(os.path.join(root, name))#fpr path of files
