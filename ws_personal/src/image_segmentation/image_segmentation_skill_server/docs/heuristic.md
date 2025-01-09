# <a name="heuristics"></a>  Heuristic definition

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />

## <a name="joint"></a> 1. Crop box

#### Parameters:
1. **x_min:** Crop box starting point in 'x'
2. **width:** Width of the crop box
3. **y_min:** Crop box starting point in 'y'
4. **height:** Height of the crop box

#### Example:
    0_crop_box:
        x_min: 0
        width: 2064
        y_min: 0
        height: 1240

## <a name="joint"></a> 2. Clahe filter

Contrast Limited Adaptive Histogram Equalization filter. This filters considers the global contrast of the image and applies a global histogram equalization.

#### Parameters:
1. **clipLimit:** Limit of the contrast
2. **tileGridSize:** Blocks divided in the image when processing

#### Example:
    0_clahe_filter:
        clipLimit: 4
        tileGridSize: (8,8)

## <a name="joint"></a> 2. Denoise filter

#### Parameters:
1. **data_type:** Type of data (RGB, RGB-D, grayscale)

#### Example:
    0_denoise:
        data_type: ConfigRGB

## <a name="joint"></a> 2. Confidence scores

Estimates a confidence socre and publishes it to the custom message

#### Parameters:
1. **weight:** Weight given to each score

#### Example:
    0_conf_scores:
        weight: 100

<a name="operation_mode"></a> Extra documentation:
1. [Heuristics](heuristic.md)
2. [Usage](usage.md)
3. [Initial page](../README.md)