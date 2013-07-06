vSTIG
=====

Automated Tool for security policy application and auditing for VMware ESXi 5.x

Overview
=====

vSTIG is a scalable plugin-based PowerCLI application intended for setting and auditing of security policies for
VMware vSphere 5.X environments.

In addition to the basic engine, aka 'vstig.ps1', several directories are available where droppable plugins and
libraries can be placed to extend the functionality of the system.

The initial focus is the USA DISA policy as dictated at www.disa.mil but any custom policy set can be deployed.

File Structure
======

The core 'vstig.ps1' script can live anywhere and is accompanied by several directories:

./etc/vstig-settings.ini (the core settings file)

./lib/*.ps1 (where the libraries live)

./logs/*.log (where the logs are written)

./plugins/*.ps1 (where plugins are dropped.

Supported Plugin Types
=====

VM - Plugins for individual VM settings.

ESXI - Plugins for ESXi settings.

VMNET - Plugins for ESXi standard and distributed vSwitch Settings

VC - Plugins for vCenter Server

VUM - Plugins for VMware Update Manager


Creating a policy
=====

While all policies share a common set of functions (in ./lib) individual checks for your desired policy must be created
through a separate plugin set.  The DISA policy can be used as a guide.

Simply create a new folder in plugins named after your policy, for example:

```  mkdir v:\vSTIG\plugins\mypolicy```

and then create the required subfolders, for example:
```
  mkdir v:\vSTIG\plugins\mypolicy\VM
  
  mkdir v:\vSTIG\plugins\mypolicy\ESXI
  
  mkdir v:\vSTIG\plugins\mypolicy\VMNET
  
  mkdir v:\vSTIG\plugins\mypolicy\VC
  
  mkdir v:\vSTIG\plugins\mypolicy\VUM
```  
  
Then add plugins to these folders as described in the following section.


Creating a Plugin
======

Create a plugin in one of the directories described above.  

```foo```

