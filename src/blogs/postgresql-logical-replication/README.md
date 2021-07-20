---
title: PostgreSQL logical Replication
thumbnail: ""
url: "postgresql-logical-replication"
...

# 🐘 PostgreSQL Logical Replication 

> also known as *transactional replication*

In postgres `physical replicaion`, each change in the master is streamed through the **WAL**(write-ahead-logging) and applied to destination server.This follows publish subscribe model 

## Steps 

* The replicaion starts by copying a snapshot of publishing database to the subscriber. This phase is called **table synchronization phase**. 
* There can be only one synchronization worker per table. 
* Once the copy is done, the subsequent change in the publisher node are sent to the subscriber node as they occur in real-time. 
* The chages are applied in the subscriber in commit order. 


---

### References 

* [1](https://www.enterprisedb.com/postgres-tutorials/logical-replication-postgresql-explained)
* [lib-0](https://github.com/kagis/pgwire)
* [lib-1](https://github.com/kibae/pg-logical-replication)

