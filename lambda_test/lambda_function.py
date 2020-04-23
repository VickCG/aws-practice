import os


def handler(event, context):
    status = os.environ['STATUS']
    print(status)
    print('Test aws code pipeline8')

