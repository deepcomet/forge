export PATH := "./node_modules/.bin:" + env_var('PATH')

list:
    @just --list

build:
    nx run-many -t build

clean:
    nx run-many -t clean
    nx reset

clobber: clean build

dev:
    nx run-many -t dev
