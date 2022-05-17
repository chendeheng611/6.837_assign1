#include "LoadObj.h"
 
int main()
{
	std::string filename = "garg.obj";
	
	TriangleMesh mesh;
 
	loadObj(filename, mesh);
}