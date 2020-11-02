import argparse
import hashlib

def get_parse():
    parser = argparse.ArgumentParser(description='generate model name')
    parser.add_argument('model-path', help='model path')
    parser.add_argument('--code-type', help='third party or origin code', default='mmdetection')
    parser.add_argument('--name', help='model name')
    parser.add_argument('--para', help='parameters')

    return parser.parse_args()

if __name__ == "__main__":
    args = get_parse()
    sha256 = hashlib.sha256()
    with open(args.model_path) as u:
        while True:
            buffer = u.read(8192)
            if len(buffer) == 0:
                break
            sha256.update(buffer)
    
    digest = sha256.hexdigest()[:8]
    out_name = 'bdd100k' + '-' + args.code_type + '-' + args.name + '-' + args.para \
        + '-' + digest + '.pth'

    with open(out_name, 'w') as f:
        f.write()