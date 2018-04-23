[![suiteCRM](images/suite.jpg)](../../../suitecrm)

## suiteCRM

The JPS package deploys [suiteCRM](https://suitecrm.com/)  that initilly contains 1 application server and 1 database container.

### Highlights

This package is designed to deploy suiteCRM environment which automates your core sales, customer service and marketing processes.
It fuses simplicity, mobility, and social aspects of your app with the business process optimization of conventional CRM.

### Environment Topology

### Specifics

Layer                |     Server    | Number of CTs <br/> by default | Cloudlets per CT <br/> (reserved/dynamic) | Options
-------------------- | --------------| :----------------------------: | :---------------------------------------: | :-----:
AS                   | Apache 2 (MOD_PHP) |       1                        |           1 / 16                          | -
DB                   |    MySQL      |       1                        |           1 / 16                           | -

* AS - Application server 
* DB - Database 
* CT - Container

**suiteCRM Version**: 7.10.4<br/>
**PHP Engine**: PHP 7.1.7<br/>
**MySQL Database**: 5.7.19

## Deployment

[![Deploy to Layershift Jelastic PaaS](images/layershift-install-3.png)](http://jps.layershift.com/suitecrm/deploy.html)

# LICENSE

Licensed under GNU LGPLv3
