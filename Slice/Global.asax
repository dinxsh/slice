<%@ Application Codebehind="Global.asax.cs" Inherits="Slice.MvcApplication" Language="C#" %>

<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script RunAt="server">
    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);
    }

    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("DisplayBlog", "User/Blogs/{BlogId}/{Slug}.aspx", "~/DisplayBlog.aspx");
    }
</script>
