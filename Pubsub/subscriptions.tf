//SUBSCRIPTION 1 (PULL)
resource "google_pubsub_subscription" "subscription_1" {
  name  = "test.subscription.1"
  topic = "test.topic.1"

  message_retention_duration = "86400s"
  retain_acked_messages      = false

  ack_deadline_seconds = 10

}

//SUBSCRIPTION 2 (PULL)
resource "google_pubsub_subscription" "subscription_2" {
  name  = "test.subscription.2"
  topic = "test.topic.1"

  message_retention_duration = "86400s"
  retain_acked_messages      = false

  ack_deadline_seconds = 10

}

//SUBSCRIPTION 3 (PUSH)

resource "google_pubsub_subscription" "subscription_3" {
  name  = "test.subscription.push.1"
  topic = "test.topic.1"

  ack_deadline_seconds = 10
  message_retention_duration = "604800s"
  push_config {
    push_endpoint = "https://webhook.site/5611850b-cd7c-4681-afab-c39a117d1515"
  }
}

//SUBSCRIPTION 4 (PULL)
resource "google_pubsub_subscription" "subscription_4" {
  name  = "test.subscription.4"
  topic = "test.topic.1"

  message_retention_duration = "86400s"
  retain_acked_messages      = false

  ack_deadline_seconds = 10

}