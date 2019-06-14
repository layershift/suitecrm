[![suiteCRM](images/suite.jpg)](../../../suitecrm)

## suiteCRM

The JPS package deploys [suiteCRM](https://suitecrm.com/)  that initilly contains 1 application server and 1 database container.

### Highlights

This package is designed to deploy suiteCRM environment which automates your core sales, customer service and marketing processes.
It fuses simplicity, mobility, and social aspects of your app with the business process optimization of conventional CRM.

### Environment Topology

### Specifics

Layer                |         Server         | Number of CTs <br/> by default | Cloudlets per CT <br/> (reserved/dynamic) | Options
-------------------- | ---------------------- | :----------------------------: | :---------------------------------------: | :-----:
AS                   | Nginx 1.16.0 php-fpm   |       1                        |           1 / 16                          | -
DB                   | Mariadb 10.3.15        |       1                        |           1 / 8                           | -

* AS - Application server 
* DB - Database 
* CT - Container

**suiteCRM Version**: 7.11.5<br/>
**PHP Engine**: PHP 7.3.3<br/>
**MariaDB Database**: 10.3.15

## Deployment

[![Deploy to Layershift Jelastic PaaS](images/layershift-install-3.png)](http://jps.layershift.com/suitecrm/deploy.html)

# LICENSE

Licensed under GNU LGPLv3
