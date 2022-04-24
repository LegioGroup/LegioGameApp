#include <Legio/Engine.h>
#include <glm/glm.hpp>
#include <Legio/ServiceLocator.h>
int main(int argc, char** argv)
{
    LG::Engine::Init();
    LG::ServiceLocator::GetWindow()->OpenWindow();
        
    while (!LG::ServiceLocator::GetWindow()->Update())
    {
        /* code */
    }
    
}