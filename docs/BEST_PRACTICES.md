# zsh-config: Best Practices

This is a part of [zsh-config](../README.md) documentation. 
Code examples and common patterns.

**Check for Help Option**

When writing shell functions or scripts, it's a good practice to check for help options (`-h` or `--help`) at the beginning. This allows users to quickly access usage information without executing the entire script.

```zsh
(( ${argv[(I)(-h|--help)]} )) && {
    print "Usage: command [options]"
    return 0
}
```

**Argument Count Validation**

For functions that expect a specific number of arguments, validate the argument count at the start. This helps prevent errors later in the function. Return error code `2` for invalid usage.

```zsh
(( ARGC == expected_count )) || {
    printe "Usage: command requires expected_count arguments."
    return 2
}

(( ARGC >= min && ARGC <= max )) || {
    printe "Usage: command takes between min and max arguments."
    return 2
}

```


