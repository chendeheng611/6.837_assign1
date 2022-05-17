#ifndef STARTER0_UTIL_H
#define STARTER0_UTIL_H

#include <cstdint>

float deg2rad(float deg);
float rad2deg(float rad);

struct GLFWwindow;
// creates a window using GLFW and initializes an OpenGL 3.3+ context.
GLFWwindow* createOpenGLWindow(int width, int height, const char* title);

// returns 0 on error
// program must be freed with glDeleteProgram()
uint32_t compileProgram(const char* vertexshader, const char* fragmentshader);

static const char* c_vertexshader = R"RAWSTR(
#version 330
// These are vertex attributes.
// You can define custom attributes,
// like color or curvature.
layout(location=0) in vec3 Position;
layout(location=1) in vec3 Normal;

// var_ (varying) variables are output in the vertex
// shader and are interpolated by the GPU for each
// pixel of the triangle.
// In GLSL 3.30, corresponding variables in the
// fragment shader must have the same name.
out vec4 var_Color;
//定义的in 和 out


//定义uniform mat
//一致变量。在着色器执行期间一致变量的值是不变的。只能全局声明，并且在vs fs共享
uniform mat4 P;
uniform mat4 V;
uniform mat4 M;//
uniform mat4 N;
uniform vec3 camPos;

uniform vec4 diffColor;
uniform vec4 specColor;
uniform float shininess;

uniform vec4 lightPos;
uniform vec4 lightDiff;

// shaders can have #defines, too
#define PI_INV 0.318309886183791

void main () {
    // gl_Position is a built-in variable
    // and _must_ be assigned to by the
    // vertex shader.
    // holyshit this PVMN are define by cpp code!!!
    gl_Position = P * V * M * vec4(Position, 1);

    // transform vertex position and normal
    // into world coordinates
    vec3 normal_world = (N * vec4(Normal, 1)).xyz;
    normal_world = normalize(normal_world);

    // Implement Blinn-Phong Shading Model
    // 1. Convert everything to world space
    //    and normalize directions
    vec4 pos_world = M * vec4(Position, 1);
    pos_world /= pos_world.w;
    vec3 light_dir = (lightPos - pos_world).xyz;
    vec3 cam_dir = camPos - pos_world.xyz;
    float distsq = dot(light_dir, light_dir);
    light_dir = normalize(light_dir);
    cam_dir = normalize(cam_dir);

    // 2. Compute Diffuse Contribution
    float ndotl = max(dot(normal_world, light_dir), 0.0);
    vec3 diffContrib = PI_INV * lightDiff.xyz * diffColor.xyz
                       * ndotl / distsq;

    // 3. Compute Specular Contribution
    vec3 halfVec = light_dir + cam_dir;
    vec3 R = reflect( -light_dir, normal_world );
    float eyedotr = max(dot(cam_dir, R), 0.0);
    vec3 specContrib = pow(eyedotr, shininess) *
                       specColor.xyz * lightDiff.xyz / distsq;
    
    //GLSL中只能使用一维数组。数组的类型可以是一切基本类型或者结构体。

    // 4. Add specular and diffuse contributions
    var_Color = vec4(diffContrib + specContrib , diffColor.w );
    // var_Color = vec4(diffContrib + specContrib + ambient_light.xyz , diffColor.w );

    // mat2 m = mat2(1,2,3,4);[1,3]
    //                       [2,4]
}
)RAWSTR";

static const char* c_fragmentshader = R"RAWSTR(
#version 330
in vec4 var_Color;

layout(location=0) out vec4 out_Color;

/*
* This is an example of a "pass through" fragment shader
* used in Gouraud shading. The main function takes interpolated 
* color values from the rasterizer, and passes them on to the blending stage.
*
* You can improve lighting quality by passing normals from vertex
* to fragment shader, and then evaluating the shading code for each
* fragment (Phong Shading).
*/

void main () {
    vec4 ambient_light = vec4(0.5,0.2,0.3,0);
    out_Color = var_Color + ambient_light;
}
)RAWSTR";

#endif
// think这段vs 和 fs 就是两端程序罢了
