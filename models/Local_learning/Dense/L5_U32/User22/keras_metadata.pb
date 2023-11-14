
�Oroot"_tf_keras_network*�N{"name": "Dense_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": false, "class_name": "Functional", "config": {"name": "Dense_model", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [16, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_249"}, "name": "input_249", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_948", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_948", "inbound_nodes": [[["input_249", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_949", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_949", "inbound_nodes": [[["dense_948", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_950", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_950", "inbound_nodes": [[["dense_949", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_951", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_951", "inbound_nodes": [[["dense_950", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_952", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_952", "inbound_nodes": [[["dense_951", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_248", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_248", "inbound_nodes": [[["dense_952", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_248", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_248", "inbound_nodes": [[["dropout_248", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_953", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_953", "inbound_nodes": [[["flatten_248", 0, 0, {}]]]}], "input_layers": [["input_249", 0, 0]], "output_layers": [["dense_953", 0, 0]]}, "shared_object_id": 21, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 24, 8]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 8]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [16, 24, 8]}, "float32", "input_249"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [16, 24, 8]}, "float32", "input_249"]}, "keras_version": "2.13.1", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Dense_model", "trainable": true, "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [16, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_249"}, "name": "input_249", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_948", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_948", "inbound_nodes": [[["input_249", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_949", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_949", "inbound_nodes": [[["dense_948", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_950", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_950", "inbound_nodes": [[["dense_949", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_951", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_951", "inbound_nodes": [[["dense_950", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_952", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_952", "inbound_nodes": [[["dense_951", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout_248", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_248", "inbound_nodes": [[["dense_952", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Flatten", "config": {"name": "flatten_248", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_248", "inbound_nodes": [[["dropout_248", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_953", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_953", "inbound_nodes": [[["flatten_248", 0, 0, {}]]], "shared_object_id": 20}], "input_layers": [["input_249", 0, 0]], "output_layers": [["dense_953", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error", "fn": "mean_squared_error"}, "shared_object_id": 23}, "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 24}, {"class_name": "MeanAbsolutePercentageError", "config": {"name": "mean_absolute_percentage_error", "dtype": "float32"}, "shared_object_id": 25}, {"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 26}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Custom>Adam", "config": {"name": "Adam", "weight_decay": null, "clipnorm": null, "global_clipnorm": null, "clipvalue": null, "use_ema": false, "ema_momentum": 0.99, "ema_overwrite_frequency": null, "jit_compile": false, "is_legacy_optimizer": false, "learning_rate": 0.0010000000474974513, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_249", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [16, 24, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [16, 24, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_249"}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_948", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_948", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_249", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 8]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_949", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_949", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_948", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "dense_950", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_950", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_949", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�root.layer_with_weights-3"_tf_keras_layer*�{"name": "dense_951", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_951", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_950", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�root.layer_with_weights-4"_tf_keras_layer*�{"name": "dense_952", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_952", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_951", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�root.layer-6"_tf_keras_layer*�{"name": "dropout_248", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dropout", "config": {"name": "dropout_248", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_952", 0, 0, {}]]], "shared_object_id": 16, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�root.layer-7"_tf_keras_layer*�{"name": "flatten_248", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Flatten", "config": {"name": "flatten_248", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dropout_248", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 24, 32]}}2
�	root.layer_with_weights-5"_tf_keras_layer*�{"name": "dense_953", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "preserve_input_structure_in_config": false, "autocast": true, "class_name": "Dense", "config": {"name": "dense_953", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_248", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 768}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [16, 768]}}2
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 34}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}, "shared_object_id": 24}2
��root.keras_api.metrics.2"_tf_keras_metric*�{"class_name": "MeanAbsolutePercentageError", "name": "mean_absolute_percentage_error", "dtype": "float32", "config": {"name": "mean_absolute_percentage_error", "dtype": "float32"}, "shared_object_id": 25}2
��root.keras_api.metrics.3"_tf_keras_metric*�{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 26}2