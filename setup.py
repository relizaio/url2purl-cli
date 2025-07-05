from setuptools import setup, find_packages

setup(
    name='url2purl-cli',
    version='25.07.0',
    packages=find_packages(),
    install_requires=[
        'click',
        'packageurl-python',
    ],
    entry_points={
        'console_scripts': [
            'url2purl=src.cli:main',
        ],
    },
    author='Reliza Incorporated',
    description='URL to Package URL converter CLI',
    python_requires='>=3.7',
)
