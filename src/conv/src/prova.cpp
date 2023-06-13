  #include <iostream>
  #include <stdio.h>
  #include <vector>
  using namespace std;
 int main(int argc, char* argv[])
 {
  float vertices[522];
  int triangles[522/3];
  FILE *fd;
  fd=fopen("/home/fabio/mesh.txt", "r"); 

  if( fd==NULL ) {
    perror("Errore in apertura del file");
    exit(1);
  }
    for(int i=0; i<522; i++)
    {
        fscanf(fd, "%f", &vertices[i]);
      //  cout<<vertices[i]<<endl;
    }
     for (int j=0;j<522/3;j++)
     {
    triangles[j]=j;
    cout<<triangles[j]<<endl;
  }
  cout<<triangles[].size()<<endl;
  fclose(fd);
  }