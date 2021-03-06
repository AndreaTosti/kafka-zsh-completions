#!/bin/sh
#
# DISCLAIMER: THIS FILE HAS BEEN AUTOMATICALLY GENERATED
# PLEASE DO NOT TOUCH!!!
# IF YOU NEED TO DO ANY MODIFICATION, EDIT GENERATE.ZSH
# FOR MORE INFORMATION https://github.com/Dabz/kafka-zsh-completions
#

function _kafka-command() {
	cmd=$1
	arg_name="_$(echo $cmd | tr - _)_args"
	typeset -a options
	eval _describe 'values' $arg_name
}

declare -a _kafka_acls_args
_kafka_acls_args=()
_kafka_acls_args+=('--add: Indicates you are trying to add ACLs.')
_kafka_acls_args+=('--allow-host: Host from which principals listed in -- allow-principal will have access. If you have specified --allow-principal then the default for this option will be set to * which allows access from all hosts.')
_kafka_acls_args+=('--allow-principal: principal is in principalType:name format. Note that principalType must be supported by the Authorizer being used. For example, User:* is the wild card indicating all users.')
_kafka_acls_args+=('--authorizer: Fully qualified class name of the authorizer, defaults to kafka. security.auth.SimpleAclAuthorizer.')
_kafka_acls_args+=('--authorizer-properties: REQUIRED: properties required to configure an instance of Authorizer. These are key=val pairs. For the default authorizer the example values are: zookeeper. connect=localhost:2181')
_kafka_acls_args+=('--bootstrap-server: A list of host/port pairs to use for establishing the connection to the Kafka cluster. This list should be in the form host1:port1,host2: port2,... This config is required for acl management using admin client API.')
_kafka_acls_args+=('--cluster: Add/Remove cluster ACLs.')
_kafka_acls_args+=('--command-config: A property file containing configs to be passed to Admin Client.')
_kafka_acls_args+=('--consumer: Convenience option to add/remove ACLs for consumer role. This will generate ACLs that allows READ, DESCRIBE on topic and READ on group.')
_kafka_acls_args+=('--delegation-token: Delegation token to which ACLs should be added or removed. A value of * indicates ACL should apply to all tokens.')
_kafka_acls_args+=('--deny-host: Host from which principals listed in -- deny-principal will be denied access. If you have specified --deny- principal then the default for this option will be set to * which denies access from all hosts.')
_kafka_acls_args+=('--deny-principal: principal is in principalType:name format. By default anyone not added through --allow-principal is denied access. You only need to use this option as negation to already allowed set. Note that principalType must be supported by the Authorizer being used. For example if you wanted to allow access to all users in the system but not test-user you can define an ACL that allows access to User:* and specify --deny- principal=User:test@EXAMPLE.COM. AND PLEASE REMEMBER DENY RULES TAKES PRECEDENCE OVER ALLOW RULES.')
_kafka_acls_args+=('--force: Assume Yes to all queries and do not prompt.')
_kafka_acls_args+=('--group: Consumer Group to which the ACLs should be added or removed. A value of * indicates the ACLs should apply to all groups.')
_kafka_acls_args+=('--help: Print usage information.')
_kafka_acls_args+=('--idempotent: Enable idempotence for the producer. This should be used in combination with the --producer option. Note that idempotence is enabled automatically if the producer is authorized to a particular transactional-id.')
_kafka_acls_args+=('--list: List ACLs for the specified resource, use --topic <topic> or --group <group> or --cluster to specify a resource.')
_kafka_acls_args+=('--operation: Operation that is being allowed or denied. Valid operation names are: Read Write Create Delete Alter Describe ClusterAction AlterConfigs DescribeConfigs IdempotentWrite All (default: All)')
_kafka_acls_args+=('--principal: List ACLs for the specified principal. principal is in principalType:name format. Note that principalType must be supported by the Authorizer being used. Multiple --principal option can be passed.')
_kafka_acls_args+=('--producer: Convenience option to add/remove ACLs for producer role. This will generate ACLs that allows WRITE, DESCRIBE and CREATE on topic.')
_kafka_acls_args+=('--remove: Indicates you are trying to remove ACLs.')
_kafka_acls_args+=('--resource-pattern-type: The type of the resource pattern or pattern filter. When adding acls, this should be a specific pattern type, e.g. ''literal'' or ''prefixed''. When listing or removing acls, a specific pattern type can be used to list or remove acls from specific resource patterns, or use the filter values of ''any'' or ''match'', where ''any'' will match any pattern type, but will match the resource name exactly, where as ''match'' will perform pattern matching to list or remove all acls that affect the supplied resource(s). WARNING: ''match'', when used in combination with the ''--remove'' switch, should be used with care. (default: LITERAL)')
_kafka_acls_args+=('--topic: topic to which ACLs should be added or removed. A value of * indicates ACL should apply to all topics.')
_kafka_acls_args+=('--transactional-id: The transactionalId to which ACLs should be added or removed. A value of * indicates the ACLs should apply to all transactionalIds.')
_kafka_acls_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-acls" kafka-acls
compdef "_kafka-command kafka-acls" kafka-acls.sh
declare -a _kafka_avro_console_consumer_args
_kafka_avro_console_consumer_args=()
compdef "_kafka-command kafka-avro-console-consumer" kafka-avro-console-consumer
compdef "_kafka-command kafka-avro-console-consumer" kafka-avro-console-consumer.sh
declare -a _kafka_avro_console_producer_args
_kafka_avro_console_producer_args=()
compdef "_kafka-command kafka-avro-console-producer" kafka-avro-console-producer
compdef "_kafka-command kafka-avro-console-producer" kafka-avro-console-producer.sh
declare -a _kafka_broker_api_versions_args
_kafka_broker_api_versions_args=()
_kafka_broker_api_versions_args+=('--bootstrap-server: REQUIRED: The server to connect to.')
_kafka_broker_api_versions_args+=('--command-config: A property file containing configs to be passed to Admin Client.')
_kafka_broker_api_versions_args+=('--help: Print usage information.')
_kafka_broker_api_versions_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-broker-api-versions" kafka-broker-api-versions
compdef "_kafka-command kafka-broker-api-versions" kafka-broker-api-versions.sh
declare -a _kafka_configs_args
_kafka_configs_args=()
_kafka_configs_args+=('--add-config: Key Value pairs of configs to add. Square brackets can be used to group values which contain commas: ''k1=v1, k2=[v1,v2,v2],k3=v3''. The following is a list of valid configurations: For entity-type ''topics'': cleanup.policy compression.type delete.retention.ms file.delete.delay.ms flush.messages flush.ms follower.replication.throttled. replicas index.interval.bytes leader.replication.throttled.replicas max.compaction.lag.ms max.message.bytes message.downconversion.enable message.format.version message.timestamp.difference.max.ms message.timestamp.type min.cleanable.dirty.ratio min.compaction.lag.ms min.insync.replicas preallocate retention.bytes retention.ms segment.bytes segment.index.bytes segment.jitter.ms segment.ms unclean.leader.election.enable For entity-type ''brokers'': advertised.listeners background.threads compression.type follower.replication.throttled.rate leader.replication.throttled.rate listener.security.protocol.map listeners log.cleaner.backoff.ms log.cleaner.dedupe.buffer.size log.cleaner.delete.retention.ms log.cleaner.io.buffer.load.factor log.cleaner.io.buffer.size log.cleaner.io.max.bytes.per.second log.cleaner.max.compaction.lag.ms log.cleaner.min.cleanable.ratio log.cleaner.min.compaction.lag.ms log.cleaner.threads log.cleanup.policy log.flush.interval.messages log.flush.interval.ms log.index.interval.bytes log.index.size.max.bytes log.message.downconversion.enable log.message.timestamp.difference.max. ms log.message.timestamp.type log.preallocate log.retention.bytes log.retention.ms log.roll.jitter.ms log.roll.ms log.segment.bytes log.segment.delete.delay.ms max.connections max.connections.per.ip max.connections.per.ip.overrides message.max.bytes metric.reporters min.insync.replicas num.io.threads num.network.threads num.recovery.threads.per.data.dir num.replica.fetchers principal.builder.class replica.alter.log.dirs.io.max.bytes. per.second sasl.enabled.mechanisms sasl.jaas.config sasl.kerberos.kinit.cmd sasl.kerberos.min.time.before.relogin sasl.kerberos.principal.to.local.rules sasl.kerberos.service.name sasl.kerberos.ticket.renew.jitter sasl.kerberos.ticket.renew.window. factor sasl.login.refresh.buffer.seconds sasl.login.refresh.min.period.seconds sasl.login.refresh.window.factor sasl.login.refresh.window.jitter sasl.mechanism.inter.broker.protocol ssl.cipher.suites ssl.client.auth ssl.enabled.protocols ssl.endpoint.identification.algorithm ssl.key.password ssl.keymanager.algorithm ssl.keystore.location ssl.keystore.password ssl.keystore.type ssl.protocol ssl.provider ssl.secure.random.implementation ssl.trustmanager.algorithm ssl.truststore.location ssl.truststore.password ssl.truststore.type unclean.leader.election.enable For entity-type ''users'': SCRAM-SHA-256 SCRAM-SHA-512 consumer_byte_rate producer_byte_rate request_percentage For entity-type ''clients'': consumer_byte_rate producer_byte_rate request_percentage Entity types ''users'' and ''clients'' may be specified together to update config for clients of a specific user.')
_kafka_configs_args+=('--alter: Alter the configuration for the entity.')
_kafka_configs_args+=('--bootstrap-server: The Kafka server to connect to. This is required for describing and altering broker configs.')
_kafka_configs_args+=('--command-config: Property file containing configs to be passed to Admin Client. This is used only with --bootstrap-server option for describing and altering broker configs.')
_kafka_configs_args+=('--delete-config: config keys to remove ''k1,k2''')
_kafka_configs_args+=('--describe: List configs for the given entity.')
_kafka_configs_args+=('--entity-default: Default entity name for clients/users/brokers (applies to corresponding entity type in command line)')
_kafka_configs_args+=('--entity-name: Name of entity (topic name/client id/user principal name/broker id)')
_kafka_configs_args+=('--entity-type: Type of entity (topics/clients/users/brokers/broker- loggers)')
_kafka_configs_args+=('--force: Suppress console prompts')
_kafka_configs_args+=('--help: Print usage information.')
_kafka_configs_args+=('--version: Display Kafka version.')
_kafka_configs_args+=('--zookeeper: REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.')
compdef "_kafka-command kafka-configs" kafka-configs
compdef "_kafka-command kafka-configs" kafka-configs.sh
declare -a _kafka_console_consumer_args
_kafka_console_consumer_args=()
_kafka_console_consumer_args+=('--bootstrap-server: REQUIRED: The server(s) to connect to.')
_kafka_console_consumer_args+=('--consumer-property: A mechanism to pass user-defined properties in the form key=value to the consumer.')
_kafka_console_consumer_args+=('--consumer.config: Consumer config properties file. Note that [consumer-property] takes precedence over this config.')
_kafka_console_consumer_args+=('--enable-systest-events: Log lifecycle events of the consumer in addition to logging consumed messages. (This is specific for system tests.)')
_kafka_console_consumer_args+=('--formatter: The name of a class to use for formatting kafka messages for display. (default: kafka.tools. DefaultMessageFormatter)')
_kafka_console_consumer_args+=('--from-beginning: If the consumer does not already have an established offset to consume from, start with the earliest message present in the log rather than the latest message.')
_kafka_console_consumer_args+=('--group: The consumer group id of the consumer.')
_kafka_console_consumer_args+=('--help: Print usage information.')
_kafka_console_consumer_args+=('--isolation-level: Set to read_committed in order to filter out transactional messages which are not committed. Set to read_uncommittedto read all messages. (default: read_uncommitted)')
_kafka_console_consumer_args+=('--key-deserializer:')
_kafka_console_consumer_args+=('--max-messages: The maximum number of messages to consume before exiting. If not set, consumption is continual.')
_kafka_console_consumer_args+=('--offset: The offset id to consume from (a non- negative number), or ''earliest'' which means from beginning, or ''latest'' which means from end (default: latest)')
_kafka_console_consumer_args+=('--partition: The partition to consume from. Consumption starts from the end of the partition unless ''--offset'' is specified.')
_kafka_console_consumer_args+=('--property: The properties to initialize the message formatter. Default properties include: print.timestamp=true|false print.key=true|false print.value=true|false key.separator=<key.separator> line.separator=<line.separator> key.deserializer=<key.deserializer> value.deserializer=<value. deserializer> Users can also pass in customized properties for their formatter; more specifically, users can pass in properties keyed with ''key. deserializer.'' and ''value. deserializer.'' prefixes to configure their deserializers.')
_kafka_console_consumer_args+=('--skip-message-on-error: If there is an error when processing a message, skip it instead of halt.')
_kafka_console_consumer_args+=('--timeout-ms: If specified, exit if no message is available for consumption for the specified interval.')
_kafka_console_consumer_args+=('--topic: The topic id to consume on.')
_kafka_console_consumer_args+=('--value-deserializer:')
_kafka_console_consumer_args+=('--version: Display Kafka version.')
_kafka_console_consumer_args+=('--whitelist: Regular expression specifying whitelist of topics to include for consumption.')
compdef "_kafka-command kafka-console-consumer" kafka-console-consumer
compdef "_kafka-command kafka-console-consumer" kafka-console-consumer.sh
declare -a _kafka_console_producer_args
_kafka_console_producer_args=()
_kafka_console_producer_args+=('--batch-size: Number of messages to send in a single batch if they are not being sent synchronously. (default: 200)')
_kafka_console_producer_args+=('--broker-list: REQUIRED: The broker list string in the form HOST1:PORT1,HOST2:PORT2.')
_kafka_console_producer_args+=('--compression-codec: The compression codec: either ''none'', ''gzip'', ''snappy'', ''lz4'', or ''zstd''. If specified without value, then it defaults to ''gzip''')
_kafka_console_producer_args+=('--help: Print usage information.')
_kafka_console_producer_args+=('--line-reader: The class name of the class to use for reading lines from standard in. By default each line is read as a separate message. (default: kafka. tools. ConsoleProducer$LineMessageReader)')
_kafka_console_producer_args+=('--max-block-ms: The max time that the producer will block for during a send request (default: 60000)')
_kafka_console_producer_args+=('--max-memory-bytes: The total memory used by the producer to buffer records waiting to be sent to the server. (default: 33554432)')
_kafka_console_producer_args+=('--max-partition-memory-bytes: The buffer size allocated for a partition. When records are received which are smaller than this size the producer will attempt to optimistically group them together until this size is reached. (default: 16384)')
_kafka_console_producer_args+=('--message-send-max-retries: Brokers can fail receiving the message for multiple reasons, and being unavailable transiently is just one of them. This property specifies the number of retires before the producer give up and drop this message. (default: 3)')
_kafka_console_producer_args+=('--metadata-expiry-ms: The period of time in milliseconds after which we force a refresh of metadata even if we haven''t seen any leadership changes. (default: 300000)')
_kafka_console_producer_args+=('--producer-property: A mechanism to pass user-defined properties in the form key=value to the producer.')
_kafka_console_producer_args+=('--producer.config: Producer config properties file. Note that [producer-property] takes precedence over this config.')
_kafka_console_producer_args+=('--property: A mechanism to pass user-defined properties in the form key=value to the message reader. This allows custom configuration for a user- defined message reader.')
_kafka_console_producer_args+=('--request-required-acks: The required acks of the producer requests (default: 1)')
_kafka_console_producer_args+=('--request-timeout-ms: The ack timeout of the producer requests. Value must be non-negative and non-zero (default: 1500)')
_kafka_console_producer_args+=('--retry-backoff-ms: Before each retry, the producer refreshes the metadata of relevant topics. Since leader election takes a bit of time, this property specifies the amount of time that the producer waits before refreshing the metadata. (default: 100)')
_kafka_console_producer_args+=('--socket-buffer-size: The size of the tcp RECV size. (default: 102400)')
_kafka_console_producer_args+=('--sync: If set message send requests to the brokers are synchronously, one at a time as they arrive.')
_kafka_console_producer_args+=('--timeout: If set and the producer is running in asynchronous mode, this gives the maximum amount of time a message will queue awaiting sufficient batch size. The value is given in ms. (default: 1000)')
_kafka_console_producer_args+=('--topic: REQUIRED: The topic id to produce messages to.')
_kafka_console_producer_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-console-producer" kafka-console-producer
compdef "_kafka-command kafka-console-producer" kafka-console-producer.sh
declare -a _kafka_consumer_groups_args
_kafka_consumer_groups_args=()
_kafka_consumer_groups_args+=('--all-groups: Apply to all consumer groups.')
_kafka_consumer_groups_args+=('--all-topics: Consider all topics assigned to a group in the `reset-offsets` process.')
_kafka_consumer_groups_args+=('--bootstrap-server: REQUIRED: The server(s) to connect to.')
_kafka_consumer_groups_args+=('--by-duration: Reset offsets to offset by duration from current timestamp. Format: ''PnDTnHnMnS''')
_kafka_consumer_groups_args+=('--command-config: Property file containing configs to be passed to Admin Client and Consumer.')
_kafka_consumer_groups_args+=('--delete: Pass in groups to delete topic partition offsets and ownership information over the entire consumer group. For instance --group g1 -- group g2')
_kafka_consumer_groups_args+=('--delete-offsets: Delete offsets of consumer group. Supports one consumer group at the time, and multiple topics.')
_kafka_consumer_groups_args+=('--describe: Describe consumer group and list offset lag (number of messages not yet processed) related to given group.')
_kafka_consumer_groups_args+=('--dry-run: Only show results without executing changes on Consumer Groups. Supported operations: reset-offsets.')
_kafka_consumer_groups_args+=('--execute: Execute operation. Supported operations: reset-offsets.')
_kafka_consumer_groups_args+=('--export: Export operation execution to a CSV file. Supported operations: reset- offsets.')
_kafka_consumer_groups_args+=('--from-file: Reset offsets to values defined in CSV file.')
_kafka_consumer_groups_args+=('--group: The consumer group we wish to act on.')
_kafka_consumer_groups_args+=('--help: Print usage information.')
_kafka_consumer_groups_args+=('--list: List all consumer groups.')
_kafka_consumer_groups_args+=('--members: Describe members of the group. This option may be used with ''--describe'' and ''--bootstrap-server'' options only. Example: --bootstrap-server localhost: 9092 --describe --group group1 -- members')
_kafka_consumer_groups_args+=('--offsets: Describe the group and list all topic partitions in the group along with their offset lag. This is the default sub-action of and may be used with ''--describe'' and ''-- bootstrap-server'' options only. Example: --bootstrap-server localhost: 9092 --describe --group group1 -- offsets')
_kafka_consumer_groups_args+=('--reset-offsets: Reset offsets of consumer group. Supports one consumer group at the time, and instances should be inactive Has 2 execution options: --dry-run (the default) to plan which offsets to reset, and --execute to update the offsets. Additionally, the -- export option is used to export the results to a CSV format. You must choose one of the following reset specifications: --to-datetime, --by-period, --to-earliest, --to- latest, --shift-by, --from-file, -- to-current. To define the scope use --all-topics or --topic. One scope must be specified unless you use ''--from- file''.')
_kafka_consumer_groups_args+=('--shift-by: Reset offsets shifting current offset by ''n'', where ''n'' can be positive or negative.')
_kafka_consumer_groups_args+=('--state: Describe the group state. This option may be used with ''--describe'' and ''-- bootstrap-server'' options only. Example: --bootstrap-server localhost: 9092 --describe --group group1 -- state')
_kafka_consumer_groups_args+=('--timeout: The timeout that can be set for some use cases. For example, it can be used when describing the group to specify the maximum amount of time in milliseconds to wait before the group stabilizes (when the group is just created, or is going through some changes). (default: 5000)')
_kafka_consumer_groups_args+=('--to-current: Reset offsets to current offset.')
_kafka_consumer_groups_args+=('--to-datetime: Reset offsets to offset from datetime. Format: ''YYYY-MM-DDTHH:mm:SS.sss''')
_kafka_consumer_groups_args+=('--to-earliest: Reset offsets to earliest offset.')
_kafka_consumer_groups_args+=('--to-latest: Reset offsets to latest offset.')
_kafka_consumer_groups_args+=('--to-offset: Reset offsets to a specific offset.')
_kafka_consumer_groups_args+=('--topic: The topic whose consumer group information should be deleted or topic whose should be included in the reset offset process. In `reset- offsets` case, partitions can be specified using this format: `topic1: 0,1,2`, where 0,1,2 are the partition to be included in the process. Reset-offsets also supports multiple topic inputs.')
_kafka_consumer_groups_args+=('--verbose: Provide additional information, if any, when describing the group. This option may be used with ''-- offsets''/''--members''/''--state'' and ''--bootstrap-server'' options only. Example: --bootstrap-server localhost: 9092 --describe --group group1 -- members --verbose')
_kafka_consumer_groups_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-consumer-groups" kafka-consumer-groups
compdef "_kafka-command kafka-consumer-groups" kafka-consumer-groups.sh
declare -a _kafka_consumer_perf_test_args
_kafka_consumer_perf_test_args=()
_kafka_consumer_perf_test_args+=('--broker-list: REQUIRED: The server(s) to connect to.')
_kafka_consumer_perf_test_args+=('--consumer.config: Consumer config properties file.')
_kafka_consumer_perf_test_args+=('--date-format: The date format to use for formatting the time field. See java.text. SimpleDateFormat for options. (default: yyyy-MM-dd HH:mm:ss:SSS)')
_kafka_consumer_perf_test_args+=('--fetch-size: The amount of data to fetch in a single request. (default: 1048576)')
_kafka_consumer_perf_test_args+=('--from-latest: If the consumer does not already have an established offset to consume from, start with the latest message present in the log rather than the earliest message.')
_kafka_consumer_perf_test_args+=('--group: The group id to consume on. (default: perf-consumer-62554)')
_kafka_consumer_perf_test_args+=('--help: Print usage information.')
_kafka_consumer_perf_test_args+=('--hide-header: If set, skips printing the header for the stats')
_kafka_consumer_perf_test_args+=('--messages: REQUIRED: The number of messages to send or consume')
_kafka_consumer_perf_test_args+=('--num-fetch-threads: Number of fetcher threads. (default: 1)')
_kafka_consumer_perf_test_args+=('--print-metrics: Print out the metrics.')
_kafka_consumer_perf_test_args+=('--reporting-interval: Interval in milliseconds at which to print progress info. (default: 5000)')
_kafka_consumer_perf_test_args+=('--show-detailed-stats: If set, stats are reported for each reporting interval as configured by reporting-interval')
_kafka_consumer_perf_test_args+=('--socket-buffer-size: The size of the tcp RECV size. (default: 2097152)')
_kafka_consumer_perf_test_args+=('--threads: Number of processing threads. (default: 10)')
_kafka_consumer_perf_test_args+=('--timeout: The maximum allowed time in milliseconds between returned records. (default: 10000)')
_kafka_consumer_perf_test_args+=('--topic: REQUIRED: The topic to consume from.')
_kafka_consumer_perf_test_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-consumer-perf-test" kafka-consumer-perf-test
compdef "_kafka-command kafka-consumer-perf-test" kafka-consumer-perf-test.sh
declare -a _kafka_delegation_tokens_args
_kafka_delegation_tokens_args=()
_kafka_delegation_tokens_args+=('--bootstrap-server: REQUIRED: server(s) to use for bootstrapping.')
_kafka_delegation_tokens_args+=('--command-config: REQUIRED: A property file containing configs to be passed to Admin Client. Token management operations are allowed in secure mode only. This config file is used to pass security related configs.')
_kafka_delegation_tokens_args+=('--create: Create a new delegation token. Use --renewer- principal option to pass renewers principals.')
_kafka_delegation_tokens_args+=('--describe: Describe delegation tokens for the given principals. Use --owner-principal to pass owner/renewer principals. If --owner-principal option is not supplied, all the user owned tokens and tokens where user have Describe permission will be returned.')
_kafka_delegation_tokens_args+=('--expire: Expire delegation token. Use --expiry-time- period option to expire the token.')
_kafka_delegation_tokens_args+=('--expiry-time-period: Expiry time period in milliseconds. If the value is -1, then the token will get invalidated immediately.')
_kafka_delegation_tokens_args+=('--help: Print usage information.')
_kafka_delegation_tokens_args+=('--hmac: HMAC of the delegation token')
_kafka_delegation_tokens_args+=('--max-life-time-period: Max life period for the token in milliseconds. If the value is -1, then token max life time will default to a server side config value (delegation.token.max.lifetime.ms).')
_kafka_delegation_tokens_args+=('--owner-principal: owner is a kafka principal. It is should be in principalType:name format.')
_kafka_delegation_tokens_args+=('--renew: Renew delegation token. Use --renew-time-period option to set renew time period.')
_kafka_delegation_tokens_args+=('--renew-time-period: Renew time period in milliseconds. If the value is -1, then the renew time period will default to a server side config value (delegation. token.expiry.time.ms).')
_kafka_delegation_tokens_args+=('--renewer-principal: renewer is a kafka principal. It is should be in principalType:name format.')
_kafka_delegation_tokens_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-delegation-tokens" kafka-delegation-tokens
compdef "_kafka-command kafka-delegation-tokens" kafka-delegation-tokens.sh
declare -a _kafka_topics_args
_kafka_topics_args=()
_kafka_topics_args+=('--alter: Alter the number of partitions, replica assignment, and/or configuration for the topic.')
_kafka_topics_args+=('--at-min-isr-partitions: if set when describing topics, only show partitions whose isr count is equal to the configured minimum. Not supported with the --zookeeper option.')
_kafka_topics_args+=('--bootstrap-server: REQUIRED: The Kafka server to connect to. In case of providing this, a direct Zookeeper connection won''t be required.')
_kafka_topics_args+=('--command-config: Property file containing configs to be passed to Admin Client. This is used only with --bootstrap-server option for describing and altering broker configs.')
_kafka_topics_args+=('--config: A topic configuration override for the topic being created or altered.The following is a list of valid configurations: cleanup.policy compression.type delete.retention.ms file.delete.delay.ms flush.messages flush.ms follower.replication.throttled. replicas index.interval.bytes leader.replication.throttled.replicas max.compaction.lag.ms max.message.bytes message.downconversion.enable message.format.version message.timestamp.difference.max.ms message.timestamp.type min.cleanable.dirty.ratio min.compaction.lag.ms min.insync.replicas preallocate retention.bytes retention.ms segment.bytes segment.index.bytes segment.jitter.ms segment.ms unclean.leader.election.enable See the Kafka documentation for full details on the topic configs.It is supported only in combination with -- create if --bootstrap-server option is used.')
_kafka_topics_args+=('--create: Create a new topic.')
_kafka_topics_args+=('--delete: Delete a topic')
_kafka_topics_args+=('--delete-config: A topic configuration override to be removed for an existing topic (see the list of configurations under the --config option). Not supported with the --bootstrap-server option.')
_kafka_topics_args+=('--describe: List details for the given topics.')
_kafka_topics_args+=('--disable-rack-aware: Disable rack aware replica assignment')
_kafka_topics_args+=('--exclude-internal: exclude internal topics when running list or describe command. The internal topics will be listed by default')
_kafka_topics_args+=('--force: Suppress console prompts')
_kafka_topics_args+=('--help: Print usage information.')
_kafka_topics_args+=('--if-exists: if set when altering or deleting or describing topics, the action will only execute if the topic exists. Not supported with the --bootstrap- server option.')
_kafka_topics_args+=('--if-not-exists: if set when creating topics, the action will only execute if the topic does not already exist. Not supported with the --bootstrap- server option.')
_kafka_topics_args+=('--list: List all available topics.')
_kafka_topics_args+=('--partitions: The number of partitions for the topic being created or altered (WARNING: If partitions are increased for a topic that has a key, the partition logic or ordering of the messages will be affected). If not supplied for create, defaults to the cluster default.')
_kafka_topics_args+=('--replica-assignment: A list of manual partition-to-broker assignments for the topic being created or altered.')
_kafka_topics_args+=('--replication-factor: The replication factor for each partition in the topic being created. If not supplied, defaults to the cluster default.')
_kafka_topics_args+=('--topic: The topic to create, alter, describe or delete. It also accepts a regular expression, except for --create option. Put topic name in double quotes and use the ''\'' prefix to escape regular expression symbols; e. g. "test\.topic".')
_kafka_topics_args+=('--topics-with-overrides: if set when describing topics, only show topics that have overridden configs')
_kafka_topics_args+=('--unavailable-partitions: if set when describing topics, only show partitions whose leader is not available')
_kafka_topics_args+=('--under-min-isr-partitions: if set when describing topics, only show partitions whose isr count is less than the configured minimum. Not supported with the --zookeeper option.')
_kafka_topics_args+=('--under-replicated-partitions: if set when describing topics, only show under replicated partitions')
_kafka_topics_args+=('--version: Display Kafka version.')
_kafka_topics_args+=('--zookeeper: DEPRECATED, The connection string for the zookeeper connection in the form host:port. Multiple hosts can be given to allow fail-over.')
compdef "_kafka-command kafka-topics" kafka-topics
compdef "_kafka-command kafka-topics" kafka-topics.sh
declare -a _kafka_producer_perf_test_args
_kafka_producer_perf_test_args=()
compdef "_kafka-command kafka-producer-perf-test" kafka-producer-perf-test
compdef "_kafka-command kafka-producer-perf-test" kafka-producer-perf-test.sh
declare -a _kafka_dump_log_args
_kafka_dump_log_args=()
_kafka_dump_log_args+=('--deep-iteration: if set, uses deep instead of shallow iteration. Automatically set if print- data-log is enabled.')
_kafka_dump_log_args+=('--files: REQUIRED: The comma separated list of data and index log files to be dumped.')
_kafka_dump_log_args+=('--help: Print usage information.')
_kafka_dump_log_args+=('--index-sanity-check: if set, just checks the index sanity without printing its content. This is the same check that is executed on broker startup to determine if an index needs rebuilding or not.')
_kafka_dump_log_args+=('--key-decoder-class: if set, used to deserialize the keys. This class should implement kafka.serializer. Decoder trait. Custom jar should be available in kafka/libs directory. (default: kafka.serializer.StringDecoder)')
_kafka_dump_log_args+=('--max-message-size: Size of largest message. (default: 5242880)')
_kafka_dump_log_args+=('--offsets-decoder: if set, log data will be parsed as offset data from the __consumer_offsets topic.')
_kafka_dump_log_args+=('--print-data-log: if set, printing the messages content when dumping data logs. Automatically set if any decoder option is specified.')
_kafka_dump_log_args+=('--transaction-log-decoder: if set, log data will be parsed as transaction metadata from the __transaction_state topic.')
_kafka_dump_log_args+=('--value-decoder-class: if set, used to deserialize the messages. This class should implement kafka. serializer.Decoder trait. Custom jar should be available in kafka/libs directory. (default: kafka.serializer. StringDecoder)')
_kafka_dump_log_args+=('--verify-index-only: if set, just verify the index log without printing its content.')
_kafka_dump_log_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-dump-log" kafka-dump-log
compdef "_kafka-command kafka-dump-log" kafka-dump-log.sh
declare -a _kafka_log_dirs_args
_kafka_log_dirs_args=()
_kafka_log_dirs_args+=('--bootstrap-server: REQUIRED: the server(s) to use for bootstrapping')
_kafka_log_dirs_args+=('--broker-list: The list of brokers to be queried in the form "0,1,2". All brokers in the cluster will be queried if no broker list is specified')
_kafka_log_dirs_args+=('--command-config: Property file containing configs to be passed to Admin Client.')
_kafka_log_dirs_args+=('--describe: Describe the specified log directories on the specified brokers.')
_kafka_log_dirs_args+=('--help: Print usage information.')
_kafka_log_dirs_args+=('--topic-list: The list of topics to be queried in the form "topic1,topic2,topic3". All topics will be queried if no topic list is specified (default: )')
_kafka_log_dirs_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-log-dirs" kafka-log-dirs
compdef "_kafka-command kafka-log-dirs" kafka-log-dirs.sh
declare -a _kafka_verifiable_consumer_args
_kafka_verifiable_consumer_args=()
compdef "_kafka-command kafka-verifiable-consumer" kafka-verifiable-consumer
compdef "_kafka-command kafka-verifiable-consumer" kafka-verifiable-consumer.sh
declare -a _kafka_verifiable_producer_args
_kafka_verifiable_producer_args=()
compdef "_kafka-command kafka-verifiable-producer" kafka-verifiable-producer
compdef "_kafka-command kafka-verifiable-producer" kafka-verifiable-producer.sh
declare -a _kafka_streams_application_reset_args
_kafka_streams_application_reset_args=()
_kafka_streams_application_reset_args+=('--bootstrap-servers: Comma-separated list of broker urls with format: HOST1:PORT1,HOST2:PORT2 (default: localhost:9092)')
_kafka_streams_application_reset_args+=('--by-duration: Reset offsets to offset by duration from current timestamp. Format: ''PnDTnHnMnS''')
_kafka_streams_application_reset_args+=('--config-file: Property file containing configs to be passed to admin clients and embedded consumer.')
_kafka_streams_application_reset_args+=('--dry-run: Display the actions that would be performed without executing the reset commands.')
_kafka_streams_application_reset_args+=('--execute: Execute the command.')
_kafka_streams_application_reset_args+=('--from-file: Reset offsets to values defined in CSV file.')
_kafka_streams_application_reset_args+=('--help: Print usage information.')
_kafka_streams_application_reset_args+=('--input-topics: Comma-separated list of user input topics. For these topics, the tool will reset the offset to the earliest available offset.')
_kafka_streams_application_reset_args+=('--intermediate-topics: Comma-separated list of intermediate user topics (topics used in the through() method). For these topics, the tool will skip to the end.')
_kafka_streams_application_reset_args+=('--shift-by: Reset offsets shifting current offset by ''n'', where ''n'' can be positive or negative')
_kafka_streams_application_reset_args+=('--to-datetime: Reset offsets to offset from datetime. Format: ''YYYY-MM-DDTHH:mm:SS.sss''')
_kafka_streams_application_reset_args+=('--to-earliest: Reset offsets to earliest offset.')
_kafka_streams_application_reset_args+=('--to-latest: Reset offsets to latest offset.')
_kafka_streams_application_reset_args+=('--to-offset: Reset offsets to a specific offset.')
_kafka_streams_application_reset_args+=('--version: Print version information and exit.')
_kafka_streams_application_reset_args+=('--zookeeper: Zookeeper option is deprecated by bootstrap.servers, as the reset tool would no longer access Zookeeper directly.')
compdef "_kafka-command kafka-streams-application-reset" kafka-streams-application-reset
compdef "_kafka-command kafka-streams-application-reset" kafka-streams-application-reset.sh
declare -a _kafka_mirror_maker_args
_kafka_mirror_maker_args=()
_kafka_mirror_maker_args+=('--abort.on.send.failure: Configure the mirror maker to exit on a failed send. (default: true)')
_kafka_mirror_maker_args+=('--consumer.config: Embedded consumer config for consuming from the source cluster.')
_kafka_mirror_maker_args+=('--consumer.rebalance.listener: The consumer rebalance listener to use for mirror maker consumer.')
_kafka_mirror_maker_args+=('--help: Print usage information.')
_kafka_mirror_maker_args+=('--message.handler: Message handler which will process every record in-between consumer and producer.')
_kafka_mirror_maker_args+=('--message.handler.args: Arguments used by custom message handler for mirror maker.')
_kafka_mirror_maker_args+=('--new.consumer: DEPRECATED Use new consumer in mirror maker (this is the default so this option will be removed in a future version).')
_kafka_mirror_maker_args+=('--num.streams: Number of consumption streams. (default: 1)')
_kafka_mirror_maker_args+=('--offset.commit.interval.ms: Offset commit interval in ms. (default: 60000)')
_kafka_mirror_maker_args+=('--producer.config: Embedded producer config.')
_kafka_mirror_maker_args+=('--rebalance.listener.args: Arguments used by custom rebalance listener for mirror maker consumer.')
_kafka_mirror_maker_args+=('--version: Display Kafka version.')
_kafka_mirror_maker_args+=('--whitelist: Whitelist of topics to mirror.')
compdef "_kafka-command kafka-mirror-maker" kafka-mirror-maker
compdef "_kafka-command kafka-mirror-maker" kafka-mirror-maker.sh
declare -a _kafka_delete_records_args
_kafka_delete_records_args=()
_kafka_delete_records_args+=('--bootstrap-server: REQUIRED: The server to connect to.')
_kafka_delete_records_args+=('--command-config: A property file containing configs to be passed to Admin Client.')
_kafka_delete_records_args+=('--help: Print usage information.')
_kafka_delete_records_args+=('--offset-json-file: REQUIRED: The JSON file with offset per partition. The format to use is: {"partitions": [{"topic": "foo", "partition": 1, "offset": 1}], "version":1 }')
_kafka_delete_records_args+=('--version: Display Kafka version.')
compdef "_kafka-command kafka-delete-records" kafka-delete-records
compdef "_kafka-command kafka-delete-records" kafka-delete-records.sh
declare -a _replicator_args
_replicator_args=()
compdef "_kafka-command replicator" replicator
compdef "_kafka-command replicator" replicator.sh
declare -a _kafka_reassign_partitions_args
_kafka_reassign_partitions_args=()
_kafka_reassign_partitions_args+=('--bootstrap-server: the server(s) to use for bootstrapping. REQUIRED if an absolute path of the log directory is specified for any replica in the reassignment json file')
_kafka_reassign_partitions_args+=('--broker-list: The list of brokers to which the partitions need to be reassigned in the form "0,1,2". This is required if --topics-to-move-json-file is used to generate reassignment configuration')
_kafka_reassign_partitions_args+=('--command-config: Property file containing configs to be passed to Admin Client.')
_kafka_reassign_partitions_args+=('--disable-rack-aware: Disable rack aware replica assignment')
_kafka_reassign_partitions_args+=('--execute: Kick off the reassignment as specified by the --reassignment-json-file option.')
_kafka_reassign_partitions_args+=('--generate: Generate a candidate partition reassignment configuration. Note that this only generates a candidate assignment, it does not execute it.')
_kafka_reassign_partitions_args+=('--help: Print usage information.')
_kafka_reassign_partitions_args+=('--reassignment-json-file: The JSON file with the partition reassignment configurationThe format to use is - {"partitions": [{"topic": "foo", "partition": 1, "replicas": [1,2,3], "log_dirs": ["dir1","dir2","dir3"] }], "version":1 } Note that "log_dirs" is optional. When it is specified, its length must equal the length of the replicas list. The value in this list can be either "any" or the absolution path of the log directory on the broker. If absolute log directory path is specified, the replica will be moved to the specified log directory on the broker.')
_kafka_reassign_partitions_args+=('--replica-alter-log-dirs-throttle: The movement of replicas between log directories on the same broker will be throttled to this value (bytes/sec). Rerunning with this option, whilst a rebalance is in progress, will alter the throttle value. The throttle rate should be at least 1 KB/s. (default: -1)')
_kafka_reassign_partitions_args+=('--throttle: The movement of partitions between brokers will be throttled to this value (bytes/sec). Rerunning with this option, whilst a rebalance is in progress, will alter the throttle value. The throttle rate should be at least 1 KB/s. (default: -1)')
_kafka_reassign_partitions_args+=('--timeout: The maximum time in ms allowed to wait for partition reassignment execution to be successfully initiated (default: 10000)')
_kafka_reassign_partitions_args+=('--topics-to-move-json-file: Generate a reassignment configuration to move the partitions of the specified topics to the list of brokers specified by the --broker- list option. The format to use is - {"topics": [{"topic": "foo"},{"topic": "foo1"}], "version":1 }')
_kafka_reassign_partitions_args+=('--verify: Verify if the reassignment completed as specified by the --reassignment- json-file option. If there is a throttle engaged for the replicas specified, and the rebalance has completed, the throttle will be removed')
_kafka_reassign_partitions_args+=('--version: Display Kafka version.')
_kafka_reassign_partitions_args+=('--zookeeper: REQUIRED: The connection string for the zookeeper connection in the form host:port. Multiple URLS can be given to allow fail-over.')
compdef "_kafka-command kafka-reassign-partitions" kafka-reassign-partitions
compdef "_kafka-command kafka-reassign-partitions" kafka-reassign-partitions.sh
