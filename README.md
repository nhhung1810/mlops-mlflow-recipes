MLFlow Recipe & MLOps Integration
---

Please check the [documentations](./docs/) folder for more info.

<!-- POST /api/2.0/serving-endpoints -->

{
  "name": "test-cli-endpoint",
  "config":{
   "served_models": [{
     "model_name": "red_wine_classifier",
     "model_version": "1",
     "workload_size": "Small",
     "scale_to_zero_enabled": true
    }]
  }
}