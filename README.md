# URL to Package URL converter CLI

This is a CLI wrapper around the [packageurl-python library](https://github.com/package-url/packageurl-python) that converts a URL to a Package URL.

## Requirements

- Python 3.7+

## Setup

1. (Optional) Create and activate a virtual environment:

    python -m venv venv
    venv\Scripts\activate  # On Windows

2. Install dependencies:

    pip install -r requirements.txt

## Usage

Run the CLI:

    python -m src "https://github.com/relizaio/url2purl-cli"

Or install as a CLI tool:

    pip install .
    url2purl "https://github.com/relizaio/url2purl-cli"
