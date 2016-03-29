# template-portlet #
## Template portlet ##

![alt tag](https://github.com/sci-gaia/template-portlet/blob/master/docroot/images/AppLogo.png?raw=true=100x20)

The **template-portlet** (mi-hostname-portlet) consists of a portlet example able to submit a job into one or more distributed infrastructures (DCIs). This portlet contains the relevant elements needed to deal with DCIs. The aim of this portlet is to use its code as a template that Science Gateway developers may customize to fit their own specific requirements. To make easy the customization process, a customize.sh bash script is included inside the source code package.

## Installation ##

Following instructions are meant for science gateway maintainers while generic users can skip this section.
To install the portlet it is enough to copy the war file into the application server and then configure it using into the portlet configuration menu.

Portlet configuration is splitted in two parts: *Generic application preferences*, *Infrastructures preferences*.

#### Generic application preferences ####

The generic part contains:

1. **Application Identifier** the identifies assigned to tha application in the  GridInteractions database table.
2. **Application label** *(Required)* a short meaningful label for the application.
3. **Production environment** a boolean flag that specify if the portlet will be used in a production or development environment.
  - if *true* the development environment preferences will be shown
    - **UserTrackingDB hostname** hostname of the Grid and Cloud Engine Usertracking database. Usually *localhost*
    - **UserTrackingDB username** username of the Grid and Cloud Engine Usertracking database user. Usually *user_tracking*
    - **UserTrackingDB password** password specified for the Usertracking database user. Usually *usertracking*
    - **UserTrackingDB database** Grid and Cloud Engine Usertracking database name. Usually *userstracking*
4. **Application requirements** the necessary statements to specify a job execution requirement, such as a particular software, a particular number of CPUs/RAM, etc. defined using JDL format.

#### Available Infrastructures ####

The infrastructure section shows the infrastructures configured. Using the actions menu on the right side of the table, you can:
- Activate / Deactivate
- Edit
- Delete
a configured infrastructure.

The *Add New* button is meant to make a new infrastructure available to the application. When you click this button a new panel, will be shown with several fields where you can specify the Infrastructure details.

The fields belonging to this panel are:

1. **Enabled** A boolean which enable or disable the current infrastructure.
2. **Infrastructure Name** *(Required)* The infrastructure name for these settings.
3. **Middleware** *(Required)* The middleware used by the current infrastructure. Here you can specify 3 different values.
  - **an acronym** for gLite based middleware.
  - **ssh** for HPC Cluster.
  - **rocci** for cloud based middleware.
  Following fields will be traslated in the relevant infrastructure parameters based on the value specified in this field.  
4. **BDII host**: The Infrastructure information system endpoint (URL).
  - If Middleware is **ssh** here you can specify a ";" separated string with ssh authentications parameters (username;password or username for key based authentication).
  - If Middleware is **rocci** here you can specify the name of the compute resource that will be created.
5. **WMS host**: is the service endpoint (URL).
6. **Robot Proxy host server**: the robot proxy server hostname.
7. **Robot Proxy host port**: the robot proxy server port.
8. **Proxy Robot secure connection**: a boolean to specify if robot proxy server needed a SSL connection.
9. **Robot Proxy identifier**: the robot proxy identifier.
10. **Proxy Robot Virtual Organization**: the virtual organization configured.
11. **Proxy Robot VO Role**: the role virtual organization configured.
12. **Proxy Robot Renewal Flag**: a boolean to specify if robot proxy can be renewed before its expiration.
13. **RFC Proxy Robot**: a boolean to specify if robot proxy must be RFC.
  - If Middleware is **rocci** this field must be checked.
14. **Local Proxy**: the path of a local proxy if you want use this type of authentication.
15. **Software Tags**: infrastructure specific information.
  - If Middleware is **rocci** here you can specify a ";" separated string with <image_id>;<flavor>;<link_resource>

## Usage ##
The usage of the portlet is simple; the user can select to upload a file. The **job label** input field is a human readable value that users will use to keep track of any job execution on DCIs. Each field are optional, if you don't specify any label a defualt will be created with the username and a timestamp.
