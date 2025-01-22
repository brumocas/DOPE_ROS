# DOPE_ROS: Real-Time Inference with ROS1

This repository provides a ROS1 (Robot Operating System) package for running **DOPE (Deep Object Pose Estimation)** in real-time. DOPE is a deep learning-based method for estimating the 6D pose of objects from RGB images. This package enables seamless integration of DOPE with ROS1 for robotics applications such as object manipulation, grasping, and augmented reality.

---

## Overview

DOPE_ROS allows you to perform real-time inference using pre-trained DOPE models within a ROS1 environment. It provides a pipeline for processing RGB images, estimating object poses, and publishing the results as ROS messages for further use in your robotics system.

[![Video Example Motor](https://img.youtube.com/vi/kIONlafkHns/0.jpg)](https://youtu.be/kIONlafkHns)

---

## Key Features

- **Real-Time Pose Estimation**: Perform 6D pose estimation of objects in real-time using DOPE.
- **ROS1 Integration**: Fully integrated with ROS1, enabling easy communication with other ROS nodes.
- **Pre-Trained Models**: Supports pre-trained DOPE models for various objects.
- **Customizable**: Easily extendable to support new objects or custom models.

---

## Installation

### Prerequisites
- **ROS1** (Noetic recommended).
- **Python 3.8** (with required dependencies).
- **CUDA** and **cuDNN** (for GPU acceleration).
- **PyTorch** (compatible with your CUDA version).

### Steps to Set Up

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/brumocas/DOPE_ROS.git
   cd DOPE_ROS
   ```

2. **Install Dependencies**:
   - Install ROS1 dependencies:
     ```bash
     rosdep install --from-paths src --ignore-src -r -y
     ```
   - Install Python dependencies:
     ```bash
     pip install -r requirements.txt
     ```

3. **Download Pre-Trained Models**:
   - Download the pre-trained DOPE models for your objects of interest.
   - Place the models in the `weights/` directory.

4. **Build the ROS Workspace**:
   ```bash
   catkin_make
   source devel/setup.bash
   ```

---

## How to Run

1. **Launch the DOPE Node**:
   - Start the DOPE inference node by running:
     ```bash
     roslaunch dope_ros dope.launch
     ```
   - This will launch the DOPE inference pipeline and start processing images from the specified ROS topic.

2. **Provide Input Images**:
   - Ensure that RGB images are being published to the `/camera/rgb/image_raw` topic (or the topic specified in the launch file).
   - You can use a real camera or a simulated one in Gazebo.

3. **View the Output**:
   - The estimated object poses will be published as ROS messages on the `/dope/poses` topic.
   - You can visualize the results in RViz or use them for downstream tasks.

---

## Example Screenshot

Below is an example of DOPE_ROS in action:

![Screenshot from 2025-01-09 19-41-50](https://github.com/user-attachments/assets/d4486987-c08d-407f-8b30-1531c12dc9a2)

---

## Customization

### Adding New Objects
1. Train a DOPE model for your custom object using the [DOPE training repository](https://github.com/brumocas/DOPE).
2. Place the trained model in the `weights/` directory.
3. Update the configuration file to include the new object.

### Modifying Input Topics
- Edit the `dope.launch` file to change the input image topic or other parameters.

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **NVIDIA Research**: For developing the DOPE algorithm.
- **ROS Community**: For providing the Robot Operating System framework.

---

## Contact

For questions or feedback, please open an issue on the repository or contact the maintainers.

---

Enjoy using DOPE_ROS for real-time object pose estimation in your robotics projects! 🚀
