# Yazi file manager config and keymaps


## Drag and drop with ripdrag
[yazi ripdrag](https://github.com/sxyazi/yazi/discussions/327)
1. [TODO Link to ripdrag install]

2. Add to keymaps.toml:

{ on = [ "<C-n>" ], run = '''
    shell 'ripdrag "$@" -x 2>/dev/null &' --confirm
''' },
