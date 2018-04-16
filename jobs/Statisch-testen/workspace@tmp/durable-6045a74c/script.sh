#!/bin/sh -xe
mvn -U clean test cobertura:cobertura -Dcobertura.report.format=xml