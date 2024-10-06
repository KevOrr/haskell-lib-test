module HaskellLibTest.Wrapper where

#include <lib.h>

{#fun print_name as printName {} -> `()' #}
