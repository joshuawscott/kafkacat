defmodule Kafkacat do
  def start do
    {:ok, pid} = KafkaEx.create_worker(:kafkacat_worker)
    pid
  end
end
