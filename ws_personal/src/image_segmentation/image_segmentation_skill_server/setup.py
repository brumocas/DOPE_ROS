from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup


d = generate_distutils_setup(
    packages=['image_segmentation_skill_server'],
    package_dir={'': 'iclude/mask_rcnn'}
)
setup(**d)
