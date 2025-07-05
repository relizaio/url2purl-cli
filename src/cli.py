import click
from packageurl.contrib import url2purl

@click.command()
@click.argument('url')
def main(url: str):
    purl = url2purl.get_purl(url)
    click.echo(purl.to_string())

if __name__ == '__main__':
    main()
