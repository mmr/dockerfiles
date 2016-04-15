PGInsight
=====

Usage
----

```bash
docker run --rm -ti mribeiro/pginsight -h db_host -u db_user -p db_pass -d db_name -c cmd
```

Examples:
----
```bash
docker run --rm -ti mribeiro/pginsight -h localhost -u dev -p pass -d devdb -c 'index usage'
docker run --rm -ti mribeiro/pginsight -h localhost -u dev -p pass -d devdb -c 'index unused'
docker run --rm -ti mribeiro/pginsight -h localhost -u dev -p pass -d devdb -c 'queries'
```

Valid Cmds
----

See http://pginsight.io/
