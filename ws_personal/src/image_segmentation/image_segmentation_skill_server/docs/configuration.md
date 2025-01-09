# Configuration files

The pipeline flow works based on .yaml configuration files which are loaded by ros launch files.
These configurations files are described in next sections.

## config.yaml
This file presents the general image estimation pipeline configuration

Main module configuration to define the initial settings
```
ros_verbosity_level: 'DEBUG'
action_server_name: 'ImageSegmentationSkill'
debug_tools: False #desactivate to speed up
device_GPU: True
filters: False
image_resolution: 512
output_resolution:
  width: 2064
  height: 1544
deep_learning_library: 'tensorflow'
```

## image_filters.yaml
This files details the flow of the image segmentation algorithm. In this file are declared the type of image processes.

The metrics are further detailed in [heuristics](heuristic.md).

The number behind each pipeline declaration details the order of the pipeline. 0-9

```
pipeline:
  1_crop_box:
    x_min: 0
    width: 2064
    y_min: 0
    height: 1240
  0_clahe_filter:
    clipLimit: 4
    tileGridSize: (8,8)
  1_denoise:
    data_type: ConfigRGB
```

## estimation_pipeline.yaml
This files details the flow of the image segmentation algorithm. In this file are declared the type of scorer.

The metrics are further detailed in [heuristics](heuristic.md).

The number behind each pipeline declaration details the order of the pipeline. 0-9

```
pipeline:
  0_conf_scores:
    weight: 100
```

<a name="operation_mode"></a> Extra documentation:
1. [Heuristics](heuristic.md)
2. [Usage](usage.md)
3. [Initial page](../README.md)

