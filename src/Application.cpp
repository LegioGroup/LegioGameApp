#include <Legio/application/EntryPoint.h>
#include <Legio/platform/Log.h>
#include <string>

class Application : public LG::Application
{
public:
    Application(std::string appName = "Main App") : LG::Application(appName)
    {
    }

    virtual ~Application()
    {
        LG_APP_INFO("Application Deleted!");
    }

    virtual void Update(float deltaTime) override
    {
        LG_APP_TRACE("Application Updating!");
    }
};

LG::Application* CreateApplication()
{
    return new Application("Legio Test!");
}