#include "gl.h"
#include <GLFW/glfw3.h>
// master
#include <glm.hpp>
#include <gtc/matrix_transform.hpp>
#include <gtc/type_ptr.hpp>

#include <cmath>
#include <vector>
#include <cassert>
#include <iostream>
#include <sstream>

#include <vecmath.h>
#include "starter0_util.h"
#include "recorder.h"
#include "teapot.h"



#define TINYOBJLOADER_IMPLEMENTATION
#include "tiny_obj_loader.h"

using namespace std;
using namespace glm;

typedef float real_t;
static int color_index = 0;
// Globals
uint32_t program;

// This is the list of points (3D vectors)
vector<Vector3f> vecv;

// This is the list of normals (also 3D vectors)
vector<Vector3f> vecn;

// This is the list of faces (indices into vecv and vecn)
vector<vector<unsigned>> vecf;

GLfloat diffColors[256][4];
static float x_bia = 0;
static float x_bia_lo = 0;
static float y_bia = 0;
static float y_bia_lo = 0;

static float rox = 0.0;
static float roy = 0.0;
static float roz = 0.0;

// about movement
bool left_is_pressed = false;
bool middle_is_pressed = false;
bool ctrl_is_pressed = false;
Vector2f last_pos;

// dvec2 last_pos;

float coef = 1.0f;
float xangle = 0.0f;
float yangle = 0.0f;
Vector3f pos_offset(0);

// You will need more global variables to implement color and position changes
vector<Vector3f> vec_color;
vector<Vector3f> vecv_before;

Vector3f eye(0.0 , 0.0 , 10.0f);//cam pos
Vector3f center(0.0, 0.0, 0.0f);// to look at center 
Vector3f up(0.0, 1.0f, 0.0f);// eye up
// Set up a perspective view, with square aspect ratio

float nearz = 5.0f;
float farz = 100.0f;// what for ？？？
float fovy_radians = deg2rad(50.0f);
float aspect = 1.0f;//when 2.0 thin and tall




void updateMaterialUniforms();
void foo();


void mouse_move_callback(GLFWwindow* window, double x_pos, double y_pos)
{
    // std::cout<<"x_pos is "<<x_pos<<std::endl;
    if (left_is_pressed)
    {

        double y_offset = x_pos - last_pos[0];// beacuse here x is up ,y is right 

        double x_offset = y_pos - last_pos[1];

        xangle += x_offset *  0.01f;
        
        yangle += y_offset * 0.01f;

        cout<<"yangle is "<<yangle<<endl;

        last_pos[0] = (float)x_pos;
        last_pos[1] = (float)y_pos;
        // std::cout<<"mouse move to "<<last_pos[0]<<","<<last_pos[1]<<std::endl;
    }
    if (middle_is_pressed)
    {
        // double y_offset = x_pos - last_pos[0];// 前面的y是物体空间的，其正方向是屏幕的右侧 
        // double x_offset = y_pos - last_pos[1];

        Vector2f offset(x_pos - last_pos[0],y_pos - last_pos[1]);

        Vector3f eye_light = (eye-center).normalized();
        Vector3f right = Vector3f::cross(up, eye_light);

        pos_offset += right * offset[0] * 0.005f;
        pos_offset += up * -offset[1] * 0.005f; 

        last_pos[0] = (float)x_pos;
        last_pos[1] = (float)y_pos;
    }

}

void mouse_click_callback(GLFWwindow* window, int button, int action, int mods)//here mod is also an optional, 
{
    // action 0 down and 1 release, mods = 0 , button left 0 , right 1
    std::cout<<"mouse click button "<<button<<std::endl;
    std::cout<<"mouse click action "<<action<<std::endl;
    std::cout<<"mouse click mod "<<mods<<std::endl;

    if (mods == 2 && button == 0)
    {   

        if (action == 1)
        {
            double x_pos_temp, y_pos_temp;
            left_is_pressed = true;
            glfwGetCursorPos(window, &x_pos_temp, &y_pos_temp);// why cast not work？loc will be 0,0 forvere
            //glfwGetCursorPos(window, (double*)&last_pos[0], (double*)&last_pos[1]);// is this line will write the current cursor in it.
            last_pos[0] = (float)x_pos_temp;
            last_pos[1] = (float)y_pos_temp;
            // std::cout<<"after get pos"<<last_pos[0]<<std::endl;
        }
        else
        {
            left_is_pressed = false;
        }
    }

    else if(button == 2)
    {
        if (action == 1)
        {
            middle_is_pressed = true;
            double x_pos_temp, y_pos_temp;
            glfwGetCursorPos(window, &x_pos_temp, &y_pos_temp);// why cast not work？loc will be 0,0 forvere
            //glfwGetCursorPos(window, (double*)&last_pos[0], (double*)&last_pos[1]);// is this line will write the current cursor in it.
            last_pos[0] = (float)x_pos_temp;
            last_pos[1] = (float)y_pos_temp;
            
        }
        else
        {
            middle_is_pressed = false;
        }
    }
}

void scroll_callback(GLFWwindow* window, double x_offset, double y_offset)
{

if(ctrl_is_pressed)
{
    if (y_offset > 0 && coef<=100.0f)
	{
		coef *= 2.0f*y_offset;
	}
	
	if (y_offset < 0 && coef >= 0.001f)
	{
		coef /= -2.0f * y_offset;
	}
}

    // if (yoffset > 0 && coef<=100.0f)
	// {
	// 	coef *= 2.0f*yoffset;
	// }
	
	// if (yoffset < 0 && coef >= 0.001f)
	// {
	// 	coef /= -2.0f * yoffset;
	// }
    ctrl_is_pressed = false;

}

void keyCallback(GLFWwindow* window, int key,
    int scancode, int action, int mods)//mod ctrl shift, alt
{
    if (action == GLFW_RELEASE) { // only handle PRESS and REPEAT
        return;
    }


    
// // Vector3f eye(0.0, 0.0, 7.0f);
// Vector3f eye(0.0 , 0.0 , 7.0f);
// Vector3f center(0.0+ x_bia, 0.0+ y_bia, 0.0);
// Vector3f up(0.0+x_bia_lo, 1.0f+y_bia_lo, -0.2f);// cam

    // Special keys (arrows, CTRL, ...) are documented
    // here: http://www.glfw.org/docs/latest/group__keys.html
    if (key == GLFW_KEY_ESCAPE) {
        glfwSetWindowShouldClose(window, GLFW_TRUE);
    } 
    else if(key==341 && action==GLFW_REPEAT)
    {
        ctrl_is_pressed = true;
    }

    else if(key==341 && mods==GLFW_MOD_SHIFT)
    {
        ctrl_is_pressed = false;
    }
    else if (key == 'A') {
        eye[0] -= 0.5;


    }
    else if (key == 'D') {
            eye[0] += 0.5;

    }
    else if (key == 'W') {
            eye[1] += 0.5;

    }
    else if (key == 'S') {
           eye[1] -= 0.5;

    }
    else if (key == 262) {
        x_bia_lo = x_bia_lo + 0.5;

    }
    else if (key == 263) {
        x_bia_lo = x_bia_lo - 0.5;

    }
    else if (key == 264) {
            y_bia_lo = y_bia_lo - 0.5;

    }
    else if (key == 265) {
            y_bia_lo = y_bia_lo + 0.5;

    }
    else if (key == 'R') {
            rox = rox + 15.0;

            std::cout<<"rox" <<rox<<std::endl;

    }
    else if (key == 'T') {
            roy = roy + 15.0;

    }
    else if (key == 'Y') {
            roz = roz + 15.0;

    }
    
    
    else if (key=='C'){
        color_index++;
        // printf("now increase i:%d\n", i);
        // updateMaterialUniforms();
    }
    // else if (key=='Z')
    // {
    //     static float x_bia = 0;
    //     static float x_bia_lo = 0;
    //     static float y_bia = 0;
    //     static float y_bia_lo = 0;

    //     static float rox = 0.0;
    //     static float roy = 0.0;
    //     static float roz = 0.0;
    // }
    else {
        printf("Unhandled key press %d\n", key);
    }
}
void foo()
{
    std::cout<<"foo"<<endl;
}

void drawTriangle()
{
    // set a reasonable upper limit for the buffer size
    GeometryRecorder rec(1024);// so it's 1024 triangle at max?
    rec.record(Vector3f(0.0, 0.0, 0.0), // Position
        Vector3f(0.0, 0.0, 1.0));// Normal

    rec.record(Vector3f(3.0, 0.0, 0.0),
        Vector3f(0.0, 0.0, 1.0));

    rec.record(Vector3f(3.0, 3.0, 0.0),
        Vector3f(0.0, 0.0, 1.0));
    rec.draw();
}

void drawTeapot()
{

    // set the required buffer size exactly.
    GeometryRecorder rec(teapot_num_faces * 3);//面数 * 3！！
    for (int idx : teapot_indices) {//for int idx:int or auto item: iterable this item should not *
        Vector3f position(teapot_positions[idx * 3 + 0],//0的x,1,2,3,0的x
            teapot_positions[idx * 3 + 1],
            teapot_positions[idx * 3 + 2]);

        Vector3f normal(teapot_normals[idx * 3 + 0],
            teapot_normals[idx * 3 + 1],
            teapot_normals[idx * 3 + 2]);

        rec.record(position, normal);
    }
    rec.draw();// still draw it with the call func
}

void drawObjMesh(const tinyobj::attrib_t& attrib, 
const std::vector<tinyobj::shape_t>& shapes, 
const std::vector<tinyobj::material_t>& materials) {

for(size_t i = 0; i < shapes.size(); i ++)
{
    const int obj_num_faces = shapes[i].mesh.num_face_vertices.size();
    const int obj_num_vertices = attrib.vertices.size() / 3;
    //std::cout<<shapes[i].mesh.indices[1].vertex_index<<std::endl;
    
    GeometryRecorder rec(shapes[i].mesh.indices.size());

    // unsigned int obj_indices[shapes[i].mesh.indices.size()];
    // for(size_t idx_temp=0; idx_temp<shapes[i].mesh.indices.size(); idx_temp++)
    // {
    //     obj_indices[idx_temp] = shapes[i].mesh.indices[idx_temp].vertex_index;
    // }
    for(auto indice: shapes[i].mesh.indices)
    {
        Vector3f position((float)attrib.vertices[indice.vertex_index*3+0],
        (float)attrib.vertices[indice.vertex_index*3+1],
        (float)attrib.vertices[indice.vertex_index*3+2]);

        Vector3f normal((float)attrib.normals[indice.vertex_index*3 + 0],
        (float)attrib.normals[indice.vertex_index*3 + 1],
        (float)attrib.normals[indice.vertex_index*3 + 2]
        );

        rec.record(position, normal);
    }
    rec.draw();
}







    // draw obj mesh here
    // read vertices and face indices from vecv, vecn, vecf
}

// This function is responsible for displaying the object.
void drawScene(const tinyobj::attrib_t& attrib, 
const std::vector<tinyobj::shape_t>& shapes, 
const std::vector<tinyobj::material_t>& materials)
{  
     //drawTriangle();
    drawObjMesh(attrib, shapes, materials);
   //drawTeapot();
}

void setViewport(GLFWwindow* window)
{
    int width, height;
    glfwGetFramebufferSize(window, &width, &height);

    // make sure the viewport is square-shaped.
    if (width > height) {
        int offsetx = (width - height) / 2;
        glViewport(offsetx, 0, height, height);
    } else {
        int offsety = (height - width) / 2;
        glViewport(0, offsety, width, width);
    }
}

void updateCameraUniforms(float i)
{






    Matrix4f P = Matrix4f::perspectiveProjection(
        fovy_radians, aspect, nearz, farz);
    // P.print();
    // See https://www.opengl.org/sdk/docs/man/html/glUniform.xhtml
    // for the many version of glUniformXYZ()
    // Returns -1 if uniform not found.
    int loc = glGetUniformLocation(program, "P");//返回统一变量位置
    // std::cout<<"loc_1:"<<loc<<endl;
    
    glUniformMatrix4fv(loc, 1, false, P);//非常有趣，将uniform的能力将数据传入渲染管线
    //从编程的角度，定义投影矩阵和视角矩阵，都是matrix4f的
    //当拿到投影矩阵以后，将初始的Uniformlocation然后再整一整。要知道gluniformmatrix4fv是什么用

    Matrix4f V = Matrix4f::lookAt(eye, center, up);
    // V.print();
    // std::cout << "--------------" << std::endl;
    loc = glGetUniformLocation(program, "V");
    // std::cout<<"loc_2:"<<loc<<endl;
    glUniformMatrix4fv(loc, 1, false, V);
    loc = glGetUniformLocation(program, "camPos");
    // std::cout<<"loc_3:"<<loc<<endl;2,3,4???
    glUniform3fv(loc, 1, eye);

    // Make sure the model is centered in the viewport
    // We translate the model using the "Model" matrix
    Matrix4f M = Matrix4f::translation(0, 0, 0);
    //so to deal with rotate, just modify this model matrix.
    //M = M.rotateX(1.0f);
    // M = M.rotateY(30.0*3.14/180.0);
    
    M =  Matrix4f::scaling(coef,coef,coef) * Matrix4f::rotateX(xangle) * M.rotateX(rox*3.14/180.0) * M.rotateY(yangle)
     * M.rotateY(roy*3.14/180.0)
     * M.rotateZ(roz*3.14/180.0)
     * Matrix4f::translation(pos_offset[0],pos_offset[1],0);
    //  * M.translation(x_bia,y_bia,0);;
    //Q:why those rotate are not model-center-based
    // beacuse our rotate is base on (0,0,0)

    // maybe need one translation is fine


    
    

    loc = glGetUniformLocation(program, "M");
    glUniformMatrix4fv(loc, 1, false, M);

    // Transformation matrices act differently
    // on vectors than on points.
    // The inverse-transpose is what we want.
    Matrix4f N = M.inverse().transposed();
    loc = glGetUniformLocation(program, "N");
    glUniformMatrix4fv(loc, 1, false, N);
}

void updateMaterialUniforms()
{
    // Here are some colors you might use - feel free to add more
    int color_loop_temp  = color_index % 255;
    // printf("color %d", color_loop_temp);
    // Here we use the first color entry as the diffuse color
    int loc = glGetUniformLocation(program, "diffColor");
    glUniform4fv(loc, 1, diffColors[color_loop_temp]);

    // Define specular color and shininess
    GLfloat specColor[] = { 0.2f, 0.2f, 0.2f, 1.0f };
    GLfloat shininess[] = { 10.0f };

    // Note that the specular color and shininess can stay constant
    loc = glGetUniformLocation(program, "specColor");
    glUniform4fv(loc, 1, specColor);
    loc = glGetUniformLocation(program, "shininess");
    glUniform1f(loc, shininess[0]);
}

void updateLightUniforms()
{
    // Light Position
    GLfloat lightPos[] = { 2.0f, 3.0f, 5.0f, 1.0f };
    int loc = glGetUniformLocation(program, "lightPos");
    glUniform4fv(loc, 1, lightPos);

    // Light Color
    GLfloat lightDiff[] = { 120.0, 120.0, 120.0, 1.0 };
    loc = glGetUniformLocation(program, "lightDiff");
    glUniform4fv(loc, 1, lightDiff);
}

void loadInput(string _input_filename, string _input_filedir,  
tinyobj::attrib_t& attrib, std::vector<tinyobj::shape_t>& shapes, 
std::vector<tinyobj::material_t>& materials)

{
    std::string warn;
    std::string err;

    string basepath = _input_filedir;
    string filename = _input_filedir + _input_filename;
    bool ret = tinyobj::LoadObj(&attrib, &shapes, &materials, &warn,&err,filename.c_str(),basepath.c_str(),true);

}

// Main routine.
// Set up OpenGL, define the callbacks and start the main loop
int main(int argc, char** argv)
{   
    Vector2f test{0.0,1.0};
    cout<<typeid(test[0]).name()<<endl;
    test.x() = 2;//so it can be changed
    test[0] = static_cast<double>(test[0]);
    cout<<typeid(test[0]).name()<<endl;// won't do
    cout<<test[0]<<endl;



    for(int i=0;i<=255;i++)
    {
        diffColors[i][0] = 1.0/(i+1);
        diffColors[i][1] = 0.5/(i+1);
        diffColors[i][2] = (i+1)/255;
        diffColors[i][3] = 1;
    }

    tinyobj::attrib_t attrib;
    std::vector<tinyobj::shape_t> shapes;
    std::vector<tinyobj::material_t> materials;


    loadInput("kitten_holes.obj","../data/", attrib, shapes, materials);


    // std::cout<< obj_num_faces<<std::endl;




    GLFWwindow* window = createOpenGLWindow(640, 480, "a0");
    
    // setup the keyboard event handler
    glfwSetKeyCallback(window, keyCallback);
    glfwSetMouseButtonCallback(window, mouse_click_callback);
    glfwSetCursorPosCallback(window, mouse_move_callback);
    glfwSetScrollCallback(window, scroll_callback);

    // glEnable() and glDisable() control parts of OpenGL's
    // fixed-function pipeline, such as rasterization, or
    // depth-buffering. What happens if you remove the next line?
    glEnable(GL_DEPTH_TEST);// it's pretty clear , we can't modify the color of it 

    // The program object controls the programmable parts
    // of OpenGL. All OpenGL programs define a vertex shader
    // and a fragment shader.
    program = compileProgram(c_vertexshader, c_fragmentshader);
    if (!program) {
        printf("Cannot compile program\n");
        return -1;
    }

    glUseProgram(program);

    // Main Loop
    while (!glfwWindowShouldClose(window)) {
        // Clear the rendering window
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        setViewport(window);

        updateCameraUniforms(60);

        updateLightUniforms();
        updateMaterialUniforms();

        // Draw to back buffer
        drawScene(attrib, shapes, materials);

        // Make back buffer visible
        glfwSwapBuffers(window);

        // Check if any input happened during the last frame
        glfwPollEvents();
    }

    // All OpenGL resource that are created with
    // glGen* or glCreate* must be freed.
    glDeleteProgram(program);

    glfwTerminate(); // destroy the window
    return 0;
}
