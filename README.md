# Kafkacat

```
iex -S mix
iex> Kafkacat.start()
#PID<0.158.0>
iex> KafkaEx.produce("foo", 0, "hey", worker_name: :kafkacat_worker)
:ok
iex> KafkaEx.produce("foo", 0, "another message", worker_name: :kafkacat_worker)
:ok
iex> KafkaEx.fetch("foo", 0, offset: 0, worker_name: :kafkacat_worker, auto_commit: false)
[%KafkaEx.Protocol.Fetch.Response{partitions: [%{error_code: :no_error,
     hw_mark_offset: 2, last_offset: 1,
     message_set: [%KafkaEx.Protocol.Fetch.Message{attributes: 0,
       crc: 1784030606, key: "", offset: 0, value: "hey"},
      %KafkaEx.Protocol.Fetch.Message{attributes: 0, crc: 71452346, key: "",
       offset: 1, value: "another message"}], partition: 0}], topic: "foo"}]
```
