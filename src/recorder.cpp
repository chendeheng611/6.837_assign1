#include "recorder.h"

#include <cassert>
#include <cstdint>
#include "gl.h"

GeometryRecorder::GeometryRecorder(int nverts)
    : m_nverts(nverts), m_current(0)
{
    m_position.resize(nverts);
    m_normal.resize(nverts);
}//初始化了m_position和m_normal包含的是顶点和法线个数。

void GeometryRecorder::record(Vector3f pos,
            Vector3f normal)
{
    assert(m_current < m_nverts);
    m_position[m_current] = pos;
    m_normal[m_current] = normal;//更新pos和nor。就算是一样的，它也把m_current给
    m_current++;
}

void GeometryRecorder::draw()//pretty hard ha
{
    if (m_current % 3) 
    {
        printf("Warning: number of vertices not divisible by 3\n");
    } else if (m_current == 0) 
    {
        printf("Warning: no vertices recorded\n");
        return;
    }
    
    // upload data to GPU
    uint32_t vertexarray;
    glGenVertexArrays(1, &vertexarray);//generate vertex array object names
    glBindVertexArray(vertexarray);//绑定一个顶点数组对象
    uint32_t vertexbuffer[2];
    glGenBuffers(2, vertexbuffer);
    // gen vertex array and vertex buffer then bind to it 
    //第一个参数是要生成的缓冲对象的数量，第二个是要输入用来存储缓冲对象名称的数组
    //实际上发生的事情是将生成的两个缓冲对象存储在vertexbuffer

    // POSITION
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[0]);
    //第一个是缓冲对象的类型，第二个是缓冲对象的名称
    //缓冲对象的名称是在gen中生成的。
    //将这个类型绑定到上下文环境中就可以使用了。
    size_t position_nbytes = m_nverts * sizeof(m_position[0]);// why size_t here?
    glBufferData(GL_ARRAY_BUFFER, position_nbytes, 
        m_position.data(), GL_DYNAMIC_DRAW);

// GLuint vbo;
// glGenObject(1,&vbo);
// GLuint vbo[3];
// glGenObject(3,vbo);
// glBindObject(GL_WINDOW_TARGET,vbo[1]);
// 创建对象，使用其他的对象的时候，类似的思路

    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0,
 	3,
 	GL_FLOAT,
 	GL_FALSE,
 	sizeof(m_position[0]),
 	(void*)0);

    // NORMALS
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer[1]);
    size_t normal_nbytes = m_nverts * sizeof(m_normal[0]);
    glBufferData(GL_ARRAY_BUFFER, normal_nbytes, 
        m_normal.data(), GL_DYNAMIC_DRAW);

        
    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1,
 	3,
 	GL_FLOAT,
 	GL_FALSE,
 	sizeof(m_normal[0]),
 	(void*)0);

    // Everything is uploaded.
    // Now draw.
    glDrawArrays(GL_TRIANGLES, 0, m_current);

    // Release allocated buffers/arrays. very fun very hard, just a glance of it
    glDeleteBuffers(2, vertexbuffer);
    glDeleteVertexArrays(1, &vertexarray);
}
void GeometryRecorder::clear()
{
    m_current = 0;
}
