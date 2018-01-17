defmodule KV.BucketTest do
  use ExUnit.Case, async: true

  # macros, huh. how do you implement these if it's not a Lisp? =)
  setup do
    {:ok, bucket} = start_supervised(KV.Bucket)
    %{bucket: bucket}
  end

  test "stores values by key", %{bucket: bucket} do
    assert KV.Bucket.get(bucket, "milk") == nil

    KV.Bucket.put(bucket, "milk", 3)
    assert KV.Bucket.get(bucket, "milk") == 3
  end
end